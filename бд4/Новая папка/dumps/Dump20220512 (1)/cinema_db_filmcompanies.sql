-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema_db
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
-- Table structure for table `filmcompanies`
--

DROP TABLE IF EXISTS `filmcompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmcompanies` (
  `idfilmcompanies` int NOT NULL AUTO_INCREMENT,
  `film_company_name` varchar(45) NOT NULL,
  `year_of_formation` int NOT NULL,
  `film_company_locate` varchar(45) NOT NULL,
  PRIMARY KEY (`idfilmcompanies`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmcompanies`
--

LOCK TABLES `filmcompanies` WRITE;
/*!40000 ALTER TABLE `filmcompanies` DISABLE KEYS */;
INSERT INTO `filmcompanies` VALUES (1,'20th Century Studios',1935,'США: Лос-Анджелес, Калифорния'),(2,'Columbia Pictures',1924,'США: Калвер-Сити, Калифорния'),(3,'Universal Pictures',1912,'Юниверсал-Сити, США'),(4,'Thunder Road Films',2000,'Санта-Моника, Калифорния'),(5,'Warner Bros. Pictures',1923,'США: Бербанк, Калифорния'),(6,'Netflix',1997,'США: Лос-Гатос Калифорния'),(7,'Paramount Pictures',1912,'США: Лос-Анджелес, Калифорния'),(8,'Regency Enterprises',1982,'США: Лос-Анджелес. Калифорния'),(9,'Imagine Entertainment',1985,'США: Лос-Анджелес. Калифорния'),(10,'Marvel Animation',2008,'США: Глендейл, Калифорния');
/*!40000 ALTER TABLE `filmcompanies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 10:15:49
