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
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `sh_num` int NOT NULL AUTO_INCREMENT,
  `sh_name` varchar(50) NOT NULL,
  `sh_doro` longtext NOT NULL,
  `sh_jibun` longtext NOT NULL,
  `sh_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`sh_num`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (42,'임꺽정',' 06267,서울 강남구 남부순환로 2609  (도곡동)','06267,서울 강남구 도곡동 957-14  (도곡동)','01011112222'),(43,'임꺽정',' 06267,서울 강남구 남부순환로 2609  (도곡동)','06267,서울 강남구 도곡동 957-14  (도곡동)','01011112222'),(44,'임꺽동','06000,서울 강남구 강남대로 708   (압구정동)','06000,서울 강남구 압구정동 386-1   (압구정동)','01000000000'),(45,'임꺽정',' 06267,서울 강남구 남부순환로 2609  (도곡동)','06267,서울 강남구 도곡동 957-14  (도곡동)','01011112222'),(46,'임꺽정',' 06267,서울 강남구 남부순환로 2609  (도곡동)','06267,서울 강남구 도곡동 957-14  (도곡동)','01011112222'),(47,'임꺽정',' 06267,서울 강남구 남부순환로 2609  (도곡동)','06267,서울 강남구 도곡동 957-14  (도곡동)','01011112222'),(48,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(49,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(50,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(51,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(52,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(53,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(54,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(55,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(56,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(57,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(58,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(59,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(60,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(61,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(62,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(63,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(64,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(65,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(66,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(67,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(68,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(69,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(70,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(71,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(72,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(73,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(74,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(75,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(76,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(77,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(78,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(79,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(80,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(81,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(82,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(83,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(84,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(85,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(86,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(87,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(88,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(89,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(90,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(91,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(92,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(93,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(94,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(95,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(96,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(97,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(98,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(99,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(100,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(101,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(102,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(103,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(104,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(105,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000'),(106,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01000000000');
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
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
