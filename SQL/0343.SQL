/*
** MULTIPLOS DOCUMENTOS DO FINANCEIRO COM NUMDOC, TIPODOC E DATADOC
*/

SET TERM ^ ;

ALTER TRIGGER PAGAMENTOS_AI0
ACTIVE AFTER INSERT POSITION 0
AS
DECLARE VARIABLE DIAS INTEGER;
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE NUMERO INTEGER;
BEGIN

  /* MULTIPLOS LANCAMENTOS */
  IF ((NEW.CONDPAG IS NOT NULL) AND (NEW.CODMOVIMENTO IS NULL) AND (NEW.PAGO = 0)) THEN
   BEGIN

     NUMERO = 1;

     /* QUANTOS LANCAMENTOS? */
     FOR
     SELECT
       DIAS
     FROM
       PARCELAS(NEW.CONDPAG)
     INTO
       :DIAS
     DO
     BEGIN

       EXECUTE PROCEDURE
         SEQ_OBTER('PAGAMENTOS')
       RETURNING_VALUES
         :CODIGO;

       NUMERO = NUMERO + 1;

       INSERT INTO
         PAGAMENTOS (
           CODIGO,
           NUMERO,
           DESCRICAO,
           ES,
           DATACADAST,
           VALOR,
           CODDOCUMENTO,
           INFODOC,
           EXTERNO,
           PAGO,
           DESCONTO,
           MULTA_JUROS,
           DATAVENCIMENTO,
           STATUS,
           SALDOANT,
           SALDOATU,
           CODCONTA,
           NOMEUSUARIO,
           CODEMPRESA,
           VALOR_COMISSAO,
           TIPO_PAG,
           TIPO_DOC,
           CH_BANCO,
           CH_AGENCIA,
           CH_CONTA,
           CH_SERIE,
           CH_NUMERO,
           CH_NOME,
           CH_DOC,
           CODCENTRO,
           CODCLIENTE,
           CODPLANO,
           CODHISTORICO,
           NUMDOC,
           DATADOC,
           TIPODOC,
           LOG_USUARIO,
           LOG_TIPO,
           LOG_MAQUINA,
           LOG_DATAREMOTO)
         VALUES (
           :CODIGO,
           :NUMERO,
           NEW.DESCRICAO,
           NEW.ES,
           NEW.DATACADAST,
           NEW.VALOR,
           NEW.CODDOCUMENTO,
           NEW.INFODOC,
           NEW.EXTERNO,
           NEW.PAGO,
           NEW.DESCONTO,
           NEW.MULTA_JUROS,
           NEW.DATAVENCIMENTO + :DIAS,
           NEW.STATUS,
           NEW.SALDOANT,
           NEW.SALDOATU,
           NEW.CODCONTA,
           NEW.NOMEUSUARIO,
           NEW.CODEMPRESA,
           NEW.VALOR_COMISSAO,
           NEW.TIPO_PAG,
           NEW.TIPO_DOC,
           NEW.CH_BANCO,
           NEW.CH_AGENCIA,
           NEW.CH_CONTA,
           NEW.CH_SERIE,
           NEW.CH_NUMERO,
           NEW.CH_NOME,
           NEW.CH_DOC,
           NEW.CODCENTRO,
           NEW.CODCLIENTE,
           NEW.CODPLANO,
           NEW.CODHISTORICO,
           NEW.NUMDOC,
           NEW.DATADOC,
           NEW.TIPODOC,
           NEW.LOG_USUARIO,
           NEW.LOG_TIPO,
           NEW.LOG_MAQUINA,
           NEW.LOG_DATAREMOTO);

     END
   END
END
^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (343, CURRENT_TIMESTAMP);
COMMIT;

