/*
** ALTERA��O NA CHAVE PRIM�RIA DA PESSOA
*/

ALTER TABLE SISCONFIG DROP CONSTRAINT SISCONFIG_FK01;

ALTER TABLE SISCONFIG
ADD CONSTRAINT SISCONFIG_FK01
FOREIGN KEY (CODCLIENTE)
REFERENCES CLIENTES(CODIGO)
ON UPDATE CASCADE;

ALTER TABLE SISCONFIG DROP CONSTRAINT SISCONFIG_FK02;

ALTER TABLE SISCONFIG
ADD CONSTRAINT SISCONFIG_FK02
FOREIGN KEY (CODCLIENTE_PADRAO)
REFERENCES CLIENTES(CODIGO)
ON UPDATE CASCADE;

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (354, CURRENT_TIMESTAMP);
COMMIT;

