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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bk_isbn` bigint NOT NULL,
  `bk_title` varchar(100) NOT NULL,
  `bk_subtitle` longtext,
  `bk_au_writer` varchar(50) NOT NULL,
  `bk_publish` varchar(50) NOT NULL,
  `bk_page` int NOT NULL,
  `bk_publish_date` date NOT NULL,
  `bk_mainImg` varchar(255) DEFAULT NULL,
  `bk_mainUpload` varchar(255) DEFAULT NULL,
  `bk_pu_num` int DEFAULT NULL,
  PRIMARY KEY (`bk_isbn`),
  KEY `bk_pu_num_idx` (`bk_publish`),
  KEY `bk_pu_num_idx1` (`bk_pu_num`),
  CONSTRAINT `bk_pu_num` FOREIGN KEY (`bk_pu_num`) REFERENCES `publisher` (`pu_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1166815781,'하버드 회복탄력성 수업','우울, 불안, 번아웃, 스트레스에 무너지지 않는 멘탈 관리','게일 가젤','현대지성',224,'2021-05-26',NULL,NULL,2),(1189683881,'우리말 어감사전','말의 속뜻을 잘 이해하고 표현하는 법','안상순','유유',378,'2021-05-04',NULL,NULL,3),(1190030926,'소크라테스 익스프레스','철학이 우리 인생에 스며드는 순간','에릭 와이너','어크로스',524,'2021-04-28',NULL,NULL,1),(8954679927,'우리, 이토록 작은 존재들을 위하여',NULL,'사샤 세이건','문학동네',360,'2021-06-04',NULL,NULL,4);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-10 17:44:53
