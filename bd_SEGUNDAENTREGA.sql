-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pozos
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parametros` (
  `VARIABLE` varchar(15) NOT NULL,
  `UNIDADES` varchar(15) DEFAULT NULL,
  `ESTATUSENSAYO` varchar(15) DEFAULT NULL,
  `HORAS` date DEFAULT NULL,
  `MINUTOS` date DEFAULT NULL,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  `TIPODEPOZO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`VARIABLE`),
  KEY `FK_TIPODEPOZOS_idx` (`TIPODEPOZO`),
  CONSTRAINT `FK_TIPODEPOZOS` FOREIGN KEY (`TIPODEPOZO`) REFERENCES `tipodepozos` (`TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodepozos`
--

DROP TABLE IF EXISTS `tipodepozos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodepozos` (
  `NOMBRE` varchar(45) DEFAULT NULL,
  `TIPO` varchar(45) NOT NULL,
  `LOCACION` varchar(45) DEFAULT NULL,
  `ESTADO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TIPO`),
  KEY `FK_TIPOS_POZO_idx` (`NOMBRE`),
  CONSTRAINT `FK_TIPOS_POZO` FOREIGN KEY (`NOMBRE`) REFERENCES `parametros` (`VARIABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodepozos`
--

LOCK TABLES `tipodepozos` WRITE;
/*!40000 ALTER TABLE `tipodepozos` DISABLE KEYS */;
INSERT INTO `tipodepozos` VALUES (NULL,'NOC',NULL,NULL);
/*!40000 ALTER TABLE `tipodepozos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `NOMBRE` varchar(45) DEFAULT NULL,
  `APELLIDO` varchar(45) DEFAULT NULL,
  `CODIGOEMPLEADO` varchar(45) NOT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `POZO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CODIGOEMPLEADO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Walter','Rodriguez','ZIHK','Walter.Rodriguez@chevron.com',NULL),('Walter','Rodriguez','ZIHKe','Walter.Rodriguez@chevron.com',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-06 23:44:24
