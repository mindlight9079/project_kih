-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: kih9079
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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `me_id` varchar(50) NOT NULL,
  `me_nickname` varchar(50) NOT NULL,
  `me_password` varchar(100) NOT NULL,
  `me_gender` varchar(1) NOT NULL DEFAULT 'M',
  `me_birth` varchar(20) NOT NULL,
  `me_phone` varchar(20) NOT NULL,
  `me_address` longtext NOT NULL,
  `me_name` varchar(50) NOT NULL,
  `me_resident_num` varchar(30) NOT NULL,
  `me_email` varchar(30) NOT NULL,
  `me_point` int NOT NULL DEFAULT '0',
  `me_grade` varchar(50) NOT NULL DEFAULT 'NORMAL',
  `me_jAddress` longtext NOT NULL,
  `me_session_id` varchar(255) DEFAULT NULL,
  `me_session_limit` datetime DEFAULT NULL,
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('abc123','길동이','$2a$10$yaxmVHWXBYq3c6ftiX7UROBvrkAQZMCAnPh8IY5K1B4hOgnLJ5YTy','F','1993년3월12일','01012345678','13485,경기 성남시 분당구 판교로 20  (판교동, 판교원마을3단지아파트)','홍길동','9302201234567','abc123@hanmail.net',0,'ADMIN','13485,경기 성남시 분당구 판교동 629  (판교동, 판교원마을3단지아파트)','none','2021-09-16 15:36:45'),('qwe123','꺽정이','$2a$10$31y8aP3yxYs/rmXdk22qpOM26HCG4vUwBMLkY0ue.f4d.t6Tx53zW','M','1990년10월19일','01097940220','28711,충북 청주시 상당구 청남로 2178  (석교동)','임꺽정','9010191111111','yakoojaka@naver.com',3470,'NORMAL','28711,충북 청주시 상당구 석교동 439  (석교동)','4B982DC7829A4EBA73D2E819F959ED3E','2021-09-30 00:00:00');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-23 15:02:54
