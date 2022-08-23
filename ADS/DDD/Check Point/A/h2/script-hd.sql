--------------------------------------------------------
--  DDL for Table FUNCIONARIO
--------------------------------------------------------

  CREATE TABLE "FUNCIONARIO" 
   (	"ID" NUMBER(19,0), 
		"NOME" VARCHAR2(255), 
		"CHEFE" NUMBER(1)
   );

   COMMENT ON COLUMN "FUNCIONARIO"."CHEFE" IS 'Aceita apenas 1 OU 0';
--------------------------------------------------------
--  DDL for Index FUNCIONARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FUNCIONARIO_PK" ON "FUNCIONARIO" ("ID");
  
--------------------------------------------------------
--  Constraints for Table FUNCIONARIO
--------------------------------------------------------

  ALTER TABLE "FUNCIONARIO" MODIFY ("ID" NOT NULL );
  ALTER TABLE "FUNCIONARIO" MODIFY ("NOME" NOT NULL );
  ALTER TABLE "FUNCIONARIO" ADD CONSTRAINT "FUNCIONARIO_PK" PRIMARY KEY ("ID");


--------------------------------------------------------
--  DDL for Table VAGA_GARAGEM
--------------------------------------------------------

  CREATE TABLE "VAGA_GARAGEM" 
   (	"ID" NUMBER(19,0), 
		"NUMERO" VARCHAR2(4), 
		"DISPONIVEL" NUMBER(1)
   );

   COMMENT ON COLUMN "VAGA_GARAGEM"."DISPONIVEL" IS 'Aceita apenas os caracteres S ou N';
--------------------------------------------------------
--  DDL for Index VAGA_GARAGEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "VAGA_GARAGEM_PK" ON "VAGA_GARAGEM" ("ID");
--------------------------------------------------------
--  Constraints for Table VAGA_GARAGEM
--------------------------------------------------------

  ALTER TABLE "VAGA_GARAGEM" MODIFY ("ID" NOT NULL );
  ALTER TABLE "VAGA_GARAGEM" MODIFY ("NUMERO" NOT NULL );
  ALTER TABLE "VAGA_GARAGEM" MODIFY ("DISPONIVEL" NOT NULL );
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

  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("ANO" NOT NULL );
  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("MES" NOT NULL );
  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("FUNCIONARIO_ID" NOT NULL );
  ALTER TABLE "SORTE_VAGA_GARAGEM" MODIFY ("VAGA_ID" NOT NULL );
  ALTER TABLE "SORTE_VAGA_GARAGEM" ADD CONSTRAINT "SORTE_VAGA_GARAGEM_PK" PRIMARY KEY ("ANO", "MES", "FUNCIONARIO_ID");

--------------------------------------------------------
--  Ref Constraints for Table SORTE_VAGA_GARAGEM
--------------------------------------------------------

  ALTER TABLE "SORTE_VAGA_GARAGEM" ADD CONSTRAINT "FK_SVAGA" FOREIGN KEY ("VAGA_ID")
	  REFERENCES "VAGA_GARAGEM" ("ID") ;
  ALTER TABLE "SORTE_VAGA_GARAGEM" ADD CONSTRAINT "FK_SFUNC" FOREIGN KEY ("FUNCIONARIO_ID")
	  REFERENCES "FUNCIONARIO" ("ID") ;




Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('1','BENEFRANCIS',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('2','EDILAINE',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('3','BRUNO SUDRÉ',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('4','DAVI LUCCA',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('5','ERICK SUDRÉ',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('6','BRUNA SCARLET',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('7','EDIMEIA SOBRINHO',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('8','LUIZ VANDERLEY PITH BULL',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('9','GILMAR GONÇALVES',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('10','VICTOR GUILHERME',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('11','ELLEN CRISTINA',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('12','MARIANA SUDRÉ',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('13','GIOVANA LUNA',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('14','STHEPANY KAREN',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('15','LUCIANA CORDEIRO',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('16','RAFAEL LUNA',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('17','LUIZ CARLOS CORREIA MOURA',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('18','PAULO HENRIQUE DE OLIVEIRA',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('19','MIGUEL SUDRÉ',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('20','LUCAS GONÇALVES',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('21','JOSÉ SOARES',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('22','RONIE VON',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('23','SERGIO GROISMAN',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('24','LUIZ INACIO DA SILVA',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('25','JAIR MESSIAS',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('26','SERGIO CABRAL',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('28','MARIA RAQUEL DO NASCIMENTO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('29','TADEU EDUARDO NASCIMENTO SILVA',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('30','SELMA REGINA MORAES',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('31','MARIA JOAQUINA ',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('32','CIRILO COELHO',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('33','MARIANA BOTELHO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('34','SERGIO RAMALHO',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('27','JENNIFER SENA DO NASCIMENTO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('35','BRENDA LINDSAY DO NASCIMENTO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('36','DAVID DO NASCIMENTO ',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('37','MARIA EVARISTA DO NASCIMENTO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('38','JOSÉ RONALDO DO NASCIMENTO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('39','JONATAN DO NASCIMENTO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('40','JESSICA DO NASCIMENTO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('41','WILLIAN BONER',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('42','FATIMA BERNARDES',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('43','MARCOS SUDRE',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('44','PAULO GONÇALVES SUDRE',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('45','LUIZ VANDERLEY ASSIS SOBRINHO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('46','GARDSON ROMANTICO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('47','ELENICE SUDRE',1);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('48','LUIZA DOCINHO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('49','LUANA LORÃO',0);
Insert into FUNCIONARIO (ID,NOME,CHEFE) values ('50','JANAINA SUDRÉ',0);





Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('1','10A',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('2','11A',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('3','12A',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('4','13A',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('5','14A',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('6','15A',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('7','16B',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('8','17B',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('9','18B',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('10','19B',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('11','20B',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('12','21C',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('13','22C',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('14','23C',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('15','24C',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('16','25C',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('17','26C',1);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('18','27C',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('19','28C',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('20','29C',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('21','30C',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('22','31D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('23','32D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('24','33D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('25','34D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('26','35D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('27','36D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('28','37D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('29','38D',0);
Insert into VAGA_GARAGEM (ID,NUMERO,DISPONIVEL) values ('30','39D',1);

