-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mybasedata
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `idsessions` int NOT NULL AUTO_INCREMENT,
  `start_time_and_date` datetime NOT NULL,
  `idfilms` int NOT NULL,
  `idcinemas` int NOT NULL,
  `idhall` int NOT NULL,
  PRIMARY KEY (`idsessions`),
  KEY `fk_halls_idhalls_idx` (`idhall`),
  KEY `fk_cinemas_idcinemas_idx` (`idcinemas`),
  KEY `fk_films_idfilms_idx` (`idfilms`),
  CONSTRAINT `fk_cinemas_idcinemas` FOREIGN KEY (`idcinemas`) REFERENCES `cinemas` (`idcinemas`),
  CONSTRAINT `fk_films_idfilms` FOREIGN KEY (`idfilms`) REFERENCES `films` (`idfilms`),
  CONSTRAINT `fk_halls_idhalls` FOREIGN KEY (`idhall`) REFERENCES `halls` (`idhalls`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'2022-07-17 16:02:00',1,1,1),(2,'2022-02-18 13:20:00',2,2,2),(3,'2022-11-26 01:41:00',3,3,3),(4,'2022-07-08 08:55:00',4,4,4),(5,'2022-01-01 23:58:00',5,5,5),(6,'2022-12-14 12:27:00',6,1,6),(7,'2022-07-23 09:23:00',7,2,7),(8,'2022-12-06 19:47:00',8,3,8),(9,'2022-07-20 16:12:00',9,4,9),(10,'2022-07-27 13:43:00',10,5,10);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-14  8:43:23
