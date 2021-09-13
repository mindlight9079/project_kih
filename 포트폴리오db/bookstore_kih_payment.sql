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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pa_num` varchar(30) NOT NULL,
  `pa_methods` varchar(30) NOT NULL,
  `pa_name` varchar(50) NOT NULL,
  `pa_point` int DEFAULT '0',
  `pa_or_num` varchar(20) NOT NULL,
  `pa_approved` datetime NOT NULL,
  `merchant_uid` varchar(50) DEFAULT '0',
  `imp_uid` varchar(50) DEFAULT '0',
  PRIMARY KEY (`pa_num`),
  KEY `pa_or_num_idx` (`pa_or_num`),
  CONSTRAINT `pa_or_num` FOREIGN KEY (`pa_or_num`) REFERENCES `order` (`or_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('30032512','card','임꺽정',0,'2021091305071294','2021-09-13 17:12:07','merchant_1631520709703','imp_507709814942'),('30032523','card','임꺽정',0,'2021091305571854','2021-09-13 17:18:57','merchant_1631521119254','imp_665119351662'),('30032534','card','임꺽정',0,'2021091305352984','2021-09-13 17:29:35','merchant_1631521757726','imp_551757845818'),('30032545','card','임꺽정',0,'2021091305143757','2021-09-13 17:37:14','merchant_1631522215718','imp_332215821710'),('30032556','card','임꺽정',0,'2021091305473984','2021-09-13 17:39:47','merchant_1631522369493','imp_071369579870'),('30032567','card','임꺽정',0,'2021091305024424','2021-09-13 17:44:02','merchant_1631522624174','imp_135624267186');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13 17:48:26
