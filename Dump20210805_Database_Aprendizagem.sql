CREATE DATABASE  IF NOT EXISTS `aprendizagem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aprendizagem`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: aprendizagem
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `aluno_faz_curso`
--

DROP TABLE IF EXISTS `aluno_faz_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_faz_curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `idaluno` int DEFAULT NULL,
  `idcurso` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idaluno` (`idaluno`),
  KEY `idcurso` (`idcurso`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_faz_curso`
--

LOCK TABLES `aluno_faz_curso` WRITE;
/*!40000 ALTER TABLE `aluno_faz_curso` DISABLE KEYS */;
INSERT INTO `aluno_faz_curso` VALUES (1,'2017-01-02',1,3),(2,'2013-07-11',2,10),(3,'2015-09-19',3,7),(4,'2014-12-07',4,8),(5,'2015-11-14',5,2),(6,'2014-05-22',6,1),(7,'2015-08-08',7,6),(8,'2016-01-13',8,9),(9,'2016-12-06',9,5),(10,'2014-06-09',10,8),(11,'2015-05-27',11,7),(12,'2016-07-10',12,2),(13,'2016-04-30',13,3),(14,'2012-09-17',14,4),(15,'2017-03-21',15,5);
/*!40000 ALTER TABLE `aluno_faz_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacao` varchar(20) DEFAULT 'Brasil',
  `codicurso` int DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  UNIQUE KEY `nome` (`nome`),
  KEY `codicurso` (`codicurso`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Marcos Ribeiro','1996-05-17','M',76.60,1.75,'Brasil',NULL),(2,'Washington Houston','1988-12-21','M',82.50,1.80,'EUA',NULL),(3,'Zaniua Shang','1992-10-19','F',60.40,1.63,'China',NULL),(4,'Maria Almeida','1989-07-15','F',52.80,1.55,'Brasil',NULL),(5,'Stephany Grindge','1994-08-12','F',59.70,1.58,'EUA',NULL),(6,'Claudia Schmed','1988-04-06','F',66.40,1.68,'Alemanha',NULL),(7,'Anselmo Correia','1990-08-08','M',88.60,1.91,'Brasil',NULL),(8,'Clarice Prada','1992-03-01','F',62.10,1.63,'Brasil',NULL),(9,'Giovanni Martin','1990-07-09','M',77.80,1.74,'Espanha',NULL),(10,'Valentina Pellegrini','1989-08-12','F',71.40,1.72,'Itália',NULL),(11,'Antonia Soares','1993-06-13','F',61.90,1.65,'Brasil',NULL),(12,'Mark Zanurr','1989-11-04','M',81.10,1.80,'Canadá',NULL),(13,'Jonas Nielsen','1994-10-08','M',74.50,1.75,'Alemanha',NULL),(14,'Janilson Martins','1991-05-17','M',83.30,1.84,'Brasil',NULL),(15,'Numan Çakmak','1988-02-25','M',88.50,1.76,'Turquia',NULL);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(20) NOT NULL,
  `carga` int NOT NULL,
  `ano` int DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  UNIQUE KEY `curso` (`nome_curso`),
  UNIQUE KEY `nome_curso` (`nome_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Algoritmos',20,2014),(2,'HTML5 e CSS3',40,2015),(3,'PHP Básico',30,2016),(4,'Fundamentos de Java',40,2012),(5,'MySQL Básico',30,2016),(6,'POO',60,2015),(7,'Introdução ao C#',40,2015),(8,'JavaScript',40,2014),(9,'Python',60,2015),(10,'Hardware',30,2013);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aprendizagem'
--

--
-- Dumping routines for database 'aprendizagem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-05 21:40:43
