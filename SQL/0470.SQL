/*
** AUDITORIA CENTRALIZADA
*/

CREATE TABLE AUDITORIA (
    ID INTEIRO_VALIDO NOT NULL,
    CODIGO INTEIRO_VALIDO,
    TABELA STR30_VALIDO,
    CAMPO STR30_VALIDO,
    ANTERIOR STR60,
    NOVO STR60,
    USUARIO STR60,
    COMPUTADOR STR60,
    DATA DATA);

ALTER TABLE AUDITORIA
ADD CONSTRAINT PK_AUDITORIA
PRIMARY KEY (ID);

CREATE SEQUENCE GEN_AUDITORIA_ID;

ALTER SEQUENCE GEN_AUDITORIA_ID RESTART WITH 1;

SET TERM ^ ;

create trigger auditoria_bi for auditoria
active before insert position 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_auditoria_id,1);
end^

SET TERM ; ^

grant all ON AUDITORIA TO PUBLIC;

SET TERM ^ ;

CREATE OR ALTER trigger auditoria_bi for auditoria
active before insert position 0
as
begin
  if (new.id = 0) then
    new.id = gen_id(gen_auditoria_id,1);
end^

SET TERM ; ^



INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (470, CURRENT_TIMESTAMP);
COMMIT;
