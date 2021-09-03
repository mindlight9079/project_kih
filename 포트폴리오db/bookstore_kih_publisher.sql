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
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `pu_num` int NOT NULL AUTO_INCREMENT,
  `pu_name` varchar(50) NOT NULL,
  `pu_phone` varchar(50) NOT NULL,
  `pu_ceo` varchar(50) NOT NULL,
  PRIMARY KEY (`pu_num`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'어크로스','070-8724-0876','김형보'),(2,'현대지성','070-7791-2139','박명곤'),(3,'유유','1544-1900','조성웅'),(4,'문학동네','031-955-8888','염현숙, 김소영'),(5,'웅진지식하우스','1577-1500','이재진'),(6,'한빛미디어','02-325-0384','김태헌'),(7,'주류성','02-3481-1024','최병식'),(8,'가톨릭출판사','1544-1886','염수정'),(9,'이야기가있는집',' 02-6215-1245',''),(10,'포레스트북스','02-332-5855','김선준'),(11,'걷는사람','02-323-2602','김성규'),(12,'Flatiron Books','',''),(13,'Knopf Publishing Group','',''),(14,'자음과모음','02-324-2347','정은영'),(15,'수오서재','031-955-9793','장건태/황은희'),(16,'규장','02-2058-0340','여진구'),(17,'현대문학','02)2017-0293~0295','김영정'),(18,'글항아리','031-955-8897','강성민'),(19,'PAGODA Books','02-6940-4070','고루다'),(20,'자이언트북스','070-7770-8838 ','지영주'),(21,'중앙북스(books) ','1588-0950','이상언'),(22,'푸른역사','02-720-8920','박혜숙'),(23,'서해문집','031-955-7470','김흥식'),(24,'비아','010-3210-7834',''),(25,'어바웃어북 ','02-335-6078','이원범'),(26,'마음산책','02-362-1452','정은숙');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03  9:15:27
