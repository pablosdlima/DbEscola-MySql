CREATE DATABASE  IF NOT EXISTS `escola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `escola`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `IDALUNO` int NOT NULL AUTO_INCREMENT,
  `NOMEALUNO` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NASCIMENTO` date NOT NULL,
  `CPF` char(11) NOT NULL,
  `RG` char(9) NOT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `NACIONALIDADE` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'BRASIL',
  `ID_CONTATOS` int NOT NULL,
  `ID_ENDERECO` int NOT NULL,
  PRIMARY KEY (`IDALUNO`),
  UNIQUE KEY `CPF` (`CPF`),
  KEY `ID_CONTATOS` (`ID_CONTATOS`),
  KEY `ID_ENDERECO` (`ID_ENDERECO`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`ID_CONTATOS`) REFERENCES `contatos` (`IDCONTATOS`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`ID_ENDERECO`) REFERENCES `endereco` (`IDENDERECO`),
  CONSTRAINT `aluno_chk_1` CHECK ((`SEXO` in (_utf8mb4'F',_utf8mb4'M')))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Aluno de tal5','2010-01-05','00000030002','200000120','F','Brasil',9,17),(2,'Aluno de tal2','2010-01-05','00000030022','200000122','F','Brasil',11,20);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatos` (
  `IDCONTATOS` int NOT NULL AUTO_INCREMENT,
  `TELEFONE` char(10) DEFAULT NULL,
  `CELULAR` char(11) DEFAULT NULL,
  `EMAIL` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`IDCONTATOS`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `CELULAR` (`CELULAR`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (5,'1125000004','1190000025','aluno1@email.com'),(6,'1225000004','1290000025','aluno2@email.com'),(7,'1225000009','1210000025','aluno3@email.com'),(8,'1221000009','1220000025','aluno4@email.com'),(9,'1222000009','1230000025','aluno5@email.com'),(10,'1100000004','1190000005','Fulano5@email.com'),(11,'1222200029','1230000225','aluno22@email.com'),(12,'1110000004','1191000005','Fulanotal2@email.com'),(13,'1110000004','1192200005','Fulanotall2@email.com');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `IDENDERECO` int NOT NULL AUTO_INCREMENT,
  `RUA` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CEP` char(8) NOT NULL,
  `NUMERO` smallint NOT NULL,
  `CIDADE` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ESTADO` char(2) NOT NULL,
  PRIMARY KEY (`IDENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (8,'Rua de Tal 1','00000024',9,'São Paulo','sp'),(9,'Rua de Tal 1','00000024',9,'São Paulo','sp'),(10,'Rua de Tal 1','00000024',9,'São Paulo','sp'),(11,'Rua de Tal 1','00000034',9,'São Paulo','sp'),(12,'Rua de Tal 1','00000034',9,'São Paulo','sp'),(13,'Rua de Tal 10','00000035',9,'São Paulo','sp'),(14,'Rua de Tal 10','00000035',9,'São Paulo','sp'),(15,'Rua de Tal 11','00000035',1,'São Paulo','sp'),(16,'Rua de Tal 11','00000035',1,'São Paulo','sp'),(17,'Rua de Tal 12','00000036',2,'São Paulo','sp'),(18,'Rua de Tal 4','00000004',5,'São Paulo','sp'),(19,'Rua de Tal 2','00000236',22,'São Paulo','sp'),(20,'Rua de Tal 2','00000236',22,'São Paulo','sp'),(21,'Rua de Tal 222','00000004',205,'São Paulo','sp'),(22,'Rua de Tal 222','00000004',205,'São Paulo','sp'),(23,'Rua de Tal 222','00000004',205,'São Paulo','sp');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `IDMATERIA` int NOT NULL AUTO_INCREMENT,
  `NOMEMATERIA` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`IDMATERIA`),
  UNIQUE KEY `NOMEMATERIA` (`NOMEMATERIA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (4,'Ciência'),(3,'matematica'),(5,'Portugûes');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `IDPROFESSOR` int NOT NULL AUTO_INCREMENT,
  `NOMEPROFESSOR` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NASCIMENTO` date NOT NULL,
  `CPF` char(11) NOT NULL,
  `RG` char(9) NOT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `NACIONALIDADE` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'BRASIL',
  `ID_CONTATOS` int NOT NULL,
  `ID_ENDERECO` int NOT NULL,
  `ID_MATERIA` int NOT NULL,
  PRIMARY KEY (`IDPROFESSOR`),
  UNIQUE KEY `CPF` (`CPF`),
  KEY `ID_CONTATOS` (`ID_CONTATOS`),
  KEY `ID_ENDERECO` (`ID_ENDERECO`),
  KEY `ID_MATERIA` (`ID_MATERIA`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`ID_CONTATOS`) REFERENCES `contatos` (`IDCONTATOS`),
  CONSTRAINT `professor_ibfk_2` FOREIGN KEY (`ID_ENDERECO`) REFERENCES `endereco` (`IDENDERECO`),
  CONSTRAINT `professor_ibfk_3` FOREIGN KEY (`ID_MATERIA`) REFERENCES `materia` (`IDMATERIA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `professor_chk_1` CHECK ((`SEXO` in (_utf8mb4'F',_utf8mb4'M')))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (2,'fulano de tal1','2001-05-20','00000000005','000000004','F','Brasil',10,18,3),(4,'fulano de tall2','2001-05-20','00000202005','002000004','F','Brasil',13,23,5);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `IDTURMA` int NOT NULL AUTO_INCREMENT,
  `ID_ALUNO` int NOT NULL,
  `ID_PROFESSOR` int NOT NULL,
  PRIMARY KEY (`IDTURMA`),
  KEY `ID_ALUNO` (`ID_ALUNO`),
  KEY `ID_PROFESSOR` (`ID_PROFESSOR`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`ID_ALUNO`) REFERENCES `aluno` (`IDALUNO`),
  CONSTRAINT `turma_ibfk_2` FOREIGN KEY (`ID_PROFESSOR`) REFERENCES `professor` (`IDPROFESSOR`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,1,2),(2,2,4);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_aluno`
--

DROP TABLE IF EXISTS `vw_aluno`;
/*!50001 DROP VIEW IF EXISTS `vw_aluno`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_aluno` AS SELECT 
 1 AS `NOMEALUNO`,
 1 AS `NASCIMENTO`,
 1 AS `CPF`,
 1 AS `RG`,
 1 AS `SEXO`,
 1 AS `NACIONALIDADE`,
 1 AS `TELEFONE`,
 1 AS `CELULAR`,
 1 AS `EMAIL`,
 1 AS `RUA`,
 1 AS `CEP`,
 1 AS `NUMERO`,
 1 AS `CIDADE`,
 1 AS `ESTADO`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_professor`
--

DROP TABLE IF EXISTS `vw_professor`;
/*!50001 DROP VIEW IF EXISTS `vw_professor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_professor` AS SELECT 
 1 AS `NOMEPROFESSOR`,
 1 AS `NASCIMENTO`,
 1 AS `CPF`,
 1 AS `RG`,
 1 AS `SEXO`,
 1 AS `NACIONALIDADE`,
 1 AS `TELEFONE`,
 1 AS `CELULAR`,
 1 AS `EMAIL`,
 1 AS `RUA`,
 1 AS `CEP`,
 1 AS `NUMERO`,
 1 AS `CIDADE`,
 1 AS `ESTADO`,
 1 AS `NOMEMATERIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_turma`
--

DROP TABLE IF EXISTS `vw_turma`;
/*!50001 DROP VIEW IF EXISTS `vw_turma`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_turma` AS SELECT 
 1 AS `ALUNO`,
 1 AS `PROFESSOR`,
 1 AS `MATERIA`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_aluno`
--

/*!50001 DROP VIEW IF EXISTS `vw_aluno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_aluno` AS select `a`.`NOMEALUNO` AS `NOMEALUNO`,`a`.`NASCIMENTO` AS `NASCIMENTO`,`a`.`CPF` AS `CPF`,`a`.`RG` AS `RG`,`a`.`SEXO` AS `SEXO`,`a`.`NACIONALIDADE` AS `NACIONALIDADE`,`c`.`TELEFONE` AS `TELEFONE`,`c`.`CELULAR` AS `CELULAR`,`c`.`EMAIL` AS `EMAIL`,`e`.`RUA` AS `RUA`,`e`.`CEP` AS `CEP`,`e`.`NUMERO` AS `NUMERO`,`e`.`CIDADE` AS `CIDADE`,`e`.`ESTADO` AS `ESTADO` from ((`aluno` `a` join `contatos` `c` on((`a`.`ID_CONTATOS` = `c`.`IDCONTATOS`))) join `endereco` `e` on((`a`.`ID_ENDERECO` = `e`.`IDENDERECO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_professor`
--

/*!50001 DROP VIEW IF EXISTS `vw_professor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_professor` AS select `p`.`NOMEPROFESSOR` AS `NOMEPROFESSOR`,`p`.`NASCIMENTO` AS `NASCIMENTO`,`p`.`CPF` AS `CPF`,`p`.`RG` AS `RG`,`p`.`SEXO` AS `SEXO`,`p`.`NACIONALIDADE` AS `NACIONALIDADE`,`c`.`TELEFONE` AS `TELEFONE`,`c`.`CELULAR` AS `CELULAR`,`c`.`EMAIL` AS `EMAIL`,`e`.`RUA` AS `RUA`,`e`.`CEP` AS `CEP`,`e`.`NUMERO` AS `NUMERO`,`e`.`CIDADE` AS `CIDADE`,`e`.`ESTADO` AS `ESTADO`,`m`.`NOMEMATERIA` AS `NOMEMATERIA` from (((`professor` `p` join `contatos` `c` on((`p`.`ID_CONTATOS` = `c`.`IDCONTATOS`))) join `endereco` `e` on((`p`.`ID_ENDERECO` = `e`.`IDENDERECO`))) join `materia` `m` on((`p`.`ID_MATERIA` = `m`.`IDMATERIA`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_turma`
--

/*!50001 DROP VIEW IF EXISTS `vw_turma`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_turma` AS select `a`.`NOMEALUNO` AS `ALUNO`,`p`.`NOMEPROFESSOR` AS `PROFESSOR`,`m`.`NOMEMATERIA` AS `MATERIA` from (((`turma` `t` join `aluno` `a` on((`t`.`ID_ALUNO` = `a`.`IDALUNO`))) join `professor` `p` on((`t`.`ID_PROFESSOR` = `p`.`IDPROFESSOR`))) join `materia` `m` on((`m`.`IDMATERIA` = `p`.`ID_MATERIA`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-30 15:27:51
