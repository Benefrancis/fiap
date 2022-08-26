-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.6.7-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para prefeitura
DROP DATABASE IF EXISTS `prefeitura`;
CREATE DATABASE IF NOT EXISTS `prefeitura` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `prefeitura`;

-- Copiando estrutura para tabela prefeitura.funcionario
DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) DEFAULT NULL,
  `CHEFE` binary(1) DEFAULT '0' COMMENT 'Aceita somente 1 ou 0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela prefeitura.funcionario: ~50 rows (aproximadamente)
DELETE FROM `funcionario`;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`ID`, `NOME`, `CHEFE`) VALUES
	(1, 'BENEFRANCIS', _binary 0x30),
	(2, 'EDILAINE', _binary 0x31),
	(3, 'BRUNO SUDRÉ', _binary 0x31),
	(4, 'DAVI LUCCA', _binary 0x30),
	(5, 'ERICK SUDRÉ', _binary 0x30),
	(6, 'BRUNA SCARLET', _binary 0x30),
	(7, 'EDIMEIA SOBRINHO', _binary 0x31),
	(8, 'LUIZ VANDERLEY PITH BULL', _binary 0x30),
	(9, 'GILMAR GONÇALVES', _binary 0x30),
	(10, 'VICTOR GUILHERME', _binary 0x31),
	(11, 'ELLEN CRISTINA', _binary 0x30),
	(12, 'MARIANA SUDRÉ', _binary 0x30),
	(13, 'GIOVANA LUNA', _binary 0x30),
	(14, 'STHEPANY KAREN', _binary 0x30),
	(15, 'LUCIANA CORDEIRO', _binary 0x31),
	(16, 'RAFAEL LUNA', _binary 0x30),
	(17, 'LUIZ CARLOS CORREIA MOURA', _binary 0x30),
	(18, 'PAULO HENRIQUE DE OLIVEIRA', _binary 0x30),
	(19, 'MIGUEL SUDRÉ', _binary 0x30),
	(20, 'LUCAS GONÇALVES', _binary 0x30),
	(21, 'JOSÉ SOARES', _binary 0x31),
	(22, 'RONIE VON', _binary 0x31),
	(23, 'SERGIO GROISMAN', _binary 0x31),
	(24, 'LUIZ INACIO DA SILVA', _binary 0x31),
	(25, 'JAIR MESSIAS', _binary 0x31),
	(26, 'SERGIO CABRAL', _binary 0x31),
	(27, 'JENNIFER SENA DO NASCIMENTO', _binary 0x30),
	(28, 'MARIA RAQUEL DO NASCIMENTO', _binary 0x30),
	(29, 'TADEU EDUARDO NASCIMENTO SILVA', _binary 0x31),
	(30, 'SELMA REGINA MORAES', _binary 0x31),
	(31, 'MARIA JOAQUINA ', _binary 0x31),
	(32, 'CIRILO COELHO', _binary 0x31),
	(33, 'MARIANA BOTELHO', _binary 0x30),
	(34, 'SERGIO RAMALHO', _binary 0x31),
	(35, 'BRENDA LINDSAY DO NASCIMENTO', _binary 0x30),
	(36, 'DAVID DO NASCIMENTO ', _binary 0x31),
	(37, 'MARIA EVARISTA DO NASCIMENTO', _binary 0x30),
	(38, 'JOSÉ RONALDO DO NASCIMENTO', _binary 0x30),
	(39, 'JONATAN DO NASCIMENTO', _binary 0x30),
	(40, 'JESSICA DO NASCIMENTO', _binary 0x30),
	(41, 'WILLIAN BONER', _binary 0x31),
	(42, 'FATIMA BERNARDES', _binary 0x31),
	(43, 'MARCOS SUDRE', _binary 0x30),
	(44, 'PAULO GONÇALVES SUDRE', _binary 0x30),
	(45, 'LUIZ VANDERLEY ASSIS SOBRINHO', _binary 0x30),
	(46, 'GARDSON ROMANTICO', _binary 0x30),
	(47, 'ELENICE SUDRE', _binary 0x31),
	(48, 'LUIZA DOCINHO', _binary 0x30),
	(49, 'LUANA LORÃO', _binary 0x30),
	(50, 'JANAINA SUDRÉ', _binary 0x30);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

-- Copiando estrutura para tabela prefeitura.sorte_vaga_garagem
DROP TABLE IF EXISTS `sorte_vaga_garagem`;
CREATE TABLE IF NOT EXISTS `sorte_vaga_garagem` (
  `ANO` smallint(4) NOT NULL,
  `MES` smallint(2) NOT NULL,
  `FUNCIONARIO_ID` int(11) NOT NULL,
  `VAGA_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MES`,`ANO`,`FUNCIONARIO_ID`),
  KEY `FK_SFUNC` (`FUNCIONARIO_ID`),
  KEY `FK_SVAGA` (`VAGA_ID`),
  CONSTRAINT `FK_SFUNC` FOREIGN KEY (`FUNCIONARIO_ID`) REFERENCES `funcionario` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SVAGA` FOREIGN KEY (`VAGA_ID`) REFERENCES `vaga_garagem` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela prefeitura.sorte_vaga_garagem: ~0 rows (aproximadamente)
DELETE FROM `sorte_vaga_garagem`;
/*!40000 ALTER TABLE `sorte_vaga_garagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `sorte_vaga_garagem` ENABLE KEYS */;

-- Copiando estrutura para tabela prefeitura.vaga_garagem
DROP TABLE IF EXISTS `vaga_garagem`;
CREATE TABLE IF NOT EXISTS `vaga_garagem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUMERO` varchar(50) NOT NULL,
  `DISPONIVEL` binary(1) NOT NULL DEFAULT '0' COMMENT 'Aceita somente 1 ou 0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela prefeitura.vaga_garagem: ~30 rows (aproximadamente)
DELETE FROM `vaga_garagem`;
/*!40000 ALTER TABLE `vaga_garagem` DISABLE KEYS */;
INSERT INTO `vaga_garagem` (`ID`, `NUMERO`, `DISPONIVEL`) VALUES
	(1, '10A', _binary 0x31),
	(2, '11A', _binary 0x30),
	(3, '12A', _binary 0x31),
	(4, '13A', _binary 0x30),
	(5, '14A', _binary 0x31),
	(6, '15A', _binary 0x31),
	(7, '16B', _binary 0x30),
	(8, '17B', _binary 0x31),
	(9, '18B', _binary 0x30),
	(10, '19B', _binary 0x30),
	(11, '20B', _binary 0x31),
	(12, '21C', _binary 0x30),
	(13, '22C', _binary 0x31),
	(14, '23C', _binary 0x30),
	(15, '24C', _binary 0x31),
	(16, '25C', _binary 0x30),
	(17, '26C', _binary 0x31),
	(18, '27C', _binary 0x30),
	(19, '28C', _binary 0x30),
	(20, '29C', _binary 0x30),
	(21, '30C', _binary 0x30),
	(22, '31D', _binary 0x30),
	(23, '32D', _binary 0x30),
	(24, '33D', _binary 0x30),
	(25, '34D', _binary 0x30),
	(26, '35D', _binary 0x30),
	(27, '36D', _binary 0x30),
	(28, '37D', _binary 0x30),
	(29, '38D', _binary 0x30),
	(30, '39D', _binary 0x31);
/*!40000 ALTER TABLE `vaga_garagem` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
