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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `or_num` varchar(20) NOT NULL,
  `or_me_id` varchar(50) NOT NULL,
  `or_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `or_state` varchar(30) NOT NULL DEFAULT '결제승인중',
  `or_receiver` varchar(50) NOT NULL,
  `or_payment` bigint NOT NULL,
  `or_deliver` int NOT NULL DEFAULT '0',
  `or_green_point` int NOT NULL,
  `or_deli_date` datetime NOT NULL,
  `or_sh_num` int DEFAULT NULL,
  `or_pay_card` varchar(20) NOT NULL,
  PRIMARY KEY (`or_num`),
  KEY `or_me_id` (`or_me_id`),
  KEY `or_sh_num_idx` (`or_sh_num`),
  CONSTRAINT `or_sh_num` FOREIGN KEY (`or_sh_num`) REFERENCES `shipping` (`sh_num`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`or_me_id`) REFERENCES `member` (`me_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('2021091305024424','qwe123','2021-09-13 17:44:02','결제취소','임꺽정',3000,0,1650,'2021-09-15 00:00:00',70,'card'),('2021091305071294','qwe123','2021-09-13 17:12:07','결제취소','임꺽정',3000,0,1650,'2021-09-15 00:00:00',65,'card'),('2021091305143757','qwe123','2021-09-13 17:37:14','결제취소','임꺽정',3000,0,1650,'2021-09-15 00:00:00',68,'card'),('2021091305352984','qwe123','2021-09-13 17:29:35','결제취소','임꺽정',1000,0,1450,'2021-09-15 00:00:00',67,'card'),('2021091305473984','qwe123','2021-09-13 17:39:47','결제취소','임꺽정',1000,0,1450,'2021-09-15 00:00:00',69,'card'),('2021091305571854','qwe123','2021-09-13 17:18:57','결제취소','임꺽정',1000,0,1450,'2021-09-15 00:00:00',66,'card');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13 17:48:27
