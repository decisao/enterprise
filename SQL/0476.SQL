/*
** CST 4 DIGITOS
*/

SET TERM ^ ;

CREATE OR ALTER trigger verifica_barra_ins for produtos
inactive before insert position 0
AS
DECLARE VARIABLE TEMP_EAN VARCHAR(13);
BEGIN
IF (NEW.INDIVIDUAL = 'N') THEN
BEGIN
EXECUTE PROCEDURE CALC_EAN13(NEW.BARRA)
RETURNING_VALUES :TEMP_EAN;
IF (NEW.BARRA <> TEMP_EAN) THEN
EXCEPTION PRODUTO_BARRA;
END
IF ((NEW.PRECOCUSTO < 0) OR (NEW.PRECOVENDA < 0)) THEN
EXCEPTION VALOR_ZERO;
IF (NEW.PRECOCUSTO > NEW.PRECOVENDA) THEN
EXCEPTION PRECOCUSTO_MAIOR;
IF (NEW.PESO IS NULL) THEN
NEW.PESO = 0;
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger produtos_margem_ins for produtos
inactive before insert position 200
AS
BEGIN

  IF (NEW.CAIXA_ITENS IS NULL) THEN
    NEW.CAIXA_ITENS = 1;

  /* MARGEM */
  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END ELSE NEW.PRECOTOTAL = NEW.PRECOSERVICO + NEW.PRECOVENDA;
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger verifica_barra_upd for produtos
inactive before update position 0
AS
DECLARE VARIABLE TEMP_EAN VARCHAR(13);
BEGIN
  IF (NEW.INDIVIDUAL = 'N') THEN
    BEGIN
      EXECUTE PROCEDURE CALC_EAN13(NEW.BARRA) RETURNING_VALUES :TEMP_EAN;
      IF (NEW.BARRA <> TEMP_EAN) THEN EXCEPTION PRODUTO_BARRA;
    END
  IF ((NEW.PRECOCUSTO < 0) OR (NEW.PRECOVENDA < 0)) THEN EXCEPTION VALOR_ZERO;
  IF (NEW.PESO IS NULL) THEN NEW.PESO = 0;
--   IF (NEW.PRECOCUSTO > NEW.PRECOVENDA) THEN
--      EXCEPTION PRECOCUSTO_MAIOR;
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger produtos_margem_upd for produtos
inactive before update position 200
AS
BEGIN

  IF (NEW.CAIXA_ITENS IS NULL) THEN
    NEW.CAIXA_ITENS = 1;

  /* MARGEM */
  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END ELSE NEW.PRECOTOTAL = NEW.PRECOSERVICO + NEW.PRECOVENDA;

END^

SET TERM ; ^

ALTER TABLE PRODUTOS ADD SITTRIBU4 STR05;

UPDATE PRODUTOS SET SITTRIBU4 = SITTRIBU;

SET TERM ^ ;

CREATE OR ALTER procedure SITTRIBUICMS (
    CODPRODUTO integer,
    SITTRIBUTARIA char(3),
    ICMSVENDA decimal(9,4),
    CODEMPRESA integer)
as
BEGIN

  /* ATUALIZO O TEMPITENS */
  UPDATE
    TEMPITENS
  SET
    TEMPITENS.SITTRIBU = :SITTRIBUTARIA,
    TEMPITENS.ICMSVENDA = :ICMSVENDA
  WHERE
    TEMPITENS.CODPRODUTO = :CODPRODUTO;

  /* ATUALIZO O INDIVIDUAIS */
  UPDATE
    INDIVIDUAIS
  SET
    INDIVIDUAIS.ICMSVENDA = :ICMSVENDA
  WHERE
    INDIVIDUAIS.CODPRODUTO = :CODPRODUTO AND
    INDIVIDUAIS.CODEMPRESA = :CODEMPRESA;

  /* ATUALIZO O PRODUTO
  UPDATE
    PRODUTOS
  SET
    PRODUTOS.SITTRIBU = :SITTRIBUTARIA,
    PRODUTOS.ICMS = :ICMSVENDA
  WHERE
    PRODUTOS.CODIGO = :CODPRODUTO; */

END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER PROCEDURE VENDA_ABRE(
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
    FRETE NUMERIC(14,3),
    TOTAL NUMERIC(14,3),
    I01_CODBARRA VARCHAR(14),
    I01_QUANTIDADE NUMERIC(14,3),
    I01_VALOR NUMERIC(14,3),
    I01_DESCONTO NUMERIC(14,3),
    I01_ICMS NUMERIC(14,3),
    I01_ICMSCOMPRA NUMERIC(14,3),
    I01_IPI NUMERIC(14,3),
    I01_SITTRIBU CHAR(3),
    I02_CODBARRA VARCHAR(14),
    I02_QUANTIDADE NUMERIC(14,3),
    I02_VALOR NUMERIC(14,3),
    I02_DESCONTO NUMERIC(14,3),
    I02_ICMS NUMERIC(14,4),
    I02_ICMSCOMPRA NUMERIC(14,3),
    I02_IPI NUMERIC(14,3),
    I02_SITTRIBU CHAR(3),
    I03_CODBARRA VARCHAR(14),
    I03_QUANTIDADE NUMERIC(14,3),
    I03_VALOR NUMERIC(14,3),
    I03_DESCONTO NUMERIC(14,3),
    I03_ICMS NUMERIC(14,3),
    I03_ICMSCOMPRA NUMERIC(14,3),
    I03_IPI NUMERIC(14,3),
    I03_SITTRIBU CHAR(3))
RETURNS (
    RE_MOVIMENTO INTEGER,
    RE_01 INTEGER,
    RE_02 INTEGER,
    RE_03 INTEGER)
AS
 /*$$IBE$$ declare variable TESTE integer;
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
declare variable CODCONSUMIDOR integer; $$IBE$$*/ 
BEGIN

  /* SE FOR NULO, É VENDA */ /*$$IBE$$ 
  IF (PROCESSO IS NULL) THEN
    PROCESSO = 'VEN';

  IF (FRETE IS NULL) THEN
    FRETE = 0;

   $$IBE$$*/ /* ZERAMENTO DOS RETORNOS */ /*$$IBE$$ 
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

   $$IBE$$*/ /* PEGO A CONDICAO DE PAGAMENTO */ /*$$IBE$$ 
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

   $$IBE$$*/ /* VERIFICACAO DE CONSUMIDOR */ /*$$IBE$$ 
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

   $$IBE$$*/ /* CONSUMIDOR SÓ PODE SER A VISTA */ /*$$IBE$$ 
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

   $$IBE$$*/ /* É VENDA? */ /*$$IBE$$ 
  IF ((PROCESSO = 'VEN') OR (PROCESSO = 'OSA')) THEN
   BEGIN

      $$IBE$$*/ /* BLOQUEIOS DO CLIENTE */ /*$$IBE$$ 
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

      $$IBE$$*/ /* CLIENTE É BLOQUEADO? */ /*$$IBE$$ 
     IF (TIPO_BLOQUEIO = 'B') THEN
       EXCEPTION ERRO 'PESSOA PERMANENTEMENTE BLOQUEADA';

      $$IBE$$*/ /* DEVO CALCULAR OUTROS BLOQUEIOS? */ /*$$IBE$$ 
     IF ((TIPO_BLOQUEIO = 'A') AND (UDF_TRIM(CONDICAO) <> '0/')) THEN
      BEGIN

         $$IBE$$*/ /* TEM IMPEDIMENTOS? */ /*$$IBE$$ 
        IF (TIPO_IMPEDIMENTO <> 'N') THEN
          EXCEPTION ERRO 'PESSOA TEM IMPEDIMENTOS NO CADASTRO';

         $$IBE$$*/ /* LIMITE DESTA COMPRA */ /*$$IBE$$ 
        IF (LIMITE < TOTAL) THEN
          EXCEPTION ERRO 'OPERAÇÃO EXCEDE O LIMITE DE CRÉDITO DA PESSOA';

         $$IBE$$*/ /* LIMITE DE CRÉDITO NO FINANCEIRO */ /*$$IBE$$ 
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

         $$IBE$$*/ /* DATA EM ABERTO */ /*$$IBE$$ 
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

   $$IBE$$*/ /* ABRO O MOVIMENTO - PRIMEIRA PASSAGEM */ /*$$IBE$$ 
  IF ((CODMOVIMENTO > 0) AND (PASSAGEM = 1)) THEN
   BEGIN

      $$IBE$$*/ /* VERIFICO SE A VENDA JÁ EXISTE */ /*$$IBE$$ 
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

      $$IBE$$*/ /* SE JÁ EXISTIR ATUALIZO A VENDA */ /*$$IBE$$ 
     IF (TESTE > 0) THEN
      BEGIN

         $$IBE$$*/ /* EXCLUSÃO DOS ITENS DA VENDA */ /*$$IBE$$ 
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

         $$IBE$$*/ /* APAGO OS ITENS DO ORÇAMENTO */ /*$$IBE$$ 
        IF ((PROCESSO = 'ORC') OR (PROCESSO = 'COM') OR (PROCESSO = 'PRC')) THEN
         BEGIN
           DELETE FROM
             TEMPITENS
           WHERE
             CODMOVIMENTO = :CODMOVIMENTO;
         END

         $$IBE$$*/ /* ATUALIZO OS DADOS DO CABEÇALHO DO MOVIMENTO */ /*$$IBE$$ 
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

         $$IBE$$*/ /* VENDA */ /*$$IBE$$ 
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

         $$IBE$$*/ /* ORÇAMENTO */ /*$$IBE$$ 
        IF (PROCESSO = 'ORC') THEN
         BEGIN
           MOV_ES = 0;
           MOV_TIPO = 1;
         END

         $$IBE$$*/ /* COMPRA */ /*$$IBE$$ 
        IF (PROCESSO = 'COM') THEN
         BEGIN
           MOV_ES = 1;
           MOV_TIPO = 1;
         END

         $$IBE$$*/ /* PRODUÇÃO COMPRA */ /*$$IBE$$ 
        IF (PROCESSO = 'PRC') THEN
         BEGIN
           MOV_ES = 1;
           MOV_TIPO = 4;
         END

         $$IBE$$*/ /* PRODUÇÃO VENDA */ /*$$IBE$$ 
        IF (PROCESSO = 'PRV') THEN
         BEGIN
           MOV_ES = 2;
           MOV_TIPO = 4;
         END

         $$IBE$$*/ /* INICIO O MOVIMENTO */ /*$$IBE$$ 
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
            'N',                    $$IBE$$*/ /* ICMSSIMPLES     */ /*$$IBE$$ 
            0,                      $$IBE$$*/ /* ICMSSIMPLESALIQ */ /*$$IBE$$ 
            0,                      $$IBE$$*/ /* ISSALIQ         */ /*$$IBE$$ 
            CURRENT_TIMESTAMP,
            0,
            0,
            0,
            'N',
            'N',
            :CODEMPRESA,
            0,
            'N',                    $$IBE$$*/ /* ECF             */ /*$$IBE$$ 
            99,                     $$IBE$$*/ /* OSTIPO          */ /*$$IBE$$ 
            0,
            'N',
            :CODRESPONSAVEL,
            :CODRESPONSAVEL,
            :CODVENDEDOR,
            :CODHISTORICOPAG,
            1,
            :CONDICAO,
            1,                      $$IBE$$*/ /* CODCENTRO       */ /*$$IBE$$ 
            'F',                    $$IBE$$*/ /* COMIS CALCULO   */ /*$$IBE$$ 
            0,                      $$IBE$$*/ /* COMIS PROD      */ /*$$IBE$$ 
            0,                      $$IBE$$*/ /* COMIS PECA      */ /*$$IBE$$ 
            0,                      $$IBE$$*/ /* COMIS SERV      */ /*$$IBE$$ 
            :CODCONDPAG,
            :NUMDOC,
            :DATADOC,
            :TIPODOC,
            :CODCOMPRA);

      END

   END

   $$IBE$$*/ /* SE NÃO HOUVER MOVIMENTO, ABORTO */ /*$$IBE$$ 
  IF (CODMOVIMENTO = 0) THEN
    EXIT;

   $$IBE$$*/ /* SE DEU ERRO PASSO AOS ITENS */ /*$$IBE$$ 
  IF (RE_MOVIMENTO = 0) THEN
   BEGIN

      $$IBE$$*/ /*   V E N D A   */ /*$$IBE$$ 
     IF ((PROCESSO = 'VEN') OR (PROCESSO = 'PRV') OR (PROCESSO = 'OSA')) THEN
      BEGIN

         $$IBE$$*/ /******************************************************/
        /* ITEM 01                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_01 = 0;
        IF (I01_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             ITVENDA_GRAVA(
               :I01_CODBARRA,
               :I01_QUANTIDADE,
               :I01_VALOR,
               :I01_DESCONTO,
               :I01_ICMS,
               :CODMOVIMENTO);

         END

         $$IBE$$*/ /******************************************************/
        /* ITEM 02                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_02 = 0;
        IF (I02_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             ITVENDA_GRAVA(
               :I02_CODBARRA,
               :I02_QUANTIDADE,
               :I02_VALOR,
               :I02_DESCONTO,
               :I02_ICMS,
               :CODMOVIMENTO);

         END

         $$IBE$$*/ /******************************************************/
        /* ITEM 03                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_03 = 0;
        IF (I03_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             ITVENDA_GRAVA(
               :I03_CODBARRA,
               :I03_QUANTIDADE,
               :I03_VALOR,
               :I03_DESCONTO,
               :I03_ICMS,
               :CODMOVIMENTO);

         END

         $$IBE$$*/ /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/ /*$$IBE$$ 
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

      END  $$IBE$$*/ /* VENDA */

     /*   O R C A M E N T O   */ /*$$IBE$$ 
     IF (PROCESSO = 'ORC') THEN
      BEGIN

         $$IBE$$*/ /******************************************************/
        /* ITEM 01                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_01 = 0;
        IF (I01_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* CODIGO DO ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

            $$IBE$$*/ /* CODIGO DO PRODUTO */ /*$$IBE$$ 
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I01_CODBARRA
           INTO
             :CODPRODUTO;

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
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

         $$IBE$$*/ /******************************************************/
        /* ITEM 02                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_02 = 0;
        IF (I02_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* CODIGO DO ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

            $$IBE$$*/ /* CODIGO DO PRODUTO */ /*$$IBE$$ 
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I02_CODBARRA
           INTO
             :CODPRODUTO;

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
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

         $$IBE$$*/ /******************************************************/
        /* ITEM 03                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_03 = 0;
        IF (I03_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* CODIGO DO ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

            $$IBE$$*/ /* CODIGO DO PRODUTO */ /*$$IBE$$ 
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I03_CODBARRA
           INTO
             :CODPRODUTO;

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
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

         $$IBE$$*/ /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/ /*$$IBE$$ 
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

      END  $$IBE$$*/ /* ORÇAMENTO */

     /*   C O M P R A    O U    P R O D U Ç Ã O  */ /*$$IBE$$ 
     IF ((PROCESSO = 'COM') OR (PROCESSO = 'PRC')) THEN
      BEGIN

         $$IBE$$*/ /******************************************************/
        /* ITEM 01                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_01 = 0;
        IF (I01_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* CODIGO DO ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

            $$IBE$$*/ /* CODIGO DO PRODUTO */ /*$$IBE$$ 
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I01_CODBARRA
           INTO
             :CODPRODUTO;

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
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

            $$IBE$$*/ /* ACERTO O ESTOQUE */ /*$$IBE$$ 
           EXECUTE PROCEDURE SITTRIBUICMS(:CODPRODUTO, :I01_SITTRIBU, :I01_ICMS, :CODEMPRESA);

         END

         $$IBE$$*/ /******************************************************/
        /* ITEM 02                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_02 = 0;
        IF (I02_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* CODIGO DO ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

            $$IBE$$*/ /* CODIGO DO PRODUTO */ /*$$IBE$$ 
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I02_CODBARRA
           INTO
             :CODPRODUTO;

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
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

            $$IBE$$*/ /* ACERTO O ESTOQUE */ /*$$IBE$$ 
           EXECUTE PROCEDURE SITTRIBUICMS(:CODPRODUTO, :I02_SITTRIBU, :I02_ICMS, :CODEMPRESA);

         END

         $$IBE$$*/ /******************************************************/
        /* ITEM 03                                            */
        /******************************************************/ /*$$IBE$$ 
        RE_03 = 0;
        IF (I03_QUANTIDADE > 0) THEN
         BEGIN

            $$IBE$$*/ /* CODIGO DO ITEM */ /*$$IBE$$ 
           EXECUTE PROCEDURE
             SEQ_OBTER('TEMPITENS')
           RETURNING_VALUES
             :TEMP_CODIGO;

            $$IBE$$*/ /* CODIGO DO PRODUTO */ /*$$IBE$$ 
           SELECT FIRST 1
             CODIGO
           FROM
             PRODUTOS
           WHERE
             BARRA = :I03_CODBARRA
           INTO
             :CODPRODUTO;

            $$IBE$$*/ /* VENDO O ITEM */ /*$$IBE$$ 
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

            $$IBE$$*/ /* ACERTO O ESTOQUE */ /*$$IBE$$ 
           EXECUTE PROCEDURE SITTRIBUICMS(:CODPRODUTO, :I03_SITTRIBU, :I03_ICMS, :CODEMPRESA);

         END

         $$IBE$$*/ /******************************************************/
        /* TOTAIS                                             */
        /******************************************************/ /*$$IBE$$ 
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

      END  $$IBE$$*/ /* COMPRA OU PRODUÇÃO */

     /* ATUALIZO OS TOTAIS */ /*$$IBE$$ 
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

 $$IBE$$*/ SUSPEND;
END^

SET TERM ; ^

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
    FRETE NUMERIC(14,3),
    TOTAL NUMERIC(14,3),
    I01_CODBARRA VARCHAR(14),
    I01_QUANTIDADE NUMERIC(14,3),
    I01_VALOR NUMERIC(14,3),
    I01_DESCONTO NUMERIC(14,3),
    I01_ICMS NUMERIC(14,3),
    I01_ICMSCOMPRA NUMERIC(14,3),
    I01_IPI NUMERIC(14,3),
    I01_SITTRIBU CHAR(3),
    I02_CODBARRA VARCHAR(14),
    I02_QUANTIDADE NUMERIC(14,3),
    I02_VALOR NUMERIC(14,3),
    I02_DESCONTO NUMERIC(14,3),
    I02_ICMS NUMERIC(14,4),
    I02_ICMSCOMPRA NUMERIC(14,3),
    I02_IPI NUMERIC(14,3),
    I02_SITTRIBU CHAR(3),
    I03_CODBARRA VARCHAR(14),
    I03_QUANTIDADE NUMERIC(14,3),
    I03_VALOR NUMERIC(14,3),
    I03_DESCONTO NUMERIC(14,3),
    I03_ICMS NUMERIC(14,3),
    I03_ICMSCOMPRA NUMERIC(14,3),
    I03_IPI NUMERIC(14,3),
    I03_SITTRIBU CHAR(3))
RETURNS (
    RE_MOVIMENTO INTEGER,
    RE_01 INTEGER,
    RE_02 INTEGER,
    RE_03 INTEGER)
AS
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

ALTER TABLE PRODUTOS DROP SITTRIBU;

ALTER TABLE PRODUTOS ADD SITTRIBU STR05;

UPDATE PRODUTOS SET SITTRIBU = SITTRIBU4;

ALTER TABLE PRODUTOS DROP SITTRIBU4;

SET TERM ^ ;

CREATE OR ALTER trigger tempitens_befins01 for tempitens
inactive before insert position 0
AS
DECLARE VARIABLE ES INTEGER;
DECLARE VARIABLE BARRA CHAR(14);
DECLARE VARIABLE TIPO INTEGER;
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

     SELECT
       BARRA
     FROM
       PRODUTOS
     WHERE
       CODIGO = NEW.CODPRODUTO
     INTO
       :BARRA;
    
     IF (BARRA = '0000000000000') THEN
       EXCEPTION PRODUTO_SEM_BARRA;

   END
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tempitens_befupd01 for tempitens
inactive before update position 0
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

END^

SET TERM ; ^


/* campo COM 4 */
ALTER TABLE TEMPITENS ALTER COLUMN SITTRIBU TYPE STR05;

SET TERM ^ ;

CREATE OR ALTER trigger tempitens_befins01 for tempitens
active before insert position 0
AS
DECLARE VARIABLE ES INTEGER;
DECLARE VARIABLE BARRA CHAR(14);
DECLARE VARIABLE TIPO INTEGER;
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

     SELECT
       BARRA
     FROM
       PRODUTOS
     WHERE
       CODIGO = NEW.CODPRODUTO
     INTO
       :BARRA;
    
     IF (BARRA = '0000000000000') THEN
       EXCEPTION PRODUTO_SEM_BARRA;

   END
END^

SET TERM ; ^


SET TERM ^ ;

CREATE OR ALTER trigger tempitens_befupd01 for tempitens
active before update position 0
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

END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger verifica_barra_ins for produtos
active before insert position 0
AS
DECLARE VARIABLE TEMP_EAN VARCHAR(13);
BEGIN
IF (NEW.INDIVIDUAL = 'N') THEN
BEGIN
EXECUTE PROCEDURE CALC_EAN13(NEW.BARRA)
RETURNING_VALUES :TEMP_EAN;
IF (NEW.BARRA <> TEMP_EAN) THEN
EXCEPTION PRODUTO_BARRA;
END
IF ((NEW.PRECOCUSTO < 0) OR (NEW.PRECOVENDA < 0)) THEN
EXCEPTION VALOR_ZERO;
IF (NEW.PRECOCUSTO > NEW.PRECOVENDA) THEN
EXCEPTION PRECOCUSTO_MAIOR;
IF (NEW.PESO IS NULL) THEN
NEW.PESO = 0;
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger produtos_margem_ins for produtos
active before insert position 200
AS
BEGIN

  IF (NEW.CAIXA_ITENS IS NULL) THEN
    NEW.CAIXA_ITENS = 1;

  /* MARGEM */
  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END ELSE NEW.PRECOTOTAL = NEW.PRECOSERVICO + NEW.PRECOVENDA;
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger verifica_barra_upd for produtos
active before update position 0
AS
DECLARE VARIABLE TEMP_EAN VARCHAR(13);
BEGIN
  IF (NEW.INDIVIDUAL = 'N') THEN
    BEGIN
      EXECUTE PROCEDURE CALC_EAN13(NEW.BARRA) RETURNING_VALUES :TEMP_EAN;
      IF (NEW.BARRA <> TEMP_EAN) THEN EXCEPTION PRODUTO_BARRA;
    END
  IF ((NEW.PRECOCUSTO < 0) OR (NEW.PRECOVENDA < 0)) THEN EXCEPTION VALOR_ZERO;
  IF (NEW.PESO IS NULL) THEN NEW.PESO = 0;
--   IF (NEW.PRECOCUSTO > NEW.PRECOVENDA) THEN
--      EXCEPTION PRECOCUSTO_MAIOR;
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger produtos_margem_upd for produtos
active before update position 200
AS
BEGIN

  IF (NEW.CAIXA_ITENS IS NULL) THEN
    NEW.CAIXA_ITENS = 1;

  /* MARGEM */
  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END ELSE NEW.PRECOTOTAL = NEW.PRECOSERVICO + NEW.PRECOVENDA;

END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER procedure SITTRIBUICMS (
    CODPRODUTO integer,
    SITTRIBUTARIA char(5),
    ICMSVENDA decimal(9,4),
    CODEMPRESA integer)
as
BEGIN

  /* ATUALIZO O TEMPITENS */
  UPDATE
    TEMPITENS
  SET
    TEMPITENS.SITTRIBU = :SITTRIBUTARIA,
    TEMPITENS.ICMSVENDA = :ICMSVENDA
  WHERE
    TEMPITENS.CODPRODUTO = :CODPRODUTO;

  /* ATUALIZO O INDIVIDUAIS */
  UPDATE
    INDIVIDUAIS
  SET
    INDIVIDUAIS.ICMSVENDA = :ICMSVENDA
  WHERE
    INDIVIDUAIS.CODPRODUTO = :CODPRODUTO AND
    INDIVIDUAIS.CODEMPRESA = :CODEMPRESA;

  /* ATUALIZO O PRODUTO */
  UPDATE
    PRODUTOS
  SET
    PRODUTOS.SITTRIBU = :SITTRIBUTARIA,
    PRODUTOS.ICMS = :ICMSVENDA
  WHERE
    PRODUTOS.CODIGO = :CODPRODUTO;

END^

SET TERM ; ^

