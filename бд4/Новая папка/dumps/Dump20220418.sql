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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `idactors` int NOT NULL AUTO_INCREMENT,
  `actor_fio` varchar(45) NOT NULL,
  `actor_age` int NOT NULL,
  `actor_birth_place` varchar(45) NOT NULL,
  PRIMARY KEY (`idactors`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Галь Гадот',36,'Израиль'),(2,'Том Холланд',25,'Великобритания'),(3,'Спайк Джонз',52,'США'),(4,'Крис Пайн',41,'США'),(5,'Мэтт Дэймон',51,'США'),(6,'Гэри Олдмен',64,'Великобритания'),(7,'Леонардо ДиКаприо',47,'США'),(8,'Роберт Паттинсон',35,'Великобритания'),(9,'Идрис Эльба',49,'Великобритания'),(10,'Даймонд Уайт',23,'США');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `idcharacters` int NOT NULL AUTO_INCREMENT,
  `character_name` varchar(45) NOT NULL,
  `character_role` tinyint NOT NULL,
  `character_amplua` varchar(100) NOT NULL,
  PRIMARY KEY (`idcharacters`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'Линнет Риджеуэй Дойл',1,'молодая миллионерша, жертва убийства'),(2,'Нейтан Дрейк',1,'молодой охотник за сокровищами'),(3,'кот Джерри',0,'личный помощник главного злодея'),(4,'Джеймс Харпер',1,'вынужденно уволенный из спецназа США'),(5,'Жорж Лонеган',1,'американец, имеющий особую связь с загробной жизнью'),(6,'Герман Дж. Манкевич',1,'сценарист фильма «Гражданин Кейн»'),(7,'Эндрю Лэддис',1,'ветеран Второй Мировой войны'),(8,'Эфраим Уинслоу',1,'бывший лесоруб, смотрителя маяка'),(9,'Роланд Дискейн',1,'стрелок'),(10,'Лунеллы Лафайетт',1,'одаренная молодая девушка, которая случайно приносит дьявольского динозавра');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinemas`
--

DROP TABLE IF EXISTS `cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinemas` (
  `idcinemas` int NOT NULL AUTO_INCREMENT,
  `cinema_email` varchar(45) NOT NULL,
  `cinema_address` varchar(100) NOT NULL,
  `cinema_name` varchar(45) NOT NULL,
  `cinema_phone` bigint NOT NULL,
  `cinema_city` varchar(45) NOT NULL,
  PRIMARY KEY (`idcinemas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinemas`
--

LOCK TABLES `cinemas` WRITE;
/*!40000 ALTER TABLE `cinemas` DISABLE KEYS */;
INSERT INTO `cinemas` VALUES (1,'hopoussoiprepru-4486@yopmail.com','ул. Землячки, 110б, ТРК «Мармелад», 2 этаж','Mori Cinema',84236532721,'Волгоград'),(2,'grunneubraurauwou-4398@yopmail.com','просп. Героев Сталинграда, 68','Гиппопо',88202742647,'Волгоград'),(3,'quafuvameddoi-9702@yopmail.com','ул. Рабоче-Крестьянская, 9б, ТЦ «Ворошиловский»','Пять звёзд',83513090786,'Волгоград'),(4,'tennibruvanei-5143@yopmail.com','просп. им. Ленина, 54б, ТРК «Европа Сити Молл»','Синема Парк',84932773835,'Волгоград'),(5,'xatawagura-5788@yopmail.com','Рабоче-Крестьянская ул., 10','Киномакс',798105,'Волгоград');
/*!40000 ALTER TABLE `cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_to_company`
--

DROP TABLE IF EXISTS `film_to_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_to_company` (
  `idfilms` int NOT NULL,
  `idfilmcompanies` int NOT NULL,
  PRIMARY KEY (`idfilms`,`idfilmcompanies`),
  KEY `idfilmcompanies` (`idfilmcompanies`),
  CONSTRAINT `film_to_company_ibfk_1` FOREIGN KEY (`idfilms`) REFERENCES `films` (`idfilms`),
  CONSTRAINT `film_to_company_ibfk_2` FOREIGN KEY (`idfilmcompanies`) REFERENCES `filmcompanies` (`idfilmcompanies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_to_company`
--

LOCK TABLES `film_to_company` WRITE;
/*!40000 ALTER TABLE `film_to_company` DISABLE KEYS */;
INSERT INTO `film_to_company` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `film_to_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_to_genre`
--

DROP TABLE IF EXISTS `film_to_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_to_genre` (
  `idgenres` int NOT NULL,
  `idfilms` int NOT NULL,
  PRIMARY KEY (`idgenres`,`idfilms`),
  KEY `idfilms` (`idfilms`),
  CONSTRAINT `film_to_genre_ibfk_1` FOREIGN KEY (`idgenres`) REFERENCES `genres` (`idgenres`),
  CONSTRAINT `film_to_genre_ibfk_2` FOREIGN KEY (`idfilms`) REFERENCES `films` (`idfilms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_to_genre`
--

LOCK TABLES `film_to_genre` WRITE;
/*!40000 ALTER TABLE `film_to_genre` DISABLE KEYS */;
INSERT INTO `film_to_genre` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `film_to_genre` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `idfilms` int NOT NULL AUTO_INCREMENT,
  `film_name` varchar(45) NOT NULL,
  `film_duration` int NOT NULL,
  `country_of_publication` varchar(45) NOT NULL,
  PRIMARY KEY (`idfilms`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Смерть на Ниле',127,'Великобритания, США'),(2,'Анчартед: На картах не значится',115,'США, Испания'),(3,'Зверопой 2',110,'Франция, Япония, США'),(4,'Наёмник',103,'США'),(5,'Потустороннее',96,'Китай'),(6,'Манк',113,'США'),(7,'Остров проклятых',138,'США'),(8,'Маяк',109,'США, Канада'),(9,'Тёмная башня',95,'США'),(10,'Лунная девочка и Дьявол динозавр',115,'США');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `idgenres` int NOT NULL AUTO_INCREMENT,
  `name_genre` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenres`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'безумие'),(2,'вампиры'),(3,'военное'),(4,'детектив'),(5,'детское'),(6,'драма'),(7,'юмор'),(8,'космос'),(9,'повседневность'),(10,'приключения');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hall_to_seat`
--

DROP TABLE IF EXISTS `hall_to_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hall_to_seat` (
  `idhalls` int NOT NULL,
  `idseats` int NOT NULL,
  PRIMARY KEY (`idhalls`,`idseats`),
  KEY `idseats` (`idseats`),
  CONSTRAINT `hall_to_seat_ibfk_1` FOREIGN KEY (`idhalls`) REFERENCES `halls` (`idhalls`),
  CONSTRAINT `hall_to_seat_ibfk_2` FOREIGN KEY (`idseats`) REFERENCES `seats` (`idseats`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall_to_seat`
--

LOCK TABLES `hall_to_seat` WRITE;
/*!40000 ALTER TABLE `hall_to_seat` DISABLE KEYS */;
INSERT INTO `hall_to_seat` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `hall_to_seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `halls`
--

DROP TABLE IF EXISTS `halls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `halls` (
  `idhalls` int NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(45) NOT NULL,
  `hall_capacity` int NOT NULL,
  `idcinemas` int NOT NULL,
  PRIMARY KEY (`idhalls`),
  KEY `idcinemas` (`idcinemas`),
  CONSTRAINT `halls_ibfk_1` FOREIGN KEY (`idcinemas`) REFERENCES `cinemas` (`idcinemas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halls`
--

LOCK TABLES `halls` WRITE;
/*!40000 ALTER TABLE `halls` DISABLE KEYS */;
INSERT INTO `halls` VALUES (1,'3 зал',100,1),(2,'2 зал',125,1),(3,'IMAX',120,2),(4,'3 зал',100,3),(5,'1 зал',175,4),(6,'2 зал',200,5),(7,'4 зал',210,2),(8,'3 зал',90,2),(9,'2 зал',85,1),(10,'1 зал',120,3);
/*!40000 ALTER TABLE `halls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participations`
--

DROP TABLE IF EXISTS `participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participations` (
  `idparticipations` int NOT NULL AUTO_INCREMENT,
  `idactors` int NOT NULL,
  `idcharacters` int NOT NULL,
  `idfilms` int NOT NULL,
  PRIMARY KEY (`idparticipations`),
  KEY `idactors` (`idactors`),
  KEY `idcharacters` (`idcharacters`),
  KEY `idfilms` (`idfilms`),
  CONSTRAINT `participations_ibfk_1` FOREIGN KEY (`idactors`) REFERENCES `actors` (`idactors`),
  CONSTRAINT `participations_ibfk_2` FOREIGN KEY (`idcharacters`) REFERENCES `characters` (`idcharacters`),
  CONSTRAINT `participations_ibfk_3` FOREIGN KEY (`idfilms`) REFERENCES `films` (`idfilms`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participations`
--

LOCK TABLES `participations` WRITE;
/*!40000 ALTER TABLE `participations` DISABLE KEYS */;
INSERT INTO `participations` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10);
/*!40000 ALTER TABLE `participations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `idseats` int NOT NULL AUTO_INCREMENT,
  `row_number` int NOT NULL,
  `seat_number` int NOT NULL,
  `seat_ratio` float NOT NULL,
  PRIMARY KEY (`idseats`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,1,12,1.5),(2,6,14,2.25),(3,1,3,1.35),(4,3,4,1.2),(5,2,8,2.1),(6,1,11,1.5),(7,7,14,1.5),(8,12,17,1.7),(9,4,1,2.1),(10,11,3,2.5);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

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
  `idhalls` int NOT NULL,
  PRIMARY KEY (`idsessions`),
  KEY `idfilms` (`idfilms`),
  KEY `idhalls` (`idhalls`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`idfilms`) REFERENCES `films` (`idfilms`),
  CONSTRAINT `sessions_ibfk_3` FOREIGN KEY (`idhalls`) REFERENCES `halls` (`idhalls`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'2022-07-17 16:02:00',1,1),(2,'2022-02-18 13:20:00',2,2),(3,'2022-11-26 01:41:00',3,3),(4,'2022-07-08 08:55:00',4,4),(5,'2022-01-01 23:58:00',5,5),(6,'2022-12-14 12:27:00',6,1),(7,'2022-07-23 09:23:00',7,2),(8,'2022-12-06 19:47:00',8,3),(9,'2022-07-20 16:12:00',9,4),(10,'2022-07-27 13:43:00',10,5);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `idtickets` int NOT NULL AUTO_INCREMENT,
  `ticket_price` int NOT NULL,
  `ticket_status` tinyint NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,300,1,4561,1,1,1),(3,200,0,156,3,3,3),(6,300,0,132,6,6,6),(8,455,0,215,8,8,8),(9,210,1,8798,9,9,9);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `user_fio` varchar(100) NOT NULL,
  `user_phone_number` bigint NOT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Кулагин М. Д.',89555993628),(2,'Смирнова А. Д.',89424211370),(3,'Киселев П. Г.',89701628772),(4,'Никитина А. Н.',89317051496),(5,'Агеев Я. М.',89148447932),(6,'Ермолаева И. Д.',89644275174),(7,'Котов Е. А.',89574011177),(8,'Николаева А. А.',89397891277),(9,'Иванов Н. Я.',89726902921),(10,'Сергеева Д. Д.',89628825475);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18  9:28:18
