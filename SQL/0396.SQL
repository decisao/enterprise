/*
** PRECO DE PRODUTOS E QUANTIDADE COM TRÊS DÍGITOS
*/

SET TERM ^ ;

ALTER PROCEDURE VENDA_ABRE(
    CODMOVIMENTO INTEGER,
    CODEMPRESA INTEGER,
    CODCLIENTE INTEGER,
    CODRESPONSAVEL INTEGER,
    CODVENDEDOR INTEGER,
    CODCONDPAG INTEGER,
    CODHISTORICOPAG INTEGER,
    PROCESSO CHAR(3),
    PASSAGEM INTEGER,
    NUMDOC INTEGER,
    TIPODOC CHAR(3),
    DATADOC DATE,
    CODCOMPRA INTEGER,
    FRETE NUMERIC(9,2),
    TOTAL NUMERIC(9,2),
    I01_CODBARRA VARCHAR(14),
    I01_QUANTIDADE NUMERIC(9,2),
    I01_VALOR NUMERIC(9,2),
    I01_DESCONTO NUMERIC(9,2),
    I01_ICMS NUMERIC(9,2),
    I01_ICMSCOMPRA NUMERIC(9,2),
    I01_IPI NUMERIC(9,2),
    I01_SITTRIBU CHAR(3),
    I02_CODBARRA VARCHAR(14),
    I02_QUANTIDADE NUMERIC(9,2),
    I02_VALOR NUMERIC(9,2),
    I02_DESCONTO NUMERIC(9,2),
    I02_ICMS NUMERIC(9,2),
    I02_ICMSCOMPRA NUMERIC(9,2),
    I02_IPI NUMERIC(9,2),
    I02_SITTRIBU CHAR(3),
    I03_CODBARRA VARCHAR(14),
    I03_QUANTIDADE NUMERIC(9,2),
    I03_VALOR NUMERIC(9,2),
    I03_DESCONTO NUMERIC(9,2),
    I03_ICMS NUMERIC(9,2),
    I03_ICMSCOMPRA NUMERIC(9,2),
    I03_IPI NUMERIC(9,2),
    I03_SITTRIBU CHAR(3))
RETURNS (
    RE_MOVIMENTO INTEGER,
    RE_01 INTEGER,
    RE_02 INTEGER,
    RE_03 INTEGER)
AS
DECLARE VARIABLE TESTE INTEGER;
DECLARE VARIABLE CONDICAO VARCHAR(40);
DECLARE VARIABLE TEMP_SERVICOS NUMERIC(9,2);
DECLARE VARIABLE TEMP_PRODUTOS NUMERIC(9,2);
DECLARE VARIABLE MOV_ES INTEGER;
DECLARE VARIABLE MOV_TIPO INTEGER;
DECLARE VARIABLE TEMP_CODIGO INTEGER;
DECLARE VARIABLE CODPRODUTO INTEGER;
DECLARE VARIABLE CODNATUOPER VARCHAR(5);
DECLARE VARIABLE TIPO_BLOQUEIO CHAR(1);
DECLARE VARIABLE TIPO_IMPEDIMENTO CHAR(1);
DECLARE VARIABLE LIMITE NUMERIC(9,2);
DECLARE VARIABLE ABERTOS NUMERIC(9,2);
DECLARE VARIABLE CONSUM_LIMITE NUMERIC(9,2);
DECLARE VARIABLE BLOQUEIO_DIAS INTEGER;
DECLARE VARIABLE DATAABERTO TIMESTAMP;
DECLARE VARIABLE CODCONSUMIDOR INTEGER;
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
             INDIVIDUAIS
           SET
             VENDIDO = 'N'
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
          CONDICAO          = :CONDICAO,
          CODCONDPAG        = :CODCONDPAG,
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

        /* SE DER ERRO */
        /* WHEN ANY DO RE_MOVIMENTO = 1; */

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

           /* SE DER ERRO */
           /* WHEN ANY DO RE_01 = 1; */

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

           /* SE DER ERRO */
           /* WHEN ANY DO RE_02 = 1; */

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

           /* SE DER ERRO */
           /* WHEN ANY DO RE_03 = 1; */

         END

        /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/
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

           /* SE DER ERRO
           WHEN ANY DO RE_01 = 1; */

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

           /* SE DER ERRO
           WHEN ANY DO RE_02 = 1; */

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

           /* SE DER ERRO
           WHEN ANY DO RE_03 = 1; */

         END

        /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/
        TEMP_SERVICOS = 0;

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

           /* SE DER ERRO
           WHEN ANY DO RE_01 = 1; */

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

           /* SE DER ERRO
           WHEN ANY DO RE_02 = 1; */

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

           /* SE DER ERRO
           WHEN ANY DO RE_03 = 1; */

         END

        /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/
        TEMP_SERVICOS = 0;

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

      END /* COMPRA OU PRODUÇÃO */

     /* ATUALIZO OS TOTAIS */
     UPDATE
       MOVIMENTOS
     SET
       VALOR_SERVICOS = :TEMP_SERVICOS,
       VALOR_ITENS    = :TEMP_PRODUTOS
     WHERE
       CODIGO = :CODMOVIMENTO;

   END

  SUSPEND;

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

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (396, CURRENT_TIMESTAMP);
COMMIT;
