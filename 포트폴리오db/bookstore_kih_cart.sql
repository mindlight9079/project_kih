-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore_kih
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ca_num` int NOT NULL AUTO_INCREMENT,
  `ca_amount` int NOT NULL,
  `ca_re_code` int NOT NULL,
  `ca_me_id` varchar(50) NOT NULL,
  `ca_valid` varchar(1) NOT NULL DEFAULT 'I',
  PRIMARY KEY (`ca_num`),
  KEY `ca_re_code` (`ca_re_code`),
  KEY `ca_me_id` (`ca_me_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`ca_re_code`) REFERENCES `registration` (`re_code`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`ca_me_id`) REFERENCES `member` (`me_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (64,3,4,'qwe123','D'),(65,2,16,'qwe123','D'),(66,3,24,'qwe123','D'),(67,3,3,'qwe123','D'),(68,2,13,'qwe123','D'),(69,1,20,'qwe123','D'),(70,2,11,'qwe123','D'),(71,1,11,'qwe123','D'),(72,3,24,'qwe123','D'),(73,1,4,'qwe123','D'),(74,1,5,'qwe123','D'),(75,1,1,'qwe123','D'),(76,3,24,'qwe123','D'),(77,1,18,'qwe123','D'),(78,1,17,'qwe123','D'),(79,1,16,'qwe123','D'),(80,1,22,'qwe123','D'),(81,1,1,'qwe123','D'),(82,1,23,'qwe123','D'),(83,1,17,'qwe123','D'),(84,1,15,'qwe123','D'),(85,1,3,'qwe123','D'),(86,1,7,'qwe123','D');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-06 17:44:57
