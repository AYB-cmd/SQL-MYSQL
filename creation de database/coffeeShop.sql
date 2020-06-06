-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: coffeeshop
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



CREATE DATABASE coffeeShop;
USE coffeeShop;
--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ID_CLIENT` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` enum('M','F') DEFAULT NULL,
  `PHONE_NUMBER` int DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`),
  UNIQUE KEY `full_name` (`FIRST_NAME`,`LAST_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Chris','Martin','M',1123147789),(2,'Emma','Law','F',1123439899),(3,'Mark','Watkins','M',1174592013),(4,'Daniel','Williams','M',NULL),(5,'Sarah','Taylor','F',1176348290),(6,'Katie','Armstrong','F',1145787353),(7,'Michael','Bluth','M',1980289282),(8,'Kat','Nash','F',1176987789),(9,'Buster','Bluth','M',1173456782),(10,'Charlie',NULL,'F',1139287883),(11,'Lindsay','Bluth','F',1176923804),(12,'Harry','Johnson','M',NULL),(13,'John','Smith','M',1174987221),(14,'John','Taylor','M',NULL),(15,'Emma','Smith','F',1176984116),(16,'Gob','Bluth','M',1176985498),(17,'George','Bluth','M',1176984303),(18,'Lucille','Bluth','F',1198773214),(19,'George','Evans','M',1174502933),(20,'Emily','Simmonds','F',1899284352),(21,'John','Smithe','M',1144473330),(22,'Jennifer',NULL,'F',NULL),(23,'Toby','West','M',1176009822),(24,'Paul','Edmonds','M',1966947113);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ID_ORDER` int NOT NULL AUTO_INCREMENT,
  `ID_CLIENT` int NOT NULL,
  `ID_PRODUCT` int NOT NULL,
  `DATE_ORDER` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_ORDER`),
  KEY `FK_ORDER_CLIENT` (`ID_CLIENT`),
  KEY `FK_ORDER_PRODUCT` (`ID_PRODUCT`),
  CONSTRAINT `FK_ORDER_CLIENT` FOREIGN KEY (`ID_CLIENT`) REFERENCES `clients` (`ID_CLIENT`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ORDER_PRODUCT` FOREIGN KEY (`ID_PRODUCT`) REFERENCES `products` (`ID_PRODUCT`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2017-01-01 08:02:11'),(2,2,1,'2017-01-01 08:05:16'),(3,12,5,'2017-01-01 08:44:34'),(4,4,3,'2017-01-01 09:20:02'),(5,9,1,'2017-01-01 11:51:56'),(6,22,6,'2017-01-01 13:07:10'),(7,1,1,'2017-01-02 08:03:41'),(8,10,3,'2017-01-02 09:15:22'),(9,2,2,'2017-01-02 10:10:10'),(10,13,3,'2017-01-02 12:07:23'),(11,1,1,'2017-01-03 08:13:50'),(12,16,7,'2017-01-03 08:47:09'),(13,21,6,'2017-01-03 09:12:11'),(14,22,5,'2017-01-03 11:05:33'),(15,3,4,'2017-01-03 11:08:55'),(16,11,3,'2017-01-03 12:02:14'),(17,23,2,'2017-01-03 13:41:22'),(18,1,1,'2017-01-04 08:08:56'),(19,10,3,'2017-01-04 11:23:43'),(20,12,4,'2017-01-05 08:30:09'),(21,1,7,'2017-01-06 09:02:47'),(22,18,3,'2017-01-06 13:23:34'),(23,16,2,'2017-01-07 09:12:39'),(24,14,2,'2017-01-07 11:24:15'),(25,5,4,'2017-01-08 08:54:11'),(26,1,1,'2017-01-09 08:03:11'),(27,20,6,'2017-01-10 10:34:12'),(28,3,3,'2017-01-10 11:02:11'),(29,24,4,'2017-01-11 08:39:11'),(30,8,4,'2017-01-12 13:20:13'),(31,1,1,'2017-01-14 08:27:10'),(32,15,4,'2017-01-15 08:30:56'),(33,7,1,'2017-01-16 10:02:11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ID_PRODUCT` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `PRICE` decimal(5,2) DEFAULT NULL,
  `product_origin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCT`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'special coffee',7.50,'Brazil'),(2,'coffee family',8.00,'Cuba'),(3,'coffee 2.0',8.50,'Ethopia'),(4,'animal coffee',25.00,'Indonesia'),(5,'coffee niore',8.00,'france'),(6,'coffe plus',15.50,'Italy'),(7,'coffee ++',30.00,'Maroc');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 18:27:35
