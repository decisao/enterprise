/*
** BLOQUEIOS DO FINANCEIRO NA ABERTURA DA VENDA II
*/

SET TERM ^ ;

ALTER PROCEDURE VENDA_FECHA (
    CODMOVIMENTO INTEGER,
    USUARIOFECHAMENTO VARCHAR(30),
    OBSERVACOES VARCHAR(254),
    CONDICOES1 VARCHAR(512),
    CONDICOES2 VARCHAR(512),
    OPCIONAIS VARCHAR(512))
RETURNS (
    RE_MOVIMENTO INTEGER)
AS
DECLARE VARIABLE TIPO INTEGER;
DECLARE VARIABLE ES INTEGER;
DECLARE VARIABLE FECHADO CHAR(1);
BEGIN

  RE_MOVIMENTO = 0;
  FECHADO = 'N';

  IF (USUARIOFECHAMENTO IS NULL) THEN
    USUARIOFECHAMENTO = '';

  /* LEIO O TIPO ATUAL */
  SELECT
    ES,
    TIPO
  FROM
    MOVIMENTOS
  WHERE
    CODIGO = :CODMOVIMENTO
  INTO
    :ES,
    :TIPO;

  IF (TIPO IN (1, 2, 5)) THEN
   BEGIN

     IF ((ES = 1) AND (TIPO = 1)) THEN
       FECHADO = 'S';

     IF ((ES = 2) AND (USUARIOFECHAMENTO > '')) THEN
      BEGIN

        IF (TIPO = 2) THEN
          TIPO = 3;
        ELSE
          TIPO = 6;

        FECHADO = 'S';

      END

     IF (RE_MOVIMENTO = 0) THEN
      BEGIN

        UPDATE
          MOVIMENTOS
        SET
          TIPO = :TIPO,
          USUARIOFECHAMENTO = :USUARIOFECHAMENTO,
          DATAFECHAMENTO = CURRENT_TIMESTAMP,
          OBSERVACOES = :OBSERVACOES,
          CONDICOES1 = :CONDICOES1,
          CONDICOES2 = :CONDICOES2,
          OPCIONAIS = :OPCIONAIS,
          FECHADO = :FECHADO
        WHERE
          CODIGO = :CODMOVIMENTO;

        /*WHEN ANY DO RE_MOVIMENTO = 1;*/

      END

   END

END
^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (381, CURRENT_TIMESTAMP);
COMMIT;
