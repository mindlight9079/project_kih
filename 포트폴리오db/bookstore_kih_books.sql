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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bs_num` int NOT NULL AUTO_INCREMENT,
  `bs_bk_isbn` bigint NOT NULL,
  `bs_part` varchar(50) NOT NULL,
  `bs_name` varchar(50) NOT NULL,
  `bs_au_num` int NOT NULL,
  PRIMARY KEY (`bs_num`),
  KEY `bs_au_num` (`bs_au_num`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`bs_au_num`) REFERENCES `author` (`au_num`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,119134732,'역자','허선영',4),(2,1190030926,'역자','김하현',5),(3,119134732,'저자','도나 캐머런',1),(4,1190030926,'저자','에릭 와이너',3),(5,1162243074,'저자','나동빈',6),(6,1189683881,'저자','안상순',7),(7,8954681573,'저자','강화길',9),(8,1166815781,'저자','게일 가젤',8),(9,1166815781,'역자','손현선',10),(10,1250231981,'저자','안나 로슬링 뢴룬드',11),(11,1250231981,'저자','올라 로슬링',12),(12,1250231981,'저자','한스 로슬링',13),(13,525657746,'저자','Michelle Zauner',14),(14,1167740009,'저자','제이머 헌트',15),(15,1167740009,'역자','홍경탁',16),(16,8954447384,'저자','로버트 판타노',17),(17,8954447384,'역자','노지양',18),(18,1190382431,'저자','김동우',19),(19,1165042304,'저자','햇살콩',20),(20,896735939,'저자','남보라',21),(21,896735939,'저자','박주희',22),(22,896735939,'저자','전혼잎',26),(23,8962818094,'저자','박주희',27),(24,1191824004,'저자','김초엽',28),(25,8927812476,'저자','한태희',29),(26,1156122015,'저자','이길상',30),(27,1190893789,'저자','윤준호',31),(28,1190893789,'저자','윤상철',32),(29,1190893789,'저자','김주희',33),(30,1191239349,'저자','존 폴킹혼',34),(31,1191239349,'역자','우종학',35),(32,1190893924,'저자','장민지',36),(33,1187150916,'저자','이재호',37),(34,1166816923,'저자','조셉 비카르트',38),(35,1166816923,'역자','황성연',39),(36,8960906883,'저자','박서련',40);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-06 17:44:57
