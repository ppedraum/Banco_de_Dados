-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `codlocacao` int NOT NULL,
  `data_loc` datetime NOT NULL,
  `data_dev` datetime NOT NULL,
  `val_diaria` float(4,2) NOT NULL,
  `val_pago` float(10,2) NOT NULL,
  `codcliente` int NOT NULL,
  `codfilme` int NOT NULL,
  PRIMARY KEY (`codlocacao`),
  KEY `codcliente` (`codcliente`),
  KEY `codfilme` (`codfilme`),
  CONSTRAINT `locacao_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`),
  CONSTRAINT `locacao_ibfk_2` FOREIGN KEY (`codfilme`) REFERENCES `filmes` (`codfilme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES (1010,'2021-04-05 13:32:02','2021-04-06 00:00:36',15.00,15.00,1,10000),(1011,'2021-05-21 19:02:24','2021-05-23 15:14:33',15.00,45.00,2,45),(1100,'2021-04-09 20:56:55','2021-04-12 14:44:45',15.00,45.00,3,67327),(1101,'2021-06-11 14:15:05','2021-06-17 20:55:43',15.00,90.00,4,5254),(1110,'2021-09-14 16:32:58','2021-09-14 21:12:07',15.00,15.00,5,443);
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18 13:50:48
