/*
** TRANSFERENCIA
*/

SET TERM ^ ;

ALTER PROCEDURE TRANSFERENCIA (
    BARRA CHAR(14),
    QUANTIDADE NUMERIC(9,2),
    ICMS NUMERIC(9,4),
    CODEMPRESA1 INTEGER,
    CODEMPRESA2 INTEGER)
AS
DECLARE VARIABLE XCODIGO INTEGER;
DECLARE VARIABLE XCODITEM INTEGER;
DECLARE VARIABLE XCODPRODUTO INTEGER;
DECLARE VARIABLE XCODMOVENTRADA INTEGER;
DECLARE VARIABLE XSEQUENCIA CHAR(4);
DECLARE VARIABLE XSERIE CHAR(20);
DECLARE VARIABLE XVENDIDO CHAR(1);
DECLARE VARIABLE XCODMOVSAIDA INTEGER;
DECLARE VARIABLE XVALOR_VENDA NUMERIC(14,3);
DECLARE VARIABLE XICMSVENDA NUMERIC(14,3);
DECLARE VARIABLE XDESCONTO NUMERIC(14,3);
DECLARE VARIABLE XIMPETIQ CHAR(1);
DECLARE VARIABLE XBARRA CHAR(14);
DECLARE VARIABLE XQUANTIDADE NUMERIC(14,3);
DECLARE VARIABLE XUNICO INTEGER;
DECLARE VARIABLE BAIXA NUMERIC(14,3);
DECLARE VARIABLE SOBRA NUMERIC(14,3);
DECLARE VARIABLE NSEQ INTEGER;
DECLARE VARIABLE PS CHAR(1);
DECLARE VARIABLE XCUSTO_PRODUTO NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_IPI NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_RATEIO NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_ICMS NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_ISS NUMERIC(14,3);
DECLARE VARIABLE DESCRICAO VARCHAR(60);
DECLARE VARIABLE TQUANT NUMERIC(14,3);
BEGIN

  TQUANT = QUANTIDADE;

  /* BUSCO O CÓDIGO DO PRODUTO E VEJO SE EH PRODUTO */
  SELECT FIRST 1
    ID.CODPRODUTO,
    PO.DESCRICAO,
    PO.PS
  FROM
    INDIVIDUAIS ID
    JOIN PRODUTOS PO ON
      (PO.CODIGO = ID.CODPRODUTO)
  WHERE
    ID.BARRA = :BARRA
  INTO
    :XCODPRODUTO,
    :DESCRICAO,
    :PS;

  /* SE FOR PRODUTO MESMO */
  IF ((PS = 'P') OR (PS IS NULL)) THEN
   BEGIN
    /* QUAL É A QUANTIDADE DISPONÍVEL? */
    SELECT
      SUM(QUANTIDADE)
    FROM
      INDIVIDUAIS
    WHERE
      BARRA = :BARRA AND
      VENDIDO = 'N'  AND
      CODEMPRESA = :CODEMPRESA1
    INTO
      :XQUANTIDADE;

    /* SE A QUANTIDADE PERMITIR A TRANSFERENCIA */
    IF (QUANTIDADE <= XQUANTIDADE) THEN
      BEGIN

        /* VERIFICO ITEM A ITEM O QUE DEVE SER TRANSFERIDO */
        FOR
        SELECT
          CODIGO,
          CODITEM,
          CODPRODUTO,
          CODMOVENTRADA,
          SEQUENCIA,
          SERIE,
          VENDIDO,
          CODMOVSAIDA,
          VALOR_VENDA,
          ICMSVENDA,
          DESCONTO,
          IMPETIQ,
          BARRA,
          QUANTIDADE,
          UNICO,
          CUSTO_PRODUTO,
          CUSTO_IPI,
          CUSTO_RATEIO,
          CUSTO_ICMS,
          CUSTO_ISS
        FROM
          INDIVIDUAIS
        WHERE
          BARRA = :BARRA AND
          VENDIDO = 'N' AND
          CODEMPRESA = :CODEMPRESA1
        ORDER BY
          CODIGO
        INTO
          :XCODIGO,
          :XCODITEM,
          :XCODPRODUTO,
          :XCODMOVENTRADA,
          :XSEQUENCIA,
          :XSERIE,
          :XVENDIDO,
          :XCODMOVSAIDA,
          :XVALOR_VENDA,
          :XICMSVENDA,
          :XDESCONTO,
          :XIMPETIQ,
          :XBARRA,
          :XQUANTIDADE,
          :XUNICO,
          :XCUSTO_PRODUTO,
          :XCUSTO_IPI,
          :XCUSTO_RATEIO,
          :XCUSTO_ICMS,
          :XCUSTO_ISS
        DO
        BEGIN

          /* TENHO O QUE TRANSFERIR? */
          IF (QUANTIDADE > 0) THEN
            BEGIN

              /* ZERO A SOBRA */
              SOBRA = 0;

              /* SE PRECISO MAIS DO QUE ESSE ITEM - LEVO ESSE INTEIRO */
              IF (QUANTIDADE >= XQUANTIDADE) THEN
                BEGIN
                  BAIXA = XQUANTIDADE;
                END ELSE
                BEGIN
                  /* SE NÃO, SOMENTE O SOLICITADO */
                  BAIXA = QUANTIDADE;
                  SOBRA = XQUANTIDADE - BAIXA;
                END

              /* DEFINO A QUANTIDADE */
              QUANTIDADE = QUANTIDADE - BAIXA;

              /* ATUALIZO A QUANTIDADE E FAÇO A TRANSFERENCIA */
              UPDATE
                INDIVIDUAIS
              SET
                QUANTIDADE = :BAIXA,
                CODEMPRESA = :CODEMPRESA2,
                ICMSVENDA  = :ICMS
              WHERE
                CODIGO = :XCODIGO;

              /* SE  EXISTE SOBRA, GRAVO O REGISTRO */
              IF (SOBRA > 0) THEN
                BEGIN

                  /* OBTENHO A SEQUENCIA */
                  EXECUTE PROCEDURE SEQ_OBTER 'INDIVIDUAIS'
                    RETURNING_VALUES NSEQ;

                  XVENDIDO = 'N';

                  INSERT INTO
                    INDIVIDUAIS (
                      CODIGO,
                      CODITEM,
                      CODPRODUTO,
                      CODMOVENTRADA,
                      SEQUENCIA,
                      SERIE,
                      VENDIDO,
                      VALOR_VENDA,
                      ICMSVENDA,
                      DESCONTO,
                      IMPETIQ,
                      BARRA,
                      QUANTIDADE,
                      UNICO,
                      FRACIONADO,
                      CODEMPRESA,
                      CUSTO_PRODUTO,
                      CUSTO_IPI,
                      CUSTO_RATEIO,
                      CUSTO_ICMS,
                      CUSTO_ISS)
                    VALUES (
                      :NSEQ,
                      :XCODITEM,
                      :XCODPRODUTO,
                      :XCODMOVENTRADA,
                      :XSEQUENCIA,
                      :XSERIE,
                      :XVENDIDO,
                      :XVALOR_VENDA,
                      :ICMS,
                      :XDESCONTO,
                      :XIMPETIQ,
                      :XBARRA,
                      :SOBRA,
                      :XUNICO,
                      'S',
                      :CODEMPRESA1,
                      :XCUSTO_PRODUTO,
                      :XCUSTO_IPI,
                      :XCUSTO_RATEIO,
                      :XCUSTO_ICMS,
                      :XCUSTO_ISS);

                END

            END ELSE EXIT;

        END

      END ELSE EXCEPTION ITEM_ESGOTADO;
   END
END
^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (433, CURRENT_TIMESTAMP);
COMMIT;
