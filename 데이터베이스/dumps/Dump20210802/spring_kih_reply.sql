-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: spring_kih
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
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `rp_num` int NOT NULL AUTO_INCREMENT,
  `rp_bd_num` int NOT NULL,
  `rp_me_id` varchar(15) NOT NULL,
  `rp_content` longtext NOT NULL,
  `rp_valid` varchar(1) NOT NULL DEFAULT 'I',
  `rp_regDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rp_upDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rp_num`),
  KEY `rp_bd_num_idx` (`rp_bd_num`),
  KEY `rp_me_id_idx` (`rp_me_id`),
  CONSTRAINT `rp_bd_num` FOREIGN KEY (`rp_bd_num`) REFERENCES `board` (`num`),
  CONSTRAINT `rp_me_id` FOREIGN KEY (`rp_me_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,31,'qwe123','댓글 테스트','I','2021-07-21 10:47:37','2021-07-21 10:47:37'),(2,31,'abc123','댓글 테스트2','I','2021-07-21 11:36:14','2021-07-21 11:36:14'),(3,31,'abc123','댓글 테스트3','I','2021-07-21 11:36:58','2021-07-21 11:36:58'),(4,31,'zxc123','댓글 테스트4','I','2021-07-21 11:37:42','2021-07-21 17:25:21'),(5,31,'zxc123','댓글 테스트5','D','2021-07-21 11:44:08','2021-07-22 09:34:34'),(6,32,'zxc123','잘봤습니다~^^','I','2021-07-21 17:31:08','2021-07-21 17:31:08'),(7,32,'zxc123','감사합니다~수정','I','2021-07-21 17:32:08','2021-07-22 10:07:02'),(8,33,'abc123','스프링 테스트 댓글1','I','2021-07-22 17:05:24','2021-07-22 17:05:24'),(9,30,'abc123','스프링 테스트 댓글2','I','2021-07-22 17:12:05','2021-07-22 17:12:05'),(10,35,'zxc123','스프링 테스트 댓글3 수정','I','2021-07-23 10:36:26','2021-07-23 10:36:26'),(11,34,'abc123','댓글','I','2021-07-23 10:50:23','2021-07-23 10:50:23'),(12,34,'qwe123','댓글','I','2021-07-23 11:06:09','2021-07-23 11:06:09'),(13,35,'abc123','스프링 수정','I','2021-07-23 15:25:14','2021-07-23 15:25:14'),(14,35,'abc123','테스트 수정','I','2021-07-23 15:25:19','2021-07-23 15:25:19'),(15,35,'abc123','댓글 수정','I','2021-07-23 15:25:25','2021-07-23 15:25:25');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-02  9:44:51
