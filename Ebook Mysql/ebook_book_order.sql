CREATE DATABASE  IF NOT EXISTS `ebook` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ebook`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ebook
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (15,'BOOK-ORD-00122','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Data Mining','Dr.G.Sekar','500.0','COD'),(16,'BOOK-ORD-00488','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(17,'BOOK-ORD-00931','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','iot','Dr.G.Sekar','250.0','COD'),(18,'BOOK-ORD-00891','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','data structure','Dr.R.Selvam','250.0','COD'),(19,'BOOK-ORD-00802','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,padiyanallur,padiyanallur,padiyanallur,600052','9840157569','Data Mining','Dr.G.Sekar','500.0','COD'),(20,'BOOK-ORD-00103','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,padiyanallur,padiyanallur,padiyanallur,600052','9840157569','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(21,'BOOK-ORD-00900','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,padiyanallur,padiyanallur,padiyanallur,600052','9840157569','iot','Dr.G.Sekar','250.0','COD'),(22,'BOOK-ORD-00537','Abinesh.R.P','abilitha1@gmail.com','padiyanallur,padiyanallur,padiyanallur,padiyanallur,600052','9840157569','data structure','Dr.R.Selvam','250.0','COD'),(23,'BOOK-ORD-00306','Abinesh.R.P','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Data Mining','Dr.G.Sekar','500.0','COD'),(24,'BOOK-ORD-00713','Abinesh.R.P','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(25,'BOOK-ORD-00609','Abinesh.R.P','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','iot','Dr.G.Sekar','250.0','COD'),(26,'BOOK-ORD-00936','Abinesh.R.P','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(27,'BOOK-ORD-00580','Divakar ','diva123@gmail.com','avadi,avadi,avadi,avadi,600062','9856412535','Data Mining','Dr.G.Sekar','500.0','COD'),(28,'BOOK-ORD-00393','Divakar ','diva123@gmail.com','avadi,avadi,avadi,avadi,600062','9856412535','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(29,'BOOK-ORD-00799','Abinesh','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(30,'BOOK-ORD-00340','Abinesh.R.P','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(31,'BOOK-ORD-00263','Abinesh.R.P','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','Open Source Technology ','Dr.R.Selvam','300.0','COD'),(32,'BOOK-ORD-00740','Abinesh.R.P','abilitha1@gmail.com','1/43 mondiyamman kovil street padiyanallur,medical shop,chennai,tamil nadu,600052','9840157569','data structure','Dr.R.Selvam','300.0','COD');
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 21:14:19
