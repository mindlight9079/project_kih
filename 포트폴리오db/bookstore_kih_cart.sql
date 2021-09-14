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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (104,90,7,'qwe123','D'),(105,1,4,'qwe123','D'),(106,1,3,'qwe123','D'),(107,1,1,'qwe123','D'),(108,1,4,'qwe123','D'),(109,1,1,'qwe123','D'),(110,1,4,'qwe123','D'),(111,1,16,'qwe123','D'),(112,1,3,'qwe123','D'),(113,1,1,'qwe123','D'),(114,1,4,'qwe123','D'),(115,1,1,'qwe123','D'),(116,1,1,'qwe123','D'),(117,1,3,'qwe123','D'),(118,1,1,'qwe123','D'),(119,1,18,'qwe123','D'),(120,1,24,'qwe123','D'),(121,2,21,'qwe123','D'),(122,2,20,'qwe123','D'),(123,1,16,'qwe123','D'),(124,0,1,'qwe123','D'),(125,1,7,'qwe123','D'),(126,1,8,'qwe123','D'),(127,1,7,'qwe123','D'),(128,1,8,'qwe123','D'),(129,1,7,'qwe123','D'),(130,1,8,'qwe123','D'),(131,1,7,'qwe123','D'),(132,2,8,'qwe123','D'),(133,1,1,'qwe123','D'),(134,2,3,'qwe123','D'),(135,1,18,'qwe123','D'),(136,1,16,'qwe123','D'),(137,2,20,'qwe123','D'),(138,1,24,'qwe123','D'),(139,1,21,'qwe123','D'),(140,1,15,'qwe123','D'),(141,2,17,'qwe123','D'),(142,1,11,'qwe123','D'),(143,1,21,'qwe123','I');
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

-- Dump completed on 2021-09-14 17:48:00
