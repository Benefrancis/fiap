--------------------------------------------------------
--  DDL for Table FUNCIONARIO
--------------------------------------------------------

  CREATE TABLE "FUNCIONARIO" 
   (	"ID" NUMBER(19,0), 
		"NOME" VARCHAR2(255 BYTE), 
		"CHEFIA" CHAR(1 BYTE)
   );

   COMMENT ON COLUMN "FUNCIONARIO"."CHEFIA" IS 'Aceita apenas os caracteres S OU N';
--------------------------------------------------------
--  DDL for Index FUNCIONARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FUNCIONARIO_PK" ON "FUNCIONARIO" ("ID");
  
--------------------------------------------------------
--  Constraints for Table FUNCIONARIO
--------------------------------------------------------

  ALTER TABLE "FUNCIONARIO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "FUNCIONARIO" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "FUNCIONARIO" ADD CONSTRAINT "FUNCIONARIO_PK" PRIMARY KEY ("ID");


--------------------------------------------------------
--  DDL for Table VAGA_GARAGEM
--------------------------------------------------------

  CREATE TABLE "VAGA_GARAGEM" 
   (	"ID" NUMBER(19,0), 
		"NUMERO" VARCHAR2(4 BYTE), 
		"DISPONIVEL" CHAR(1 BYTE)
   );

   COMMENT ON COLUMN "VAGA_GARAGEM"."DISPONIVEL" IS 'Aceita apenas os caracteres S ou N';
--------------------------------------------------------
--  DDL for Index VAGA_GARAGEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VAGA_GARAGEM_PK" ON "VAGA_GARAGEM" ("ID");
--------------------------------------------------------
--  Constraints for Table VAGA_GARAGEM
--------------------------------------------------------

  ALTER TABLE "VAGA_GARAGEM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "VAGA_GARAGEM" MODIFY ("NUMERO" NOT NULL ENABLE);
  ALTER TABLE "VAGA_GARAGEM" MODIFY ("DISPONIVEL" NOT NULL ENABLE);
  ALTER TABLE "VAGA_GARAGEM" ADD CONSTRAINT "VAGA_GARAGEM_PK" PRIMARY KEY ("ID");


--------------------------------------------------------
--  DDL for Table SORTE_VAGA_GARAGEM
--------------------------------------------------------

  CREATE TABLE "SORTE_VAGA_GARAGEM" 
   (	"ANO" NUMBER(4,0), 
		"MES" NUMBER(2,0), 
		"FUNCIONARIO_ID" NUMBER(19,0), 
		"VAGA_ID" NUMBER(19,0)
   );
   
--------------------------------------------------------
--  DDL for Index SORTE_VAGA_GARAGEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SORTE_VAGA_GARAGEM_PK" ON "SORTE_VAGA_GARAGEM" ("ANO", "MES", "FUNCIONARIO_ID");
  
--------------------------------------------------------
--  Constraints for Table SORTE_VAGA_GARAGEM
--------------------------------------------------------

  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("ANO" NOT NULL ENABLE);
  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("MES" NOT NULL ENABLE);
  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("FUNCIONARIO_ID" NOT NULL ENABLE);
  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("VAGA_ID" NOT NULL ENABLE);
  ALTER TABLE "SORTE_VAGA_GARAGEM" ADD CONSTRAINT "SORTE_VAGA_GARAGEM_PK" PRIMARY KEY ("ANO", "MES", "FUNCIONARIO_ID");

--------------------------------------------------------
--  Ref Constraints for Table SORTE_VAGA_GARAGEM
--------------------------------------------------------

  ALTER TABLE "SORTE_VAGA_GARAGEM" ADD CONSTRAINT "FK_SVAGA" FOREIGN KEY ("VAGA_ID")
	  REFERENCES "VAGA_GARAGEM" ("ID") ENABLE;
  ALTER TABLE "SORTE_VAGA_GARAGEM" ADD CONSTRAINT "FK_SFUNC" FOREIGN KEY ("FUNCIONARIO_ID")
	  REFERENCES "FUNCIONARIO" ("ID") ENABLE;




Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('1','BENEFRANCIS','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('2','EDILAINE','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('3','BRUNO SUDRÉ','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('4','DAVI LUCCA','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('5','ERICK SUDRÉ','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('6','BRUNA SCARLET','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('7','EDIMEIA SOBRINHO','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('8','LUIZ VANDERLEY PITH BULL','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('9','GILMAR GONÇALVES','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('10','VICTOR GUILHERME','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('11','ELLEN CRISTINA','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('12','MARIANA SUDRÉ','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('13','GIOVANA LUNA','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('14','STHEPANY KAREN','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('15','LUCIANA CORDEIRO','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('16','RAFAEL LUNA','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('17','LUIZ CARLOS CORREIA MOURA','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('18','PAULO HENRIQUE DE OLIVEIRA','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('19','MIGUEL SUDRÉ','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('20','LUCAS GONÇALVES','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('21','JOSÉ SOARES','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('22','RONIE VON','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('23','SERGIO GROISMAN','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('24','LUIZ INACIO DA SILVA','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('25','JAIR MESSIAS','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('26','SERGIO CABRAL','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('28','MARIA RAQUEL DO NASCIMENTO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('29','TADEU EDUARDO NASCIMENTO SILVA','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('30','SELMA REGINA MORAES','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('31','MARIA JOAQUINA ','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('32','CIRILO COELHO','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('33','MARIANA BOTELHO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('34','SERGIO RAMALHO','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('27','JENNIFER SENA DO NASCIMENTO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('35','BRENDA LINDSAY DO NASCIMENTO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('36','DAVID DO NASCIMENTO ','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('37','MARIA EVARISTA DO NASCIMENTO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('38','JOSÉ RONALDO DO NASCIMENTO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('39','JONATAN DO NASCIMENTO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('40','JESSICA DO NASCIMENTO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('41','WILLIAN BONER','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('42','FATIMA BERNARDES','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('43','MARCOS SUDRE','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('44','PAULO GONÇALVES SUDRE','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('45','LUIZ VANDERLEY ASSIS SOBRINHO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('46','GARDSON ROMANTICO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('47','ELENICE SUDRE','S');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('48','LUIZA DOCINHO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('49','LUANA LORÃO','N');
Insert into FUNCIONARIO (ID,NOME,CHEFIA) values ('50','JANAINA SUDRÉ','N');





Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('1','10A','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('2','11A','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('3','12A','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('4','13A','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('5','14A','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('6','15A','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('7','16B','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('8','17B','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('9','18B','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('10','19B','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('11','20B','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('12','21C','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('13','22C','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('14','23C','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('15','24C','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('16','25C','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('17','26C','S');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('18','27C','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('19','28C','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('20','29C','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('21','30C','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('22','31D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('23','32D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('24','33D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('25','34D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('26','35D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('27','36D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('28','37D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('29','38D','N');
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('30','39D','S');



CREATE SEQUENCE  "SQ_SORTE_VAGA_GARAGEM"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;