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
  `bk_country` varchar(50) NOT NULL,
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
INSERT INTO `book` VALUES (119134732,'카인드 KIND','아주 작은 친절의 힘','도나 캐머런','포레스트북스',320,'2021-07-29','/2021/08/17/f10abedd-4a6a-46ce-a4a8-aa76d9031ca5_eebb9683-11f3-43b8-94c7-4ac86522a79d_카인드.jpg',10,'해외'),(525657746,'Crying in H Mart: A Memoir','','Michelle Zauner','Knopf Publishing Group',256,'2021-04-20','/2021/08/17/e5df8579-a0ed-4c7e-9ce9-f84960641110_crying in h mart.jpg',13,'외국'),(896735939,'중간착취의 지옥도','합법적인 착복의 세계와 떼인 돈이 흐르는 곳','남보라, 박주희, 전혼잎','글항아리',280,'2021-08-12','/2021/08/17/9b83113b-b42a-4acf-b250-b27f82237da0_중간착취의 지옥도.jpg',18,'국내'),(1156122015,'커피 세계사+한국 가배사','','이길상','푸른역사',424,'2021-08-19','/2021/08/24/f4eca6d4-3a5a-41c2-824d-d201a68b0ccb_커피 세계사.jpg',22,'국내'),(1162243074,'이것이 취업을 위한 코딩 테스트다 with 파이썬','취업과 이직을 결정하는 알고리즘 인터뷰 완벽 가이드, C/C++, 자바 코드 제공','나동빈','한빛미디어',604,'2020-08-05','/2021/08/17/640be160-b7de-43c7-9ac6-58cad0abab07_ce4bd3d8-0ba3-49a1-bc7b-703082c9d2b8_이것이 취업을 위한 코딩 테스트다.jpg',6,'국내'),(1165042304,'쓰담쓰닮 바울서신','갈·엡·빌·골·살전·살후','햇살콩','규장',168,'2021-08-13','/2021/08/17/a7a28a9d-3247-43b3-bc6c-abcb1ccb960c_쓰담쓰닮 바울서신.jpg',16,'국내'),(1166815781,'하버드 회복탄력성 수업','우울, 불안, 번아웃, 스트레스에 무너지지 않는 멘탈 관리','게일 가젤','현대지성',224,'2021-05-26','/2021/08/12/892f9000-6734-4a74-a271-9030ff0ebcf7_하버드 회복탄력성 수업.jfif',2,'해외'),(1166816923,'결정 수업','그들은 어떻게 더 나은 선택을 했는가?','조셉 비카르트','현대지성',288,'2021-08-02','/2021/08/24/918a7dbe-fb1b-4cfe-91a7-a50f90c9d607_결정수업.jpg',2,'해외'),(1167740009,'스케일이 전복된 세계','무한 확장되고 복잡해지는 21세기 문제들의 공통점','제이머 헌트','어크로스',296,'2021-07-21','/2021/08/17/ec618c80-4e9d-4fe8-b0a1-af50e45a2a55_스케일이 전복된 세계.jpg',1,'해외'),(1186761369,'일 잘하고 일찍 퇴근하겠습니다','','하하부장','이야기가있는집',288,'2021-08-10','/2021/08/12/877c0479-edc6-45e2-aa6b-01d79fc00afd_file',9,'국내'),(1187150916,'미술관에 간 해부학자','명화로 읽는 인체의 서사','이재호','어바웃어북',438,'2021-07-05','/2021/08/24/1aa8dd67-f925-431d-9804-b36487fdd940_미술관에 간 해부학자.jpg',25,'국내'),(1189683881,'우리말 어감사전','말의 속뜻을 잘 이해하고 표현하는 법','안상순','유유',378,'2021-05-04','/2021/08/12/b920585c-2af7-409f-80c3-fa30ab1e66b5_어감.jfif',3,'국내'),(1190030926,'소크라테스 익스프레스','철학이 우리 인생에 스며드는 순간','에릭 와이너','어크로스',524,'2021-04-28','/2021/08/13/27d024ca-4ccf-4ad1-8a05-1fb71ee1baea_소크라테스 익스프레스.jpg',1,'해외'),(1190382431,'뭉우리돌의 바다','국외독립운동 이야기-인도, 멕시코, 쿠바, 미국 편','김동우','수오서재',440,'2021-07-29','/2021/08/17/9527aecf-e218-4ee7-98a9-d448e2c604d3_뭉우리돌의 바다.jpg',15,'국내'),(1190893789,'라이선스LP 연대기 : 비틀스에서 딥 퍼플까지, 퀸에서 너바나까지','입문자와 수집가 모두를 위한 한국 라이선스LP의 모든 것 ','윤준호, 윤상철, 김주희','서해문집',536,'2021-08-05','/2021/08/24/00ca7c69-71ea-45a5-9bbf-cd26a4fafca7_라이선스 LP연대기.jpg',23,'국내'),(1190893924,'여자들은 집을 찾기 위해 집을 떠난다','이주한 1인가구 여성청년들이 살아가는 세계','장민지','서해문집',284,'2021-08-27','/2021/08/24/5a88feb8-0d3f-4e61-90ac-9a2516b3c2d9_여자들은 집을 찾기 위해 집을 떠난다.jpg',23,'국내'),(1191239349,'쿼크, 카오스, 그리스도교','종교와 과학에 관한 질문들','존 폴킹혼','비아',208,'2021-08-03','/2021/08/24/7146afff-056f-43e5-8603-dcede8c074df_쿼크, 카오스, 그리스도교.jpg',24,'해외'),(1191262448,'아는 낱말의 수만큼 밤이 되겠지','','임수현','걷는사람',158,'2021-07-13','/2021/08/12/92ffb135-336f-4bba-9318-dbb4801a3b14_file',11,'국내'),(1191824004,'지구 끝의 온실','','김초엽','자이언트북스',392,'2021-08-18','/2021/08/24/0401497f-2a57-4b0c-9467-cd0904606eb7_지구 끝의 온실.jpg',20,'국내'),(1250231981,' Factfulness : The Ten Reasons We\'re Wrong About the World','','안나 로슬링 뢴룬드, 올라 로슬링, 한스 로슬링','Flatiron Books',352,'2019-04-02','/2021/08/16/1203a92a-8547-4f72-bedf-446913dc8c72_Factfulness.jpg',12,'외국'),(8901250012,'강원국의 어른답게 말합니다',' 품격 있는 삶을 위한 최소한의 말공부','강원국','웅진지식하우스',272,'2021-05-26','/2021/08/12/291e72cf-2588-4b4a-ae54-5d1249e8c988_file',5,'국내'),(8927812476,'후각과 환상','의학자가 걷고, 맡고, 기록한 세상의 냄새들','한태희','중앙북스(books)',252,'2021-07-26','/2021/08/24/59b7d064-497a-4862-b796-9abdc11fc02f_후각과 환상.jpg',21,'국내'),(8932117810,'안셀름 그륀의 의심 포용하기','당신의 믿음에 나쁜 의심은 없다','안셀름 그륀','가톨릭출판사',176,'2021-07-22','/2021/08/12/dca74644-0bff-4fd0-bd8a-b1e4893b6a91_안셀름 그륀의 의심 포용하기.jpg',8,'해외'),(8954447384,'다만 죽음을 곁에 두고 씁니다','','로버트 판타노','자음과모음',260,'2021-08-10','/2021/08/17/ffb9fe4f-1b1a-435b-b319-bf840f7e1b45_다만 죽음을 곁에 두고.jpg',14,'해외'),(8954679927,'우리, 이토록 작은 존재들을 위하여','','사샤 세이건','문학동네',360,'2021-06-04','/2021/08/12/2c1b0cda-b8bf-4666-b865-b81272ed4c68_우리, 이토록 작은 존재들을 위하여.jpg',4,'해외'),(8954681573,'대불호텔의 유령 ','','강화길','문학동네',312,'2021-08-13','/2021/08/13/aa5a4c66-884f-4017-a88e-f405497c917a_대불호텔의 유령.jpg',4,'국내'),(8960906883,'코믹 헤븐에 어서 오세요','','박서련','마음산책',200,'2021-08-20','/2021/08/26/4830885d-a149-4fd6-a903-e6b0340397a6_코믹 헤븐에 어서 오세요.jpg',26,'국내'),(8962464446,'새로 쓴 동양사','동양을 위한 변명','김경환','주류성',544,'2021-08-09','',7,'국내'),(8962818094,'파고다 첫토익 PART 5&6','토익 필수 문법, 파트 5, 6 문제풀이 전략서','박주희','PAGODA Books ',428,'2018-01-05','/2021/08/17/758be1ca-bc70-4698-8aa8-326003fafb26_파고다 첫토익.jpg',19,'국내');
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

-- Dump completed on 2021-09-06 17:44:58
