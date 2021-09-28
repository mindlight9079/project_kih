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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` VALUES (137,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(138,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(139,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(140,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(141,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(142,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(143,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(144,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(145,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(146,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(147,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(148,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(149,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(150,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(151,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(152,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(153,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(154,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(155,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(156,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(157,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(158,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(159,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(160,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(161,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(162,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(163,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(164,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(165,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(166,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(167,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(168,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(169,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(170,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(171,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(172,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(173,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(174,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678'),(175,'임꺽정',' 13524,경기 성남시 분당구 대왕판교로606번길 45  (삼평동)','13524,경기 성남시 분당구 삼평동 653  (삼평동)','01012345678');
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

-- Dump completed on 2021-09-23 15:02:55