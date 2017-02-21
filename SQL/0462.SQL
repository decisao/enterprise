/*
** ATUALIZAÇÃO AUTOMÁTICA DA SITUAÇÃO TRIBUTÁRIA DO ESTOQUE NA COMPRA
*/

SET TERM ^ ;

CREATE OR ALTER procedure VENDA_ABRE (
    CODMOVIMENTO integer,
    CODEMPRESA integer,
    CODCLIENTE integer,
    CODRESPONSAVEL integer,
    CODVENDEDOR integer,
    CODCONDPAG integer,
    CODHISTORICOPAG integer,
    PROCESSO char(3),
    PASSAGEM integer,
    NUMDOC integer,
    TIPODOC char(3),
    DATADOC date,
    CODCOMPRA integer,
    FRETE numeric(14,3),
    TOTAL numeric(14,3),
    I01_CODBARRA varchar(14),
    I01_QUANTIDADE numeric(14,3),
    I01_VALOR numeric(14,3),
    I01_DESCONTO numeric(14,3),
    I01_ICMS numeric(14,3),
    I01_ICMSCOMPRA numeric(14,3),
    I01_IPI numeric(14,3),
    I01_SITTRIBU char(3),
    I02_CODBARRA varchar(14),
    I02_QUANTIDADE numeric(14,3),
    I02_VALOR numeric(14,3),
    I02_DESCONTO numeric(14,3),
    I02_ICMS numeric(14,4),
    I02_ICMSCOMPRA numeric(14,3),
    I02_IPI numeric(14,3),
    I02_SITTRIBU char(3),
    I03_CODBARRA varchar(14),
    I03_QUANTIDADE numeric(14,3),
    I03_VALOR numeric(14,3),
    I03_DESCONTO numeric(14,3),
    I03_ICMS numeric(14,3),
    I03_ICMSCOMPRA numeric(14,3),
    I03_IPI numeric(14,3),
    I03_SITTRIBU char(3))
returns (
    RE_MOVIMENTO integer,
    RE_01 integer,
    RE_02 integer,
    RE_03 integer)
as
declare variable TESTE integer;
declare variable CONDICAO varchar(40);
declare variable TEMP_SERVICOS numeric(14,3);
declare variable TEMP_PRODUTOS numeric(14,3);
declare variable TEMP_IPI numeric(14,3);
declare variable MOV_ES integer;
declare variable MOV_TIPO integer;
declare variable TEMP_CODIGO integer;
declare variable CODPRODUTO integer;
declare variable CODNATUOPER varchar(5);
declare variable TIPO_BLOQUEIO char(1);
declare variable TIPO_IMPEDIMENTO char(1);
declare variable LIMITE numeric(14,3);
declare variable ABERTOS numeric(14,3);
declare variable CONSUM_LIMITE numeric(14,3);
declare variable BLOQUEIO_DIAS integer;
declare variable DATAABERTO timestamp;
declare variable CODCONSUMIDOR integer;
BEGIN

  /* SE FOR NULO, É VENDA */
  IF (PROCESSO IS NULL) THEN
    PROCESSO = 'VEN';

  IF (FRETE IS NULL) THEN
    FRETE = 0;

  /* ZERAMENTO DOS RETORNOS */
  RE_MOVIMENTO = 0;
  RE_01 = 0;
  RE_02 = 0;
  RE_03 = 0;

  IF (I01_QUANTIDADE IS NULL) THEN
    I01_QUANTIDADE = 0;

  IF (I02_QUANTIDADE IS NULL) THEN
    I02_QUANTIDADE = 0;

  IF (I03_QUANTIDADE IS NULL) THEN
    I03_QUANTIDADE = 0;

  IF (I01_SITTRIBU IS NULL) THEN
    I01_SITTRIBU = '0.0';

  IF (I02_SITTRIBU IS NULL) THEN
    I02_SITTRIBU = '0.0';

  IF (I03_SITTRIBU IS NULL) THEN
    I03_SITTRIBU = '0.0';

  /* PEGO A CONDICAO DE PAGAMENTO */
  SELECT
    CONDICAO
  FROM
    CONDPAG
  WHERE
    CODIGO = :CODCONDPAG
  INTO
    CONDICAO;

  IF (CONDICAO IS NULL) THEN
   BEGIN
     CONDICAO = '0/';
     CODCONDPAG = NULL;
   END

  /* VERIFICACAO DE CONSUMIDOR */
  SELECT
    SI.CODCLIENTE_PADRAO,
    SI.VALOR_LIMITE,
    SI.BLOQUEIO_DIAS
  FROM
    SISCONFIG SI
  WHERE
    SI.CODIGO = :CODEMPRESA
  INTO
    :CODCONSUMIDOR,
    :CONSUM_LIMITE,
    :BLOQUEIO_DIAS;

  /* CONSUMIDOR SÓ PODE SER A VISTA */
  IF (CODCLIENTE = CODCONSUMIDOR) THEN
   BEGIN
     IF (((PROCESSO = 'VEN') OR (PROCESSO = 'OSA')) AND (TOTAL > CONSUM_LIMITE)) THEN
       EXCEPTION ERRO 'VALOR MUITO ALTO PARA CONSUMIDOR';
     IF (((PROCESSO = 'VEN') OR (PROCESSO = 'OSA')) AND (UDF_TRIM(CONDICAO) <> '0/')) THEN
       EXCEPTION ERRO 'VENDA CONSUMIDOR SOMENTE A VISTA';
     ELSE
       IF (PROCESSO <> 'VEN') THEN
         EXCEPTION ERRO 'OPERAÇÃO IMPOSSÍVEL COM CONSUMIDOR';
   END

  /* É VENDA? */
  IF ((PROCESSO = 'VEN') OR (PROCESSO = 'OSA')) THEN
   BEGIN

     /* BLOQUEIOS DO CLIENTE */
     SELECT
       CL.TIPO_BLOQUEIO,
       CL.TIPO_IMPEDIMENTO,
       CL.LIMITECREDITO
     FROM
       CLIENTES CL
     WHERE
       CL.CODIGO = :CODCLIENTE
     INTO
       :TIPO_BLOQUEIO,
       :TIPO_IMPEDIMENTO,
       :LIMITE;

     /* CLIENTE É BLOQUEADO? */
     IF (TIPO_BLOQUEIO = 'B') THEN
       EXCEPTION ERRO 'PESSOA PERMANENTEMENTE BLOQUEADA';

     /* DEVO CALCULAR OUTROS BLOQUEIOS? */
     IF ((TIPO_BLOQUEIO = 'A') AND (UDF_TRIM(CONDICAO) <> '0/')) THEN
      BEGIN

        /* TEM IMPEDIMENTOS? */
        IF (TIPO_IMPEDIMENTO <> 'N') THEN
          EXCEPTION ERRO 'PESSOA TEM IMPEDIMENTOS NO CADASTRO';

        /* LIMITE DESTA COMPRA */
        IF (LIMITE < TOTAL) THEN
          EXCEPTION ERRO 'OPERAÇÃO EXCEDE O LIMITE DE CRÉDITO DA PESSOA';

        /* LIMITE DE CRÉDITO NO FINANCEIRO */
        SELECT
          SUM(PA.VALOR)
        FROM
          PAGAMENTOS PA
        WHERE
          PA.ES = 2 AND
          PA.PAGO = 0 AND
          PA.CODCLIENTE = :CODCLIENTE AND
          PA.CODEMPRESA = :CODEMPRESA AND
          (PA.CODMOVIMENTO IS NULL OR PA.CODMOVIMENTO <> :CODMOVIMENTO)
        INTO
          :ABERTOS;

        IF (LIMITE < (TOTAL + ABERTOS)) THEN
          EXCEPTION ERRO 'FINANCEIRO EXCEDE O LIMITE DE CRÉDITO DA PESSOA';

        /* DATA EM ABERTO */
        SELECT
          MIN(PA.DATAVENCIMENTO)
        FROM
          PAGAMENTOS PA
        WHERE
          PA.ES = 2 AND
          PA.PAGO = 0 AND
          PA.CODCLIENTE = :CODCLIENTE AND
          PA.CODEMPRESA = :CODEMPRESA AND
          (PA.CODMOVIMENTO IS NULL OR PA.CODMOVIMENTO <> :CODMOVIMENTO)
        INTO
          :DATAABERTO;

        IF (BLOQUEIO_DIAS < (CURRENT_DATE - CAST(DATAABERTO AS DATE))) THEN
          EXCEPTION ERRO 'PESSOA TEM DÉBITOS ANTERIORES NO FINANCEIRO';

      END

   END

  /* ABRO O MOVIMENTO - PRIMEIRA PASSAGEM */
  IF ((CODMOVIMENTO > 0) AND (PASSAGEM = 1)) THEN
   BEGIN

     /* VERIFICO SE A VENDA JÁ EXISTE */
     SELECT
       COUNT(*)
     FROM
       MOVIMENTOS
     WHERE
       CODIGO = :CODMOVIMENTO
     INTO
       :TESTE;

     IF (TESTE IS NULL) THEN
       TESTE = 0;

     /* SE JÁ EXISTIR ATUALIZO A VENDA */
     IF (TESTE > 0) THEN
      BEGIN

        /* EXCLUSÃO DOS ITENS DA VENDA */
        IF ((PROCESSO = 'VEN') OR (PROCESSO = 'PRV')) THEN
         BEGIN
           UPDATE
             MOVIMENTOS
           SET
             CODEMPRESA = :CODEMPRESA
           WHERE
             CODIGO = :CODMOVIMENTO;
           UPDATE
             INDIVIDUAIS
           SET
             VENDIDO = 'N',
             CODMOVSAIDA = NULL
           WHERE
             CODMOVSAIDA = :CODMOVIMENTO;
         END

        /* APAGO OS ITENS DO ORÇAMENTO */
        IF ((PROCESSO = 'ORC') OR (PROCESSO = 'COM') OR (PROCESSO = 'PRC')) THEN
         BEGIN
           DELETE FROM
             TEMPITENS
           WHERE
             CODMOVIMENTO = :CODMOVIMENTO;
         END

        /* ATUALIZO OS DADOS DO CABEÇALHO DO MOVIMENTO */
        UPDATE
          MOVIMENTOS
        SET
          CODCLIENTE        = :CODCLIENTE,
          CODRESPONSAVEL    = :CODRESPONSAVEL,
          CODVENDEDOR       = :CODVENDEDOR,
          CODHISTORICOPAG   = :CODHISTORICOPAG,
          NOTA_NUMERO       = :NUMDOC,
          NOTA_DATAEMISSAO  = :DATADOC,
          TIPODOC           = :TIPODOC,
          CODCOMPRA         = :CODCOMPRA,
          NOTA_VALOR_FRETE  = :FRETE
        WHERE
          CODIGO = :CODMOVIMENTO;

      END ELSE
      BEGIN

        /* VENDA */
        IF (PROCESSO = 'VEN') THEN
         BEGIN
           MOV_ES = 2;
           MOV_TIPO = 5;
         END

        IF (PROCESSO = 'OSA') THEN
         BEGIN
           MOV_ES = 2;
           MOV_TIPO = 2;
         END

        /* ORÇAMENTO */
        IF (PROCESSO = 'ORC') THEN
         BEGIN
           MOV_ES = 0;
           MOV_TIPO = 1;
         END

        /* COMPRA */
        IF (PROCESSO = 'COM') THEN
         BEGIN
           MOV_ES = 1;
           MOV_TIPO = 1;
         END

        /* PRODUÇÃO COMPRA */
        IF (PROCESSO = 'PRC') THEN
         BEGIN
           MOV_ES = 1;
           MOV_TIPO = 4;
         END

        /* PRODUÇÃO VENDA */
        IF (PROCESSO = 'PRV') THEN
         BEGIN
           MOV_ES = 2;
           MOV_TIPO = 4;
         END

        /* INICIO O MOVIMENTO */
        INSERT INTO
          MOVIMENTOS (
            CODIGO,
            ES,
            TIPO,
            CODCLIENTE,
            DATA,
            VALOR_SERVICOS,
            VALOR_ITENS,
            DESCONTO,
            VALOR_ICMS,
            NOTA_FRETE,
            NOTA_VALOR_FRETE,
            NOTA_VALOR_SEGURO,
            NOTA_VALOR_OUTROS,
            NOTA_QUANTIDADE,
            NOTA_PESOBRUTO,
            NOTA_PESOLIQUIDO,
            STATUS,
            ICMSSIMPLES,
            ICMSSIMPALIQ,
            ISSALIQ,
            NOTA_DATASAIDA,
            NOTA_BASEICMSSUBST,
            NOTA_VALORICMSSUBST,
            VALOR_IPI,
            GARANTIA,
            EMPRESTIMO,
            CODEMPRESA,
            VALOR_COMISSAO,
            ECF,
            OSTIPO,
            VALOR_IPI_PRODUTOS,
            AUTORIZADO,
            CODRESPONSAVEL,
            CODVENDEDOR_ABRE,
            CODVENDEDOR,
            CODHISTORICOPAG,
            PRIORIDADE,
            CONDICAO,
            CODCENTRO,
            PERCCOMIS_CALCULO,
            PERCCOMIS_PROD,
            PERCCOMIS_PECA,
            PERCCOMIS_SERV,
            CODCONDPAG,
            NOTA_NUMERO,
            NOTA_DATAEMISSAO,
            TIPODOC,
            CODCOMPRA)
          VALUES (
            :CODMOVIMENTO,
            :MOV_ES,
            :MOV_TIPO,
            :CODCLIENTE,
            CURRENT_TIMESTAMP,
            0,
            0,
            0,
            0,
            0,
            :FRETE,
            0,
            0,
            0,
            0,
            0,
            '',
            'N',                   /* ICMSSIMPLES     */
            0,                     /* ICMSSIMPLESALIQ */
            0,                     /* ISSALIQ         */
            CURRENT_TIMESTAMP,
            0,
            0,
            0,
            'N',
            'N',
            :CODEMPRESA,
            0,
            'N',                   /* ECF             */
            99,                    /* OSTIPO          */
            0,
            'N',
            :CODRESPONSAVEL,
            :CODRESPONSAVEL,
            :CODVENDEDOR,
            :CODHISTORICOPAG,
            1,
            :CONDICAO,
            1,                     /* CODCENTRO       */
            'F',                   /* COMIS CALCULO   */
            0,                     /* COMIS PROD      */
            0,                     /* COMIS PECA      */
            0,                     /* COMIS SERV      */
            :CODCONDPAG,
            :NUMDOC,
            :DATADOC,
            :TIPODOC,
            :CODCOMPRA);

      END

   END

  /* SE NÃO HOUVER MOVIMENTO, ABORTO */
  IF (CODMOVIMENTO = 0) THEN
    EXIT;

  /* SE DEU ERRO PASSO AOS ITENS */
  IF (RE_MOVIMENTO = 0) THEN
   BEGIN

     /*   V E N D A   */
     IF ((PROCESSO = 'VEN') OR (PROCESSO = 'PRV') OR (PROCESSO = 'OSA')) THEN
      BEGIN

        /******************************************************/
        /* ITEM 01                                            */
        /******************************************************/
        RE_01 = 0;
        IF (I01_QUANTIDADE > 0) THEN
         BEGIN

           /* VENDO O ITEM */
           EXECUTE PROCEDURE
             ITVENDA_GRAVA(
               :I01_CODBARRA,
               :I01_QUANTIDADE,
               :I01_VALOR,
               :I01_DESCONTO,
               :I01_ICMS,
               :CODMOVIMENTO);

         END

        /******************************************************/
        /* ITEM 02                                            */
        /******************************************************/
        RE_02 = 0;
        IF (I02_QUANTIDADE > 0) THEN
         BEGIN

           /* VENDO O ITEM */
           EXECUTE PROCEDURE
             ITVENDA_GRAVA(
               :I02_CODBARRA,
               :I02_QUANTIDADE,
               :I02_VALOR,
               :I02_DESCONTO,
               :I02_ICMS,
               :CODMOVIMENTO);

         END

        /******************************************************/
        /* ITEM 03                                            */
        /******************************************************/
        RE_03 = 0;
        IF (I03_QUANTIDADE > 0) THEN
         BEGIN

           /* VENDO O ITEM */
           EXECUTE PROCEDURE
             ITVENDA_GRAVA(
               :I03_CODBARRA,
               :I03_QUANTIDADE,
               :I03_VALOR,
               :I03_DESCONTO,
               :I03_ICMS,
               :CODMOVIMENTO);

         END

        /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/
        TEMP_IPI = 0;

        SELECT
          SUM(INDIVIDUAIS.VALOR_PAGO)
        FROM
          INDIVIDUAIS INDIVIDUAIS
        WHERE
          INDIVIDUAIS.CODMOVSAIDA = :CODMOVIMENTO AND
          INDIVIDUAIS.PS          = 'S'           AND
          INDIVIDUAIS.VENDIDO     = 'S'
        INTO
          :TEMP_SERVICOS;
        IF (TEMP_SERVICOS IS NULL) THEN
          TEMP_SERVICOS = 0;

        SELECT
          SUM(INDIVIDUAIS.VALOR_PAGO)
        FROM
          INDIVIDUAIS INDIVIDUAIS
        WHERE
          INDIVIDUAIS.CODMOVSAIDA = :CODMOVIMENTO AND
          INDIVIDUAIS.PS          = 'P'           AND
          INDIVIDUAIS.VENDIDO     = 'S'
        INTO
          :TEMP_PRODUTOS;
        IF (TEMP_PRODUTOS IS NULL) THEN
          TEMP_PRODUTOS = 0;

      END /* VENDA */

     /*   O R C A M E N T O   */
     IF (PROCESSO = 'ORC') THEN
      BEGIN

        /******************************************************/
        /* ITEM 01                                            */
        /******************************************************/
        RE_01 = 0;
        IF (I01_QUANTIDADE > 0) THEN
         BEGIN

           /* CODIGO DO ITEM */
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

           /* CODIGO DO PRODUTO */
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I01_CODBARRA
           INTO
             :CODPRODUTO;

           /* VENDO O ITEM */
           INSERT INTO
             TEMPITENS(
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
               BARRA)
             VALUES(
               :TEMP_CODIGO,
               :CODMOVIMENTO,
               :CODPRODUTO,
               :I01_QUANTIDADE,
               :I01_VALOR,
               :I01_DESCONTO,
               :I01_SITTRIBU,
               0,
               'N',
               0,
               :I01_ICMSCOMPRA,
               :I01_ICMS,
               :I01_IPI,
               :I01_CODBARRA);

         END

        /******************************************************/
        /* ITEM 02                                            */
        /******************************************************/
        RE_02 = 0;
        IF (I02_QUANTIDADE > 0) THEN
         BEGIN

           /* CODIGO DO ITEM */
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

           /* CODIGO DO PRODUTO */
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I02_CODBARRA
           INTO
             :CODPRODUTO;

           /* VENDO O ITEM */
           INSERT INTO
             TEMPITENS(
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
               BARRA)
             VALUES(
               :TEMP_CODIGO,
               :CODMOVIMENTO,
               :CODPRODUTO,
               :I02_QUANTIDADE,
               :I02_VALOR,
               :I02_DESCONTO,
               :I02_SITTRIBU,
               0,
               'N',
               0,
               :I02_ICMSCOMPRA,
               :I02_ICMS,
               :I02_IPI,
               :I02_CODBARRA);

         END

        /******************************************************/
        /* ITEM 03                                            */
        /******************************************************/
        RE_03 = 0;
        IF (I03_QUANTIDADE > 0) THEN
         BEGIN

           /* CODIGO DO ITEM */
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

           /* CODIGO DO PRODUTO */
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I03_CODBARRA
           INTO
             :CODPRODUTO;

           /* VENDO O ITEM */
           INSERT INTO
             TEMPITENS(
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
               BARRA)
             VALUES(
               :TEMP_CODIGO,
               :CODMOVIMENTO,
               :CODPRODUTO,
               :I03_QUANTIDADE,
               :I03_VALOR,
               :I03_DESCONTO,
               :I03_SITTRIBU,
               0,
               'N',
               0,
               :I03_ICMSCOMPRA,
               :I03_ICMS,
               :I03_IPI,
               :I03_CODBARRA);

         END

        /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/
        TEMP_SERVICOS = 0;
        TEMP_IPI = 0;

        SELECT
          SUM(TEMPITENS.VALOR_TOTAL)
        FROM
          TEMPITENS TEMPITENS
        WHERE
          TEMPITENS.CODMOVIMENTO = :CODMOVIMENTO
        INTO
          :TEMP_PRODUTOS;

        IF (TEMP_PRODUTOS IS NULL) THEN
          TEMP_PRODUTOS = 0;

      END /* ORÇAMENTO */

     /*   C O M P R A    O U    P R O D U Ç Ã O  */
     IF ((PROCESSO = 'COM') OR (PROCESSO = 'PRC')) THEN
      BEGIN

        /******************************************************/
        /* ITEM 01                                            */
        /******************************************************/
        RE_01 = 0;
        IF (I01_QUANTIDADE > 0) THEN
         BEGIN

           /* CODIGO DO ITEM */
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

           /* CODIGO DO PRODUTO */
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I01_CODBARRA
           INTO
             :CODPRODUTO;

           /* VENDO O ITEM */
           INSERT INTO
             TEMPITENS(
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
               BARRA)
             VALUES(
               :TEMP_CODIGO,
               :CODMOVIMENTO,
               :CODPRODUTO,
               :I01_QUANTIDADE,
               :I01_VALOR,
               :I01_DESCONTO,
               :I01_SITTRIBU,
               0,
               'N',
               0,
               :I01_ICMSCOMPRA,
               :I01_ICMS,
               :I01_IPI,
               :I01_CODBARRA);

           /* ACERTO O ESTOQUE */
           EXECUTE PROCEDURE SITTRIBUICMS(:CODPRODUTO, :I01_SITTRIBU, :I01_ICMS, :CODEMPRESA);

         END

        /******************************************************/
        /* ITEM 02                                            */
        /******************************************************/
        RE_02 = 0;
        IF (I02_QUANTIDADE > 0) THEN
         BEGIN

           /* CODIGO DO ITEM */
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

           /* CODIGO DO PRODUTO */
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I02_CODBARRA
           INTO
             :CODPRODUTO;

           /* VENDO O ITEM */
           INSERT INTO
             TEMPITENS(
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
               BARRA)
             VALUES(
               :TEMP_CODIGO,
               :CODMOVIMENTO,
               :CODPRODUTO,
               :I02_QUANTIDADE,
               :I02_VALOR,
               :I02_DESCONTO,
               :I02_SITTRIBU,
               0,
               'N',
               0,
               :I02_ICMSCOMPRA,
               :I02_ICMS,
               :I02_IPI,
               :I02_CODBARRA);

           /* ACERTO O ESTOQUE */
           EXECUTE PROCEDURE SITTRIBUICMS(:CODPRODUTO, :I02_SITTRIBU, :I02_ICMS, :CODEMPRESA);

         END

        /******************************************************/
        /* ITEM 03                                            */
        /******************************************************/
        RE_03 = 0;
        IF (I03_QUANTIDADE > 0) THEN
         BEGIN

           /* CODIGO DO ITEM */
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

           /* CODIGO DO PRODUTO */
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I03_CODBARRA
           INTO
             :CODPRODUTO;

           /* VENDO O ITEM */
           INSERT INTO
             TEMPITENS(
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
               BARRA)
             VALUES(
               :TEMP_CODIGO,
               :CODMOVIMENTO,
               :CODPRODUTO,
               :I03_QUANTIDADE,
               :I03_VALOR,
               :I03_DESCONTO,
               :I03_SITTRIBU,
               0,
               'N',
               0,
               :I03_ICMSCOMPRA,
               :I03_ICMS,
               :I03_IPI,
               :I03_CODBARRA);

           /* ACERTO O ESTOQUE */
           EXECUTE PROCEDURE SITTRIBUICMS(:CODPRODUTO, :I03_SITTRIBU, :I03_ICMS, :CODEMPRESA);

         END

        /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/
        TEMP_SERVICOS = 0;

        SELECT
          SUM(TEMPITENS.VALOR_TOTAL),
          SUM(TEMPITENS.VALOR_IPI)
        FROM
          TEMPITENS TEMPITENS
        WHERE
          TEMPITENS.CODMOVIMENTO = :CODMOVIMENTO
        INTO
          :TEMP_PRODUTOS,
          :TEMP_IPI;

        IF (TEMP_PRODUTOS IS NULL) THEN
          TEMP_PRODUTOS = 0;

        IF (TEMP_IPI IS NULL) THEN
          TEMP_IPI = 0;

      END /* COMPRA OU PRODUÇÃO */

     /* ATUALIZO OS TOTAIS */
     IF ((PASSAGEM = 99) OR (TIPODOC = 'XXX')) THEN
       UPDATE
         MOVIMENTOS
       SET
         VALOR_SERVICOS     = :TEMP_SERVICOS,
         VALOR_ITENS        = :TEMP_PRODUTOS,
         VALOR_IPI_PRODUTOS = :TEMP_IPI,
         CODCONDPAG         = :CODCONDPAG,
         CONDICAO           = :CONDICAO
       WHERE
         CODIGO = :CODMOVIMENTO;

   END

END
^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (462, CURRENT_TIMESTAMP);
COMMIT;