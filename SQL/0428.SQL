/*
** SAIDA COM ATUALIZACAO NO TERMINO II
*/

DROP TRIGGER ORSOMA_INS;

DROP TRIGGER ORSOMA_UPD;

DROP TRIGGER ORSOMA_DEL;

SET TERM ^ ;

ALTER TRIGGER TEMPITENS_BEFUPD01
ACTIVE BEFORE UPDATE POSITION 0
AS
DECLARE VARIABLE BARRA CHAR(14);
DECLARE VARIABLE TIPO INTEGER;
DECLARE VARIABLE ES INTEGER;
DECLARE VARIABLE FECHADO CHAR(1);
BEGIN

  /* VERIFICO O TIPO DO MOVIMENTO */
  SELECT
    ES,
    TIPO,
    FECHADO
  FROM
    MOVIMENTOS
  WHERE
    CODIGO = NEW.CODMOVIMENTO
  INTO
    :ES,
    :TIPO,
    :FECHADO;

  IF ((ES IN (0, 1)) AND (TIPO <> 9)) THEN
   BEGIN

     IF ((ES > 0) AND (FECHADO = 'S')) THEN
       EXCEPTION COMPRA_ALTER;

     /* VERIFICO SE EXISTE CÓDIGO DE BARRAS VÁLIDO */
     SELECT
       BARRA
     FROM
       PRODUTOS
     WHERE
       CODIGO = NEW.CODPRODUTO
     INTO
       :BARRA;

     IF (BARRA = '0000000000000') THEN
        EXCEPTION BARRA_NECESSARIA;

   END

END
^

SET TERM ; ^

SET TERM ^ ;

ALTER PROCEDURE COMPRA_ESTOQUE (
    CODMOVIMENTO INTEGER)
AS
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE CODPRODUTO INTEGER;
DECLARE VARIABLE VALOR_UNITARIO NUMERIC(9,2);
DECLARE VARIABLE VALOR_VENDA NUMERIC(9,2);
DECLARE VARIABLE ICMSVENDA NUMERIC(9,4);
DECLARE VARIABLE DESCONTO NUMERIC(9,2);
DECLARE VARIABLE IPI NUMERIC(9,4);
DECLARE VARIABLE QUANTIDADE NUMERIC(9,2);
DECLARE VARIABLE REAJUSTAR CHAR(1);
DECLARE VARIABLE ES CHAR(1);
DECLARE VARIABLE TIPO CHAR(1);
DECLARE VARIABLE ETIQUETA CHAR(1);
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
DECLARE VARIABLE FECHADO CHAR(1);
BEGIN

  /* VERIFICO O TIPO DO MOVIMENTO */
  SELECT
    ES,
    TIPO,
    FECHADO,
    CODEMPRESA
  FROM
    MOVIMENTOS
  WHERE
    CODIGO = :CODMOVIMENTO
  INTO
    ES,
    TIPO,
    FECHADO,
    EMPRESA;

  IF ((ES IN (0, 1)) AND (TIPO <> 9) AND (FECHADO = 'S')) THEN
   BEGIN

     /* TODOS OS ITENS */
     FOR
     SELECT
       CODIGO,
       CODPRODUTO,
       VALOR_UNITARIO,
       VALOR_VENDA,
       ICMSVENDA,
       DESCONTO,
       IPI,
       QUANTIDADE,
       REAJUSTAR
     FROM
       TEMPITENS
     WHERE
       CODMOVIMENTO = :CODMOVIMENTO
     INTO
       :CODIGO,
       :CODPRODUTO,
       :VALOR_UNITARIO,
       :VALOR_VENDA,
       :ICMSVENDA,
       :DESCONTO,
       :IPI,
       :QUANTIDADE,
       :REAJUSTAR
     DO
     BEGIN

       /* RECUPERO O CODIGO DE BARRAS E O TIPO (PRODUTO, SERVIÇO */
       SELECT
         BARRA,
         PS,
         ETIQUETA,
         INDIVIDUAL,
         SEQUENCIA,
         BARRA
       FROM
         PRODUTOS
       WHERE
         CODIGO = :CODPRODUTO
       INTO
         :BARRA,
         :PS,
         :ETIQUETA,
         :INDIVIDUAL,
         :SEQUENCIA,
         :BARRA;

       /* SE NAO TIVER CODIGO DE BARRAS GERO ERRO */
       IF (BARRA = '0000000000000') THEN
         EXCEPTION BARRA_NECESSARIA;

       /* VERIFICO SE EH PRODUTO OU SERVIÇO */
       IF ((PS = 'P') OR (PS = 'M')) THEN
        BEGIN

          /* PRODUTO */

          /* SE FOR COMPRA OU PRODUÇÃO */
          IF ((ES = 1) AND ((TIPO = 1) OR (TIPO = 3))) THEN
           BEGIN

             IF (VALOR_UNITARIO > 0) THEN
              BEGIN

                /* ATUALIZO O PREÇO DE CUSTO */
                UPDATE
                  PRODUTOS
                SET
                  PRECOCUSTO = :VALOR_UNITARIO
                WHERE
                  CODIGO = :CODPRODUTO;

                /* VERIFICO SE PRECISO REAJUSTAR O PREÇO DE VENDA */
                IF (REAJUSTAR = 'S') THEN
                  /* REAJUSTO O PREÇO DE VENDA */
                  UPDATE
                    PRODUTOS
                  SET
                    PRECOVENDA = :VALOR_VENDA,
                    ICMS = :ICMSVENDA
                  WHERE
                    CODIGO = :CODPRODUTO;

              END

             /* ZERO O CONTADOR */
             N = 0;

             /* CALCULO O CUSTO DO PRODUTO, IPI */
             IF (VALOR_UNITARIO > 0) THEN
              BEGIN
                CUSTO_PRODUTO = (VALOR_UNITARIO - DESCONTO);
                CUSTO_IPI = (CUSTO_PRODUTO * (IPI / 100));
              END ELSE
              BEGIN
                CUSTO_PRODUTO = 0;
                CUSTO_IPI = 0;
              END

             /* SE O PRODUTO FOR INDIVIDUAL */
             IF (INDIVIDUAL = 'S') THEN
              BEGIN

                /* EXECUTO A MESMA SEQUENCIA PARA CADA ITEM */
                WHILE (N < QUANTIDADE) DO
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
                   BARRA_TEMP = '999' || CODPRODUTO || SEQUENSTR || '0';
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
                       :CODIGO,
                       :CODPRODUTO,
                       :CODMOVIMENTO,
                       :SEQUENSTR,
                       :ICMSVENDA,
                       :VALOR_VENDA,
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
                  SEQUENCIA = (SEQUENCIA + :QUANTIDADE)
                WHERE
                  CODIGO = :CODPRODUTO;

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
                    :CODIGO,
                    :CODPRODUTO,
                    :CODMOVIMENTO,
                    '0000',
                    :ICMSVENDA,
                    :VALOR_VENDA,
                    :ETIQUETA,
                    :QUANTIDADE,
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
                  CO.CODPRODUTO = :CODPRODUTO
                INTO
                  :MAT_BARRA,
                  :MAT_VALOR
                DO
                BEGIN

                  /* EXECUTO A BAIXA */
                  EXECUTE PROCEDURE
                    ITVENDA_GRAVA (
                      :MAT_BARRA,
                      :QUANTIDADE,
                      :MAT_VALOR,
                      0,
                      0,
                      :CODMOVIMENTO);

                END

              END

           END

        END

     END

   END

END
^

SET TERM ; ^

SET TERM ^ ;

ALTER TRIGGER MOVIMENTOS_AFTUPD
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

     IF (((NEW.NOTA_VALOR_TOTAL <> OLD.NOTA_VALOR_TOTAL) OR
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

     /* COMPRA DE PRODUTOS */
     IF ((NEW.ES = 1) AND (NEW.TIPO = 1) AND (OLD.FECHADO = 'N') AND (NEW.FECHADO = 'S')) THEN
       EXECUTE PROCEDURE COMPRA_ESTOQUE NEW.CODIGO;

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

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (428, CURRENT_TIMESTAMP);
COMMIT;
