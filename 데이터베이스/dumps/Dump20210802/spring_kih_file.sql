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
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `num` int NOT NULL AUTO_INCREMENT,
  `board` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(1) NOT NULL DEFAULT 'I',
  `ori_name` varchar(255) NOT NULL,
  PRIMARY KEY (`num`),
  KEY `board_idx` (`board`),
  CONSTRAINT `board` FOREIGN KEY (`board`) REFERENCES `board` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (3,17,'/2021/07/14/48a1076e-405d-43f4-9c26-97d6d7fb4579_우리, 이토록 작은 존재들을 위하여.jpg','I','우리, 이토록 작은 존재들을 위하여.jpg'),(7,18,'/2021/07/15/392d57b8-206c-4414-a1ee-4e9e64859a2e_어감.jfif','D','어감.jfif'),(8,18,'/2021/07/15/f79b73a4-b455-4839-91c2-7d749a888fb0_background .png','D','background .png'),(9,18,'/2021/07/15/00fc5105-d67c-48c6-969a-4397e17d8f50_background .png','I','background .png'),(10,19,'/2021/07/15/05384697-921e-42a5-8df5-cfcaedb76a8e_water.jpg','D','water.jpg'),(11,19,'/2021/07/15/ab078fc6-1f94-4a3c-aebc-c94b81ec2884_강원국의 어른답게 말합니다..jpg','D','강원국의 어른답게 말합니다..jpg'),(12,25,'/2021/07/16/9b15bc04-9eee-4139-9410-a34ea1002d35_background .png','I','background .png'),(13,26,'/2021/07/19/2625b927-7d42-4c89-bb90-4df3c4d4fce7_하버드 회복탄력성 수업.jfif','D','하버드 회복탄력성 수업.jfif'),(14,27,'/2021/07/19/d69c1c50-caac-4b20-92a1-27ade2f9279d_포트폴리오 구상.txt','I','포트폴리오 구상.txt'),(15,28,'/2021/07/19/c740e025-1247-4c4e-a9e8-d575de847b91_우리, 이토록 작은 존재들을 위하여.jpg','D','우리, 이토록 작은 존재들을 위하여.jpg'),(16,28,'/2021/07/19/0761f30d-eeb3-4e42-a124-eca53e109a17_water.jpg','I','water.jpg'),(17,28,'/2021/07/19/8ef58e09-b95f-4049-812c-45e8360a6f5b_water.jpg','D','water.jpg'),(18,27,'/2021/07/19/9342333b-17fb-46f0-8079-5f1bb50f220a_포트폴리오 구상.txt','D','포트폴리오 구상.txt'),(19,27,'/2021/07/19/a3513e06-aac2-4c21-a78d-98909230c3f1_포트폴리오 구상.txt','D','포트폴리오 구상.txt'),(20,28,'/2021/07/19/ce852e66-27ba-4128-9cd9-cbecc4d38643_background .psd','D','background .psd'),(21,28,'/2021/07/19/ad38436b-e9a9-488e-8679-693d98fabc78_background .psd','D','background .psd'),(22,27,'/2021/07/19/e6509c82-9ae1-4e20-8d04-c4bb5c16b384_water.jpg','D','water.jpg'),(23,27,'/2021/07/19/6ab6cf14-3e51-4355-9068-7ab06c5a132c_water.jpg','D','water.jpg'),(24,27,'/2021/07/19/37dab32a-1d7c-46cb-8bf7-a6470c8ff57e_포트폴리오 구상.sql','D','포트폴리오 구상.sql'),(25,27,'/2021/07/19/c2f1f495-70d8-4439-9d54-2a1a20442a0d_포트폴리오 구상.sql','D','포트폴리오 구상.sql'),(26,28,'/2021/07/19/f69974aa-a670-4faf-a862-1d721a6a1a40_ch04_데이터 모델링.pptx','D','ch04_데이터 모델링.pptx'),(27,28,'/2021/07/19/904e6481-ec61-4aca-bd2b-f9e0275e2e07_ch04_데이터 모델링.pptx','I','ch04_데이터 모델링.pptx');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
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
