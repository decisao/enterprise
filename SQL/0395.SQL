/*
** PRECO DE PRODUTOS E QUANTIDADE COM TRÊS DÍGITOS
*/

SET TERM ^ ;

ALTER PROCEDURE ITVENDA_GRAVA (
    BARRA CHAR(14),
    QUANTIDADE DECIMAL(14,3),
    VALOR DECIMAL(14,3),
    DESCONTO DECIMAL(14,3),
    ICMS DECIMAL(14,4),
    CODMOVSAIDA INTEGER)
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
DECLARE VARIABLE XPRECOCUSTO NUMERIC(14,3);
DECLARE VARIABLE CODEMPRESA INTEGER;
DECLARE VARIABLE COMISSAO_CLIENTE CHAR(1);
DECLARE VARIABLE COMISSAO_PRODUTO CHAR(1);
DECLARE VARIABLE PERCCOMISSAO NUMERIC(14,3);
DECLARE VARIABLE CODCLIENTE INTEGER;
DECLARE VARIABLE CODVENDEDOR INTEGER;
DECLARE VARIABLE COMISSAO NUMERIC(14,3);
DECLARE VARIABLE ALIQUOTA_ICMSPRODUTO NUMERIC(14,4);
DECLARE VARIABLE ECF CHAR(1);
DECLARE VARIABLE ICMSSIMPLES CHAR(1);
DECLARE VARIABLE ALIQUOTA_ICMSSIMPLES NUMERIC(14,4);
DECLARE VARIABLE XCUSTO_PRODUTO NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_IPI NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_RATEIO NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_ICMS NUMERIC(14,3);
DECLARE VARIABLE XCUSTO_ISS NUMERIC(14,3);
DECLARE VARIABLE ESTOQUE CHAR(1);
DECLARE VARIABLE TMP_ICMS CHAR(1);
DECLARE VARIABLE TMP_IPI CHAR(1);
DECLARE VARIABLE CODNATUOPER VARCHAR(5);
DECLARE VARIABLE CODCOMPRA INTEGER;
DECLARE VARIABLE DESCRICAO VARCHAR(60);
BEGIN

  /* VERIFICO A QUANTIDADE */
  IF (QUANTIDADE <= 0) THEN
    EXCEPTION QUANTIDADE_POSITIVA;

  /* INFORMAÇÕES DO PRODUTO */
  SELECT
    CODIGO,
    PRECOCUSTO,
    PS,
    COMISSIONADO,
    ICMS,
    DESCRICAO
  FROM
    PRODUTOS
  WHERE
    BARRA = :BARRA
  INTO
    :XCODPRODUTO,
    :XPRECOCUSTO,
    :PS,
    :COMISSAO_PRODUTO,
    :ALIQUOTA_ICMSPRODUTO,
    :DESCRICAO;

  /* INFORMAÇÕES DO MOVIMENTO */
  SELECT
    CODCLIENTE,
    CODVENDEDOR,
    CODEMPRESA,
    ECF,
    NOTA_CODNATUOPER
  FROM
    MOVIMENTOS
  WHERE
    CODIGO = :CODMOVSAIDA
  INTO
    :CODCLIENTE,
    :CODVENDEDOR,
    :CODEMPRESA,
    :ECF,
    :CODNATUOPER;

  /* INFORMACOES DA NATUREZA DE OPERACAO */
  SELECT
    ESTOQUE,
    ICMS,
    IPI
  FROM
    NATUOPER
  WHERE
    CODIGO = :CODNATUOPER
  INTO
    :ESTOQUE,
    :TMP_ICMS,
    :TMP_IPI;

  /* INFORMAÇÕES DO CLIENTE */
  SELECT
    COMISSIONADO
  FROM
    CLIENTES
  WHERE
    CODIGO = :CODCLIENTE
  INTO
    :COMISSAO_CLIENTE;

  /* INFORMAÇÕES DO VENDEDOR */
  SELECT
    COMISSAO
  FROM
    CLIENTES
  WHERE
    CODIGO = :CODVENDEDOR
  INTO
    :PERCCOMISSAO;

  /* NAO POSSUI MOVIMENTACAO DE ESTOQUE */
  IF (((PS = 'P') OR (PS = 'M')) AND (ESTOQUE = 'N')) THEN
   BEGIN

     /* CODIGO DO PRODUTO */
     SELECT
       PO.CODIGO
     FROM
       PRODUTOS PO
     WHERE
       PO.BARRA = :BARRA
     INTO
       :XCODPRODUTO;

     IF (XCODPRODUTO IS NULL) THEN
       EXCEPTION INDIVIDUO_ESTOQUE;

     /* CODIGO DA ULTIMA COMPRA */
     SELECT
       MAX(TM.CODIGO)
     FROM
       TEMPITENS TM
       JOIN MOVIMENTOS MO ON
         (MO.CODIGO = TM.CODMOVIMENTO)
     WHERE
       TM.CODPRODUTO = :XCODPRODUTO AND
       MO.ES         = 1            AND
       MO.TIPO       = 1
     INTO
       :CODCOMPRA;

     IF (CODCOMPRA IS NULL) THEN
       EXCEPTION MOV_PREVIA;

     SELECT
       CODMOVIMENTO,
       ICMSCOMPRA,
       CAST((VALOR_TOTAL / QUANTIDADE) AS NUMERIC(14, 3))
     FROM
       TEMPITENS
     WHERE
       CODIGO = :CODCOMPRA
     INTO
       :XCODMOVENTRADA,
       :XICMSVENDA,
       :XPRECOCUSTO;

     /* PEGO A SEQUENCIA DOS ITENS DE ESTOQUE */
     EXECUTE PROCEDURE SEQ_OBTER 'INDIVIDUAIS'
       RETURNING_VALUES NSEQ;

     /* INSIRO UM ITEM DE SERVIÇO NA QUANTIDADE EXATA */
     INSERT INTO
       INDIVIDUAIS (
         CODIGO,
         CODITEM,
         CODPRODUTO,
         CODMOVENTRADA,
         CODMOVSAIDA,
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
         PS,
         CODEMPRESA,
         CUSTO_PRODUTO)
       VALUES (
         :NSEQ,
         :CODCOMPRA,
         :XCODPRODUTO,
         :XCODMOVENTRADA,
         :CODMOVSAIDA,
         '0000',
         '',
         'S',
         :VALOR,
         :XICMSVENDA,
         :DESCONTO,
         'N',
         :BARRA,
         :QUANTIDADE,
         0,
         'S',
         'P',
         :CODEMPRESA,
         :XPRECOCUSTO);

   END ELSE

  /* VERIFICO SE É PRODUTO E NÃO SERVIÇO */
  IF ((PS = 'P') OR (PS = 'M') OR (PS IS NULL)) THEN
   BEGIN

    /* VERIFICO SE JÁ FOI VENDIDO NESSE MOVIMENTO */
    SELECT
      SUM(QUANTIDADE)
    FROM
      INDIVIDUAIS
    WHERE
      BARRA = :BARRA AND
      VENDIDO = 'S' AND
      CODMOVSAIDA = :CODMOVSAIDA AND
      CODEMPRESA = :CODEMPRESA
    INTO
      :XQUANTIDADE;

    IF (XQUANTIDADE IS NULL) THEN
      XQUANTIDADE = 0;

    /* SE JÁ FOI VENDIDO, ERRO, SÓ UM LANÇAMENTO PARA CADA PRODUTO DIFERENTE */
    IF (XQUANTIDADE > 0) THEN
      EXCEPTION ITEM_REPETIDO;

    /* VERIFICO SE EXISTE ESTOQUE */
    SELECT
      SUM(QUANTIDADE)
    FROM
      INDIVIDUAIS
    WHERE
      BARRA = :BARRA AND
      VENDIDO = 'N'  AND
      CODEMPRESA = :CODEMPRESA
    INTO
      :XQUANTIDADE;

    /* SE TIVER ESTOQUE, FAÇO A VENDA */
    IF (QUANTIDADE <= XQUANTIDADE) THEN
      BEGIN

        /* FAÇO UMA VARREDURA DOS ITENS NO ESTOQUE */
        FOR
        SELECT
          ID.CODIGO,
          ID.CODITEM,
          ID.CODPRODUTO,
          ID.CODMOVENTRADA,
          ID.SEQUENCIA,
          ID.SERIE,
          ID.VENDIDO,
          ID.CODMOVSAIDA,
          ID.VALOR_VENDA,
          ID.ICMSVENDA,
          ID.DESCONTO,
          ID.IMPETIQ,
          ID.BARRA,
          ID.QUANTIDADE,
          ID.UNICO,
          ID.CUSTO_PRODUTO,
          ID.CUSTO_IPI,
          ID.CUSTO_RATEIO,
          ID.CUSTO_ICMS,
          ID.CUSTO_ISS
        FROM
          INDIVIDUAIS ID
          LEFT JOIN MOVIMENTOS MO ON
            (MO.CODIGO = ID.CODMOVENTRADA)
        WHERE
          ID.BARRA = :BARRA AND
          ID.VENDIDO = 'N' AND
          ID.CODEMPRESA = :CODEMPRESA
        ORDER BY
          MO.DATA
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

          /* TENHO ESTOQUE NESSE REGISTRO */
          IF (QUANTIDADE > 0) THEN
            BEGIN

              /* SE A QUANTIDADE É SUFICIENTE OU MAIOR */
              SOBRA = 0;
              IF (QUANTIDADE >= XQUANTIDADE) THEN
                BEGIN

                  BAIXA = XQUANTIDADE;

                END ELSE
                BEGIN

                  BAIXA = QUANTIDADE;
                  SOBRA = XQUANTIDADE - BAIXA;

                END

              /* SE FALTOU, CALCULO PARA A PRÓXIMA ITERAÇÃO */
              QUANTIDADE = QUANTIDADE - BAIXA;

              /* CALCULO A COMISSAO DESSE ITEM */
              IF ((COMISSAO_PRODUTO = 'S') AND (COMISSAO_CLIENTE = 'S')) THEN
                COMISSAO = ((VALOR - DESCONTO) * BAIXA) * (PERCCOMISSAO / 100);
              ELSE
                COMISSAO = 0.0;

              IF (COMISSAO IS NULL) THEN
                COMISSAO = 0.0;

              /* SE FOR ECF, ALIQUOTA DO CADASTRO DE PRODUTOS */
              IF (ECF = 'S') THEN
                XICMSVENDA = ALIQUOTA_ICMSPRODUTO;

              /* VERIFICO O ICMS CORRETO */
              SELECT
                ICMSSIMPLES,
                ALIQUOTA_ICMSSIMPLES
              FROM
                SISCONFIG
              WHERE
                CODIGO = :CODEMPRESA
              INTO
                :ICMSSIMPLES,
                :ALIQUOTA_ICMSSIMPLES;

              /* SE FOR SIMPLES, ALIQUOTA SIMPLES */
              IF (ICMSSIMPLES = 'S') THEN
                XICMSVENDA = ALIQUOTA_ICMSSIMPLES;

              /* VENDO O QUE FOR PRECISO */
              UPDATE
                INDIVIDUAIS
              SET
                QUANTIDADE = :BAIXA,
                CODMOVSAIDA = :CODMOVSAIDA,
                VALOR_VENDA = :VALOR,
                DESCONTO = :DESCONTO,
                VENDIDO = 'S',
                ICMSVENDA = :XICMSVENDA,
                VALOR_COMISSAO = :COMISSAO
              WHERE
                CODIGO = :XCODIGO;

              /* SE SOBROU, INSIRO UM NOVO ITEM DE ESTOQUE COM A SOBRE */
              IF (SOBRA > 0) THEN
                BEGIN

                  /* PEGO A SEQUENCIA DOS ITENS DE ESTOQUE */
                  EXECUTE PROCEDURE SEQ_OBTER 'INDIVIDUAIS'
                    RETURNING_VALUES NSEQ;
                  XVENDIDO = 'N';

                  /* INSIRO O REGISTRO NO ESTOQUE */
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
                      :XICMSVENDA,
                      :XDESCONTO,
                      :XIMPETIQ,
                      :XBARRA,
                      :SOBRA,
                      :XUNICO,
                      'S',
                      :CODEMPRESA,
                      :XCUSTO_PRODUTO,
                      :XCUSTO_IPI,
                      :XCUSTO_RATEIO,
                      :XCUSTO_ICMS,
                      :XCUSTO_ISS);

              END
            END ELSE EXIT;
        END

      /* SE NÃO HOUVER ESTOQUE, GERO ERRO */
      END ELSE EXCEPTION ERRO 'SEM ESTOQUE: "' || UDF_TRIM(DESCRICAO) || '"';

    /* SE NÃO FOR PRODUTO, É SERVIÇO */
    END ELSE
    BEGIN

      /* PEGO A SEQUENCIA DOS ITENS TEMPORÁRIOS */
      EXECUTE PROCEDURE SEQ_OBTER 'TEMPITENS'
         RETURNING_VALUES XCODITEM;

      /* INSIRO UM ITEM DE SERVIÇO NA QUANTIDADE EXATA */
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
          ICMSVENDA)
        VALUES (
          :XCODITEM,
          :CODMOVSAIDA,
          :XCODPRODUTO,
          :QUANTIDADE,
          :XPRECOCUSTO,
          0,
          '0.0',
          0,
          'N',
          :VALOR,
          0,
          0);

      /* PEGO A SEQUENCIA DOS ITENS DE ESTOQUE */
      EXECUTE PROCEDURE SEQ_OBTER 'INDIVIDUAIS'
         RETURNING_VALUES NSEQ;

      /* INSIRO UM ITEM DE SERVIÇO NA QUANTIDADE EXATA */
      INSERT INTO
        INDIVIDUAIS (
          CODIGO,
          CODITEM,
          CODPRODUTO,
          CODMOVENTRADA,
          CODMOVSAIDA,
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
          PS,
          CODEMPRESA,
          CUSTO_PRODUTO)
        VALUES (
          :NSEQ,
          :XCODITEM,
          :XCODPRODUTO,
          :CODMOVSAIDA,
          :CODMOVSAIDA,
          '0000',
          '',
          'S',
          :VALOR,
          0,
          :DESCONTO,
          'N',
          :BARRA,
          :QUANTIDADE,
          0,
          'N',
          'S',
          :CODEMPRESA,
          :XPRECOCUSTO);
    END
END
^

SET TERM ; ^

SET TERM ^ ;

ALTER PROCEDURE COMPRA_ESTOQUE(
    CODMOVIMENTO INTEGER)
AS
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE CODPRODUTO INTEGER;
DECLARE VARIABLE VALOR_UNITARIO NUMERIC(9, 2);
DECLARE VARIABLE VALOR_VENDA NUMERIC(9, 2);
DECLARE VARIABLE ICMSVENDA NUMERIC(9, 4);
DECLARE VARIABLE DESCONTO NUMERIC(9, 2);
DECLARE VARIABLE IPI NUMERIC(9, 4);
DECLARE VARIABLE QUANTIDADE NUMERIC(9, 2);
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
    FECHADO
  FROM
    MOVIMENTOS
  WHERE
    CODIGO = :CODMOVIMENTO
  INTO
    ES,
    TIPO,
    FECHADO;

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
         PS
       FROM
         PRODUTOS
       WHERE
         CODIGO = :CODPRODUTO
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

          /* RECUPERO O TIPO E A EMPRESA */
          SELECT
            ES,
            TIPO,
            CODEMPRESA
          FROM
            MOVIMENTOS
          WHERE
            CODIGO = :CODMOVIMENTO
          INTO
            :ES,
            :TIPO,
            :EMPRESA;

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

             /* RECUPERO DADOS DO PRODUTO PARA GERAÇAO */
             SELECT
               ETIQUETA,
               INDIVIDUAL,
               SEQUENCIA,
               BARRA
             FROM
               PRODUTOS
             WHERE
               CODIGO = :CODPRODUTO
             INTO
               :ETIQUETA,
               :INDIVIDUAL,
               :SEQUENCIA,
               :BARRA;

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

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (395, CURRENT_TIMESTAMP);
COMMIT;
