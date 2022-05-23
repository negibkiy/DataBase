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
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `idtickets` int NOT NULL AUTO_INCREMENT,
  `ticket_price` int NOT NULL,
  `ticket_status` int NOT NULL,
  `ticket_number` bigint NOT NULL,
  `idusers` int NOT NULL,
  `idseats` int NOT NULL,
  `idsessions` int NOT NULL,
  PRIMARY KEY (`idtickets`),
  KEY `idusers` (`idusers`),
  KEY `idseats` (`idseats`),
  KEY `idsessions` (`idsessions`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`idusers`) REFERENCES `users` (`idusers`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`idseats`) REFERENCES `seats` (`idseats`),
  CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`idsessions`) REFERENCES `sessions` (`idsessions`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,300,1,4561,1,1,1),(3,200,0,156,3,3,3),(6,300,0,132,6,6,6),(9,210,1,8798,9,9,9),(12,300,1,4561,1,1,2),(13,300,1,4561,1,1,2),(14,275,1,15613,2,2,2),(15,275,1,15613,2,2,2),(16,275,1,15613,2,2,2),(17,400,1,156,3,3,3),(18,400,1,156,3,3,3),(19,400,1,156,3,3,4),(20,400,1,156,3,3,4),(21,400,1,156,3,3,4),(22,400,1,156,3,3,4),(23,400,1,156,3,3,4),(24,55,1,896,4,4,4),(25,365,1,894,5,5,6),(26,100,0,132,6,6,6),(27,100,0,132,6,6,7),(28,100,0,132,6,6,7),(29,100,0,132,6,6,7),(30,100,0,132,6,6,6),(31,100,0,132,6,6,6),(32,100,0,132,6,6,6),(33,100,0,132,6,6,6),(34,90,0,8798,7,7,6),(35,655,0,215,8,8,8),(36,310,0,8798,9,9,9),(37,310,0,8798,9,9,9),(38,310,0,8798,9,9,9),(39,160,0,329,10,10,10),(40,160,0,329,10,10,1),(41,160,0,329,10,10,1),(42,300,1,4561,1,1,4),(43,300,1,4561,1,1,4),(44,300,1,4561,1,1,4),(45,300,1,4561,1,1,4),(46,300,1,4561,1,1,5),(47,300,1,4561,1,1,5),(48,300,1,4561,1,1,5),(49,300,1,4561,1,1,5);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-12 10:15:48
