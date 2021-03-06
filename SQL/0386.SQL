/*
** RELAT�RIO DE ATIVA�OES
*/

SET TERM ^ ;

ALTER PROCEDURE REL_ATIVACAO_ENTRADA 
RETURNS (
    CODEMPRESA INTEGER,
    RAZAOSOCIAL VARCHAR(60),
    DATA_ENTRADA DATE,
    NF_ENTRADA INTEGER,
    APARELHO VARCHAR(60),
    SERIE VARCHAR(20),
    SERIE2 VARCHAR(20),
    NUMERO_FONE VARCHAR(20),
    VALOR_TABELA NUMERIC(9,2),
    VALOR_PAGO NUMERIC(9,2),
    VALOR_CUSTO NUMERIC(9,2),
    REBATE CHAR(1),
    VALOR_REBATE NUMERIC(9,2),
    DATA_ATIVACAO DATE,
    OPERADORA VARCHAR(40),
    PLANO VARCHAR(40),
    CONTRATO VARCHAR(10),
    VOUCHER VARCHAR(20),
    TIPOATIVACAO CHAR(1))
AS
DECLARE VARIABLE CODINDIVIDUO INTEGER;
DECLARE VARIABLE CODMOVSAIDA INTEGER;
BEGIN

  /* SELECIONO AS ATIVA��ES */
  FOR
  SELECT
    ID.APARELO,
    ID.SERIE,
    ID.NUMERO_FONE,
    ID.REBATE,
    ID.CODIGO,
    ID.CODMOVSAIDA,
    ID.CODEMPRESA,
    ID.CONTRATO,
    ID.VOUCHER,
    ID.TIPOATIVACAO
  FROM
    INDIVIDUAIS ID
  WHERE
    ATIVACAO = 'S' AND
    VENDIDO = 'S' AND
    PS = 'P'
  INTO
    :APARELHO,
    :SERIE,
    :NUMERO_FONE,
    :REBATE,
    :CODINDIVIDUO,
    :CODMOVSAIDA,
    :CODEMPRESA,
    :CONTRATO,
    :VOUCHER,
    :TIPOATIVACAO
  DO
  BEGIN

    /* RAZAO SOCIAL DA EMPRESA */
    SELECT
      CL.RAZAOSOCIAL
    FROM
      CLIENTES CL
      JOIN SISCONFIG SI ON
        (SI.CODCLIENTE = CL.CODIGO)
    WHERE
      SI.CODIGO = :CODEMPRESA
    INTO
      :RAZAOSOCIAL;

    /* DADOS DA COMPRA E PRECO PAGO */
    SELECT
      ID.VALOR_VENDA,
      ID.VALOR_PAGO,
      CAST(MO.NOTA_DATAEMISSAO AS DATE),
      MO.NOTA_NUMERO,
      OP.NOME,
      PL.NOME,
      ID.SERIE2,
      ID.CUSTO_PRODUTO
    FROM
      INDIVIDUAIS ID
      JOIN MOVIMENTOS MO ON
        (MO.CODIGO = ID.CODMOVENTRADA)
      JOIN OPERADORAS OP ON
        (OP.CODIGO = ID.CODOPERADORA)
      JOIN PLANOS PL ON
        (PL.CODIGO = ID.CODPLANO AND
         PL.CODOPERADORA = ID.CODOPERADORA)
    WHERE
      ID.CODIGO = :CODINDIVIDUO
    INTO
      :VALOR_TABELA,
      :VALOR_PAGO,
      :DATA_ENTRADA,
      :NF_ENTRADA,
      :OPERADORA,
      :PLANO,
      :SERIE2,
      :VALOR_CUSTO;

    /* DATA DA ATIVACAO */
    SELECT
      CAST(MO.DATAFECHAMENTO AS DATE)
    FROM
      MOVIMENTOS MO
    WHERE
      MO.CODIGO = :CODMOVSAIDA
    INTO
      :DATA_ATIVACAO;

    VALOR_REBATE = NULL;
    IF (REBATE = 'S') THEN
      VALOR_REBATE = VALOR_TABELA - VALOR_PAGO;

    /* RETORNO OS VALORES */
    SUSPEND;
  END

END
^

SET TERM ; ^

DROP PROCEDURE REL_ATIVACAO_REBATE6X;

DROP PROCEDURE REL_ATIVACAO_SIMPLES;

DROP PROCEDURE REL_ATIVACAO_VENDAPOS;

DROP PROCEDURE REL_ATIVACAO_VENDAPRE;

SET TERM ^ ;

ALTER PROCEDURE ATIVACAO_LER (
    CODMOVIMENTO INTEGER)
RETURNS (
    CODATIVACAO INTEGER,
    CODAPARELHO INTEGER,
    APARELHO VARCHAR(60),
    SERIE VARCHAR(30),
    SERIE2 VARCHAR(30),
    NUMERO VARCHAR(20),
    CODOPERADORA INTEGER,
    CODPLANO INTEGER,
    VALOR1 NUMERIC(9,2),
    VALOR2 NUMERIC(9,2),
    REBATE CHAR(1),
    CONTRATO VARCHAR(10),
    VOUCHER VARCHAR(20),
    TIPOATIVACAO CHAR(1))
AS
DECLARE VARIABLE DESCRICAO VARCHAR(60);
BEGIN
  /* APARELHO */
  SELECT FIRST 1
    ID.CODIGO,
    PO.CODIGO,
    ID.APARELO,
    PO.DESCRICAO,
    PO.PRECOVENDA,
    ID.VALOR_PAGO,
    ID.SERIE,
    ID.SERIE2,
    ID.NUMERO_FONE,
    ID.CODOPERADORA,
    ID.CODPLANO,
    ID.CONTRATO,
    ID.VOUCHER,
    ID.TIPOATIVACAO
  FROM
    INDIVIDUAIS ID
    JOIN PRODUTOS PO ON
      (PO.CODIGO = ID.CODPRODUTO)
    JOIN PRODUTOS SE ON
      (SE.CODIGO = PO.CODSERVICO)
  WHERE
    ID.CODMOVSAIDA = :CODMOVIMENTO AND
    ID.PS = 'P' AND
    ID.VENDIDO = 'S' AND
    ID.UNICO = 1 AND
    SE.ATIVACAO = 'S'
  INTO
    :CODATIVACAO,
    :CODAPARELHO,
    :APARELHO,
    :DESCRICAO,
    :VALOR1,
    :VALOR2,
    :SERIE,
    :SERIE2,
    :NUMERO,
    :CODOPERADORA,
    :CODPLANO,
    :CONTRATO,
    :VOUCHER,
    :TIPOATIVACAO;

  IF ((APARELHO IS NULL) AND (DESCRICAO IS NOT NULL)) THEN
    APARELHO = DESCRICAO;

  IF (VALOR1 <> VALOR2) THEN
    REBATE = 'S';
  ELSE
    REBATE = 'N';

  IF (CODATIVACAO IS NOT NULL) THEN
    SUSPEND;

END
^

SET TERM ; ^

SET TERM ^ ;

ALTER PROCEDURE ATIVACAO_GRAVAR (
    CODATIVACAO INTEGER,
    CODAPARELHO INTEGER,
    APARELHO VARCHAR(60),
    SERIE VARCHAR(30),
    SERIE2 VARCHAR(30),
    NUMERO VARCHAR(20),
    CODOPERADORA INTEGER,
    CODPLANO INTEGER,
    CONTRATO VARCHAR(10),
    VOUCHER VARCHAR(20),
    TIPOATIVACAO CHAR(1),
    REBATE CHAR(1))
AS
BEGIN
  IF (CODATIVACAO IS NOT NULL) THEN
    UPDATE
      INDIVIDUAIS ID
    SET
      ID.CODINDIVIDUO = :CODAPARELHO,
      ID.APARELO      = :APARELHO,
      ID.SERIE        = :SERIE,
      ID.SERIE2       = :SERIE2,
      ID.NUMERO_FONE  = :NUMERO,
      ID.CODOPERADORA = :CODOPERADORA,
      ID.CODPLANO     = :CODPLANO,
      ID.REBATE       = :REBATE,
      ID.CONTRATO     = :CONTRATO,
      ID.VOUCHER      = :VOUCHER,
      ID.TIPOATIVACAO = :TIPOATIVACAO,
      ID.ATIVACAO     = 'S'
    WHERE
      ID.CODIGO       = :CODATIVACAO;
END
^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (386, CURRENT_TIMESTAMP);
COMMIT;
