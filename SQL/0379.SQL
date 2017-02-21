/*
** MENSAGEM DO PRODUTO SEM ESTOQUE III
*/

SET TERM ^ ;

ALTER TRIGGER ORSOMA_INS
AS
DECLARE VARIABLE SOMA NUMERIC(9,2);
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE ES CHAR(1);
DECLARE VARIABLE TIPO CHAR(1);
DECLARE VARIABLE ETIQUETA CHAR(1);
DECLARE VARIABLE NUMETIQ INTEGER;
DECLARE VARIABLE INDIVIDUAL CHAR(1);
DECLARE VARIABLE SEQUENCIA INTEGER;
DECLARE VARIABLE SEQUENSTR CHAR(4);
DECLARE VARIABLE N INTEGER;
DECLARE VARIABLE C INTEGER;
DECLARE VARIABLE BARRA CHAR(14);
DECLARE VARIABLE BARRA_TEMP CHAR(14);
DECLARE VARIABLE PS CHAR(1);
DECLARE VARIABLE EMPRESA INTEGER;
DECLARE VARIABLE CUSTO_PRODUTO NUMERIC(9,2);
DECLARE VARIABLE CUSTO_IPI NUMERIC(9,2);
DECLARE VARIABLE MAT_BARRA CHAR(14);
DECLARE VARIABLE MAT_VALOR NUMERIC(9,2);
BEGIN

  /* VERIFICO O TIPO DO MOVIMENTO */
  SELECT
    ES,
    TIPO
  FROM
    MOVIMENTOS
  WHERE
    CODIGO = NEW.CODMOVIMENTO
  INTO
    ES,
    TIPO;

  IF ((ES IN (0, 1)) AND (TIPO <> 9)) THEN
   BEGIN

     /* RECUPERO O CODIGO DE BARRAS E O TIPO (PRODUTO, SERVIÇO */
     SELECT
       BARRA,
       PS
     FROM
       PRODUTOS
     WHERE
       CODIGO = NEW.CODPRODUTO
     INTO
       :BARRA,
       :PS;

     /* SE NAO TIVER CODIGO DE BARRAS GERO ERRO */
     IF (BARRA = '0000000000000') THEN
       EXCEPTION BARRA_NECESSARIA;

    /* VERIFICO SE EH PRODUTO OU SERVIÇO */
    IF ((PS = 'P') OR (PS = 'M')) THEN
      BEGIN

        /* PRODUTO */

        /* GUARDO O CODIGO DO MOVIMENTO */
        CODIGO = NEW.CODMOVIMENTO;

        /* RECUPERO O TIPO E A EMPRESA */
        SELECT
          ES,
          TIPO,
          CODEMPRESA
        FROM
          MOVIMENTOS
        WHERE
          CODIGO = :CODIGO
        INTO
          :ES,
          :TIPO,
          :EMPRESA;

        /* SE FOR COMPRA OU PRODUÇÃO */
        IF ((ES = 1) AND ((TIPO = 1) OR (TIPO = 3))) THEN
         BEGIN

           IF (NEW.VALOR_UNITARIO > 0) THEN
            BEGIN

              /* ATUALIZO O PREÇO DE CUSTO */
              UPDATE
                PRODUTOS
              SET
                PRECOCUSTO = NEW.VALOR_UNITARIO
              WHERE
                CODIGO = NEW.CODPRODUTO;

              /* VERIFICO SE PRECISO REAJUSTAR O PREÇO DE VENDA */
              IF (NEW.REAJUSTAR = 'S') THEN
                /* REAJUSTO O PREÇO DE VENDA */
                UPDATE
                  PRODUTOS
                SET
                  PRECOVENDA = NEW.VALOR_VENDA,
                  ICMS = NEW.ICMSVENDA
                WHERE
                  CODIGO = NEW.CODPRODUTO;

            END

           /* RECUPERO DADOS DO PRODUTO PARA GERAÇAO */
           SELECT
             ETIQUETA,
             INDIVIDUAL,
             SEQUENCIA,
             BARRA
           FROM
             PRODUTOS
           WHERE
             CODIGO = NEW.CODPRODUTO
           INTO
             :ETIQUETA,
             :INDIVIDUAL,
             :SEQUENCIA,
             :BARRA;

           /* ZERO O CONTADOR */
           N = 0;

           /* CALCULO O CUSTO DO PRODUTO, IPI */
           IF (NEW.VALOR_UNITARIO > 0) THEN
            BEGIN
              CUSTO_PRODUTO = (NEW.VALOR_UNITARIO - NEW.DESCONTO);
              CUSTO_IPI = (CUSTO_PRODUTO * (NEW.IPI / 100));
            END ELSE
            BEGIN
              CUSTO_PRODUTO = 0;
              CUSTO_IPI = 0;
            END

           /* SE O PRODUTO FOR INDIVIDUAL */
           IF (INDIVIDUAL = 'S') THEN
            BEGIN

              /* EXECUTO A MESMA SEQUENCIA PARA CADA ITEM */
              WHILE (N < NEW.QUANTIDADE) DO
               BEGIN

                 /* INCREMENTO O CONTADOR */
                 N = N + 1;

                 /* INCREMENTO O CODIGO SEQUENCIAL DO PRODUTO */
                 SEQUENCIA = SEQUENCIA + 1;

                 /* GERO A SEQUENCIA EM FORMATO STRING, ALINHADO A DIREITA */
                 IF (SEQUENCIA > 999) THEN
                   SEQUENSTR = SEQUENCIA;
                 ELSE
                  IF (SEQUENCIA > 99) THEN SEQUENSTR = ('0' || SEQUENCIA);
                   ELSE IF (SEQUENCIA > 9) THEN SEQUENSTR = ('00' || SEQUENCIA);
                    ELSE IF (SEQUENCIA > 0) THEN SEQUENSTR = ('000' || SEQUENCIA);
                     ELSE SEQUENSTR = '0000';

                 /* GERO O CODIGO DE BARRAS INDIVIDUAL */
                 BARRA_TEMP = '999' || NEW.CODPRODUTO || SEQUENSTR || '0';
                 EXECUTE PROCEDURE CALC_EAN13(:BARRA_TEMP)
                   RETURNING_VALUES :BARRA;

                 /* RECUPERO A SEQUENCIA DE GRAVAÇAO DA TABELA */
                 EXECUTE PROCEDURE SEQ_OBTER 'INDIVIDUAIS'
                   RETURNING_VALUES C;

                 /* GRAVO O ITEM NA TABELA */
                 INSERT INTO
                   INDIVIDUAIS (
                     CODIGO,
                     CODITEM,
                     CODPRODUTO,
                     CODMOVENTRADA,
                     SEQUENCIA,
                     ICMSVENDA,
                     VALOR_VENDA,
                     IMPETIQ,
                     QUANTIDADE,
                     UNICO,
                     BARRA,
                     CODEMPRESA,
                     CUSTO_PRODUTO,
                     CUSTO_IPI)
                   VALUES (
                     :C,
                     NEW.CODIGO,
                     NEW.CODPRODUTO,
                     NEW.CODMOVIMENTO,
                     :SEQUENSTR,
                     NEW.ICMSVENDA,
                     NEW.VALOR_VENDA,
                     :ETIQUETA,
                     1,
                     1,
                     :BARRA,
                     :EMPRESA,
                     :CUSTO_PRODUTO,
                     :CUSTO_IPI);

               END /* WHILE */

              /* ATUALIZO A SEQUENCIA DO PRODUTO UTILIZADA */
              UPDATE
                PRODUTOS
              SET
                SEQUENCIA = (SEQUENCIA + NEW.QUANTIDADE)
              WHERE
                CODIGO = NEW.CODPRODUTO;

            END ELSE
            /* PRODUTO COMUM - NAO INDIVIDUAL */
            BEGIN

              /* RECUPERO A SEQUENCIA DA TABELA */
              EXECUTE PROCEDURE SEQ_OBTER 'INDIVIDUAIS'
                RETURNING_VALUES C;

              /* GRAVO OS DADOS NA TABELA */
              INSERT INTO
                INDIVIDUAIS (
                  CODIGO,
                  CODITEM,
                  CODPRODUTO,
                  CODMOVENTRADA,
                  SEQUENCIA,
                  ICMSVENDA,
                  VALOR_VENDA,
                  IMPETIQ,
                  QUANTIDADE,
                  UNICO,
                  BARRA,
                  CODEMPRESA,
                  CUSTO_PRODUTO,
                  CUSTO_IPI)
                VALUES (
                  :C,
                  NEW.CODIGO,
                  NEW.CODPRODUTO,
                  NEW.CODMOVIMENTO,
                  '0000',
                  NEW.ICMSVENDA,
                  NEW.VALOR_VENDA,
                  :ETIQUETA,
                  NEW.QUANTIDADE,
                  0,
                  :BARRA,
                  :EMPRESA,
                  :CUSTO_PRODUTO,
                  :CUSTO_IPI);

            END

           /* SE FOR PRODUÇÃO */
           IF (TIPO = 3) THEN
            BEGIN

              /* BAIXA NA COMPOSICAO DO PRODUTO */
              FOR
              SELECT
                MA.BARRA,
                MA.PRECOCUSTO
              FROM
                PRODUTOS MA
                JOIN COMPOSICAO CO ON
                  (CO.CODMATPRIMA = MA.CODIGO)
              WHERE
                CO.CODPRODUTO = NEW.CODPRODUTO
              INTO
                :MAT_BARRA,
                :MAT_VALOR
              DO
              BEGIN

                /* EXECUTO A BAIXA */
                EXECUTE PROCEDURE
                  ITVENDA_GRAVA (
                    :MAT_BARRA,
                    NEW.QUANTIDADE,
                    :MAT_VALOR,
                    0,
                    0,
                    NEW.CODMOVIMENTO);

              END

            END

         END

        IF (ES IN (0, 1)) THEN
           /* ATUALIZO O VALOR DOS ITENS E DO IPI */
           UPDATE
             MOVIMENTOS
           SET
             VALOR_ITENS = VALOR_ITENS + NEW.VALOR_TOTAL,
             VALOR_IPI_PRODUTOS = VALOR_IPI_PRODUTOS + NEW.VALOR_IPI
           WHERE
             CODIGO = :CODIGO;

      END

   END

END
^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (379, CURRENT_TIMESTAMP);
COMMIT;
