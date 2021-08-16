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
INSERT INTO `book` VALUES (119134732,'카인드 KIND','아주 작은 친절의 힘','도나 캐머런','포레스트북스',320,'2021-07-29','/2021/08/12/eebb9683-11f3-43b8-94c7-4ac86522a79d_카인드.jpg',10),(1162243074,'이것이 취업을 위한 코딩 테스트다 with 파이썬','취업과 이직을 결정하는 알고리즘 인터뷰 완벽 가이드, C/C++, 자바 코드 제공','나동빈','한빛미디어',604,'2020-08-05','/2021/08/13/57e9237f-3a74-4247-bf16-202830f76ed2_이것이 코딩 테스트다.jpg',6),(1166815781,'하버드 회복탄력성 수업','우울, 불안, 번아웃, 스트레스에 무너지지 않는 멘탈 관리','게일 가젤','현대지성',224,'2021-05-26','/2021/08/12/892f9000-6734-4a74-a271-9030ff0ebcf7_하버드 회복탄력성 수업.jfif',2),(1186761369,'일 잘하고 일찍 퇴근하겠습니다','','하하부장','이야기가있는집',288,'2021-08-10','/2021/08/12/877c0479-edc6-45e2-aa6b-01d79fc00afd_file',9),(1189683881,'우리말 어감사전','말의 속뜻을 잘 이해하고 표현하는 법','안상순','유유',378,'2021-05-04','/2021/08/12/b920585c-2af7-409f-80c3-fa30ab1e66b5_어감.jfif',3),(1190030926,'소크라테스 익스프레스','철학이 우리 인생에 스며드는 순간','에릭 와이너','어크로스',524,'2021-04-28','/2021/08/13/27d024ca-4ccf-4ad1-8a05-1fb71ee1baea_소크라테스 익스프레스.jpg',1),(1191262448,'아는 낱말의 수만큼 밤이 되겠지','','임수현','걷는사람',158,'2021-07-13','/2021/08/12/92ffb135-336f-4bba-9318-dbb4801a3b14_file',11),(1250231981,' Factfulness : The Ten Reasons We\'re Wrong About the World','','안나 로슬링 뢴룬드, 올라 로슬링, 한스 로슬링','Flatiron Books',352,'2019-04-02','/2021/08/16/1203a92a-8547-4f72-bedf-446913dc8c72_Factfulness.jpg',12),(8901250012,'강원국의 어른답게 말합니다',' 품격 있는 삶을 위한 최소한의 말공부','강원국','웅진지식하우스',272,'2021-05-26','/2021/08/12/291e72cf-2588-4b4a-ae54-5d1249e8c988_file',5),(8932117810,'안셀름 그륀의 의심 포용하기','당신의 믿음에 나쁜 의심은 없다','안셀름 그륀','가톨릭출판사',176,'2021-07-22','/2021/08/12/dca74644-0bff-4fd0-bd8a-b1e4893b6a91_안셀름 그륀의 의심 포용하기.jpg',8),(8954679927,'우리, 이토록 작은 존재들을 위하여','','사샤 세이건','문학동네',360,'2021-06-04','/2021/08/12/2c1b0cda-b8bf-4666-b865-b81272ed4c68_우리, 이토록 작은 존재들을 위하여.jpg',4),(8954681573,'대불호텔의 유령 ','','강화길','문학동네',312,'2021-08-13','/2021/08/13/aa5a4c66-884f-4017-a88e-f405497c917a_대불호텔의 유령.jpg',4),(8962464446,'새로 쓴 동양사','동양을 위한 변명','김경환','주류성',544,'2021-08-09','',7);
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

-- Dump completed on 2021-08-16 17:54:03
