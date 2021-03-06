/*
** BUG DO CLIENTE DIFERENTE NO FINANCEIRO
*/

SET TERM ^ ;

ALTER TRIGGER MOVIMENTOS_AFTUPD
ACTIVE AFTER UPDATE POSITION 0
AS
DECLARE VARIABLE CODORIGEM INTEGER;
DECLARE VARIABLE CODUSUARIO INTEGER;
DECLARE VARIABLE TEMP_CODIGO INTEGER;
DECLARE VARIABLE TEMP_CODPRODUTO INTEGER;
DECLARE VARIABLE TEMP_SERIE VARCHAR(20);
DECLARE VARIABLE TEMP_SERIE2 VARCHAR(20);
DECLARE VARIABLE TEMP_VALOR_VENDA NUMERIC(9,2);
DECLARE VARIABLE TEMP_DESCONTO NUMERIC(9,2);
DECLARE VARIABLE TEMP_BARRA VARCHAR(20);
DECLARE VARIABLE TEMP_ICMSVENDA NUMERIC(9,4);
DECLARE VARIABLE TEMP_QUANTIDADE NUMERIC(9,2);
BEGIN

  IF (NEW.ES IN (0, 1, 2)) THEN
   BEGIN

     IF (((NEW.VALOR_TOTAL <> OLD.VALOR_TOTAL) OR
        (NEW.CONDICAO <> OLD.CONDICAO) OR
        (NEW.CODCLIENTE <> OLD.CODCLIENTE)) AND
        (NEW.TIPO IN (0, 1, 2, 5))) THEN
       EXECUTE PROCEDURE GERAPARCELAS(NEW.CODIGO);

     IF ((NEW.TIPO IN (3, 6)) AND (OLD.TIPO IN (2, 5))) THEN
      BEGIN

        EXECUTE PROCEDURE COMISSAO_CALC(NEW.CODIGO);

        EXECUTE PROCEDURE AUTOBAIXA(NEW.CODIGO);

        EXECUTE PROCEDURE CADASTRA_EQUIPAMENTO(NEW.CODIGO);

      END

   END

  /* ESTORNO */
  IF ((NEW.TIPO = 9) AND (OLD.TIPO <> 9)) THEN
   BEGIN

     /* COMPRA OU VENDA */
     IF (NEW.ES = 2) THEN
      BEGIN

        /* GUARDO OS ITENS ESTORNADOS */
        FOR
        SELECT
          CODPRODUTO,
          SERIE,
          SERIE2,
          VALOR_VENDA,
          DESCONTO,
          BARRA,
          ICMSVENDA,
          SUM(QUANTIDADE)
        FROM
          INDIVIDUAIS
        WHERE
          CODMOVSAIDA = NEW.CODIGO
        GROUP BY
          CODPRODUTO,
          SERIE,
          SERIE2,
          VALOR_VENDA,
          DESCONTO,
          BARRA,
          ICMSVENDA
        INTO
          TEMP_CODPRODUTO,
          TEMP_SERIE,
          TEMP_SERIE2,
          TEMP_VALOR_VENDA,
          TEMP_DESCONTO,
          TEMP_BARRA,
          TEMP_ICMSVENDA,
          TEMP_QUANTIDADE
        DO
        BEGIN

          /* CODIGO UNICO DO TEMPITENS */
          EXECUTE PROCEDURE SEQ_OBTER('TEMPITENS')
            RETURNING_VALUES TEMP_CODIGO;

          /* GUARDO ITEM UM A UM */
          INSERT INTO
            TEMPITENS (
              CODIGO,
              CODMOVIMENTO,
              CODPRODUTO,
              QUANTIDADE,
              VALOR_UNITARIO,
              DESCONTO,
              SITTRIBU,
              MARGEM,
              REAJUSTAR,
              VALOR_VENDA,
              ICMSCOMPRA,
              ICMSVENDA,
              IPI,
              SERIE,
              SERIE2,
              BARRA)
            VALUES (
              :TEMP_CODIGO,
              NEW.CODIGO,
              :TEMP_CODPRODUTO,
              :TEMP_QUANTIDADE,
              :TEMP_VALOR_VENDA,
              :TEMP_DESCONTO,
              '0.0',
              0,
              'N',
              (:TEMP_VALOR_VENDA - :TEMP_DESCONTO),
              :TEMP_ICMSVENDA,
              :TEMP_ICMSVENDA,
              0,
              :TEMP_SERIE,
              :TEMP_SERIE2,
              :TEMP_BARRA);

        END

        /* VERIFICO SE POSSUI MOVIMENTAÇÃO DE ESTOQUE */
        IF (NEW.NO_ESTOQUE = 'S') THEN
         BEGIN

           /* DEVOLVO OS PRODUTOS */
           UPDATE
             INDIVIDUAIS
           SET
             VENDIDO = 'N'
           WHERE
             CODMOVSAIDA = NEW.CODIGO;

         END ELSE
         BEGIN

           /* DEVOLVO OS PRODUTOS */
           UPDATE
             INDIVIDUAIS
           SET
             VENDIDO = 'N'
           WHERE
             CODMOVSAIDA = NEW.CODIGO;

         END

        /* VERIFICO SE EXISTE MOVIMENTACAO FINANCEIRA */
        IF (NEW.NO_VENDA = 'S') THEN
         BEGIN

           /* CODIGO DO USUARIO */
           SELECT
             CODIGO
           FROM
             CLIENTES
           WHERE
             NOMEUSER = NEW.USUARIOESTORNO
           INTO
             :CODUSUARIO;

           /* VERIFICO OS PAGAMENTOS E ESTORNO 1 A 1 */
           FOR
           SELECT
             CODIGO
           FROM
             PAGAMENTOS
           WHERE
             CODMOVIMENTO = NEW.CODIGO
           INTO
             :CODORIGEM
           DO
             EXECUTE PROCEDURE FINANC_ESTORNO(:CODORIGEM, :CODUSUARIO);

         END

      END ELSE
      BEGIN

        /* SIMPLESMENTE EXCLUO OS ITENS */
        DELETE FROM
          INDIVIDUAIS
        WHERE
          CODMOVENTRADA = NEW.CODIGO;

        /* CODIGO DO USUARIO */
        SELECT
          CODIGO
        FROM
          CLIENTES
        WHERE
          NOMEUSER = NEW.USUARIOESTORNO
        INTO
          :CODUSUARIO;

        /* VERIFICO OS PAGAMENTOS E ESTORNO 1 A 1 */
        FOR
        SELECT
          CODIGO
        FROM
          PAGAMENTOS
        WHERE
          CODMOVIMENTO = NEW.CODIGO
        INTO
          :CODORIGEM
        DO
          EXECUTE PROCEDURE FINANC_ESTORNO(:CODORIGEM, :CODUSUARIO);

      END

   END

END
^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (384, CURRENT_TIMESTAMP);
COMMIT;
