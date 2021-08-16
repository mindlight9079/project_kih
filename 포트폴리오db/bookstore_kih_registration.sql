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
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `re_code` int NOT NULL AUTO_INCREMENT,
  `re_bk_isbn` bigint NOT NULL,
  `re_title` varchar(100) NOT NULL,
  `re_price` int NOT NULL,
  `re_amount` int DEFAULT '0',
  `re_catagory` varchar(20) NOT NULL,
  `re_contents` longtext NOT NULL,
  `re_choice` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`re_code`),
  KEY `re_bk_isbn_idx` (`re_bk_isbn`),
  CONSTRAINT `re_bk_isbn` FOREIGN KEY (`re_bk_isbn`) REFERENCES `book` (`bk_isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,119134732,'카인드 KIND',15000,1,'자기계발','  친절함은 우리의 삶을 어떻게 바꾸는가\r\n감사와 미소, 이해와 배려가 불러온 위대한 변화\r\n\r\n2020 뉴욕 시티 빅북 어워드 수상작\r\n2019 에릭 호퍼 어워드 수상작\r\n2018 커커스리뷰 베스트북 선정\r\n\r\n당신은 ‘친절’이라는 말을 들으면 어떤 생각이 드는가? ‘착하다’, ‘온순하다’, ‘순종적이다’와 같은 이미지가 떠오르는가? 혹은 나약한 태도를 가진 사람들이 스스로를 방어하기 위한 수단이라고 생각하고 있지는 않은가? 오늘날 친절이 사라진 광경은 어디에서든 쉽게 목격할 수 있다. 진심 어린 배려와 공손한 말투 대신 무시와 경멸, 조롱이 오가고 다른 사람보다 소리 높여 고함을 지르는 것이 상대보다 우월하다는 것을 입증하는 전략처럼 여겨지고 있다. 그렇다면 친절이란 현대 사회에서 무의미한 가치일까?\r\n\r\n다양한 비영리단체에서 오랫동안 일하며 인간관계, 비즈니스, 기업 문화 등 여러 주제에 대해 통찰력 있는 글을 써온 세계적인 작가 겸 컨설턴트인 도나 캐머런은 무수히 많은 사람을 만나 소통하며 한 가지 의문을 갖게 되었다. ‘왜 어떤 사람들은 하루 종일 불만이 가득한 표정으로 조급하게 행동하며 불쾌감을 주는 반면 또 어떤 사람들은 지나는 곳마다 즐거움과 평온함을 남기며 매일을 순탄하게 살아가는 것처럼 보이는 걸까?’ 그녀가 찾아낸 답은 바로 이것이었다. 타인에게 친절하느냐, 그렇지 않느냐.\r\n\r\n아주 작은 친절의 힘이 가져오는 놀라운 변화에 대해 깨달은 그녀는 자신도 1년 동안 친절한 사람이 되기로 결심한 뒤 자신의 블로그에 그 과정을 자세히 기록했다. 그리고 그 안에서 얻은 통찰과 교훈, 지혜를 『카인드』라는 책으로 완성해냈다. 이해와 배려, 감사와 존중이 불러오는 위대한 변화에 대해 일깨워준 이 책은 출간 즉시 커커스 리뷰 베스트북, 뉴욕 시티 빅북 어워드, 에릭 호퍼 어워드 등에서 크고 작은 상을 받으며 화제를 모았다.\r\n\r\n공손함과 배려심이 실종된 오늘날의 세상 때문에 낙담할 때가 있는가? 사람들이 서로에게서 좋은 점을 찾아내고, 모든 사람이 다 똑같이 중요하다는 태도로 서로를 대하기를 바라는가? 삶과 더 깊은 유대관계를 맺고, 사람들 사이에 긍정적이고 건설적인 소통이 오가기를 바라는가? 친절이 변화를 일으켜 궁극적으로 세상을 바꿀 수 있다는 믿음에 공감한다면 『카인드』이야말로 훌륭한 길잡이가 되어줄 것이다.','Y'),(3,1190030926,'소크라테스 익스프레스',18000,1,'철학','     “인생에서 길을 잃는 수많은 순간마다?이 철학자들의 목소리가 들려올 것이다”\r\n[뉴욕타임스] 베스트셀러 작가 에릭 와이너와 함께 떠나는 철학자행 특급 열차!\r\n2020 아마존 베스트 논픽션, 2020 NPR 올해의 책\r\n\r\n- 소크라테스처럼 궁금해하고, 루소처럼 걷고, 소로처럼 볼 수 있을까?\r\n- 간디는 어떻게 싸웠을까, 에픽테토스가 역경에서 벗어난 방법은 무엇일까?\r\n- 노화와 죽음에 대해 보부아르와 몽테뉴는 뭐라고 했을까?\r\n- 에피쿠로스처럼 즐기고, 에픽테토스처럼 역경에 대처할 수 있을까?\r\n\r\n프랑스 사상가 모리스 리즐링은 말한다. “결국 인생은 우리 모두를 철학자로 만든다.” 하지만 인생이 호락호락하지 않음을 우리는 수시로 깨닫는다. 여기, 인생에서 가장 중요한 질문을 하고 답을 찾기 위해 평생을 바친 철학자들이 있다. 그들에게 삶에 도움이 되는 조언을 받는 것은 어떨까?\r\n《소크라테스 익스프레스》는 마르쿠스 아우렐리우스부터 몽테뉴까지 역사상 가장 위대한 철학자들을 만나러 떠나는 여행기이자, 그들의 삶과 작품 속의 지혜가 우리 인생을 개선하는 데 어떻게 도움이 되는지 답을 찾아가는 책이다. 매력적인 글솜씨로 “빌 브라이슨의 유머와 알랭 드 보통의 통찰력이 만났다”는 평가를 받는 에릭 와이너가 이 여행의 동반자로 나선다.\r\n\r\n“우리에겐 늘 지혜가 필요하지만 삶의 단계마다 필요한 지혜가 다르다. 열다섯 살에게 중요한 ‘어떻게’ 질문과 서른다섯 살, 또는 일흔다섯 살에게 중요한 질문은 같지 않다. 철학은 각 단계에 반드시 필요한 이야기를 들려준다.”','Y'),(4,8954681573,'대불호텔의 유령',14000,1,'소설','2020 젊은작가상 대상 수상작가, 강화길 소설세계의 진화!\r\n\r\n단편소설 「음복飮福」으로 2020 젊은작가상 대상을 거머쥐며 한국형 여성 스릴러 소설을 대표하는 작가가 된 강화길의 두번째 장편소설 『대불호텔의 유령』이 출간되었다. 작가는 첫 소설집 『괜찮은 사람』과 첫 장편소설 『다른 사람』을 통해 여성의 일상에 밀착된 폭력이라는 사회적 문제를 조명했고, 두번째 소설집 『화이트 호스』에서는 눈에 보이지 않지만 여성의 삶을 억압하고 한계 지어온 거대한 구조를 부각시켰다. 강화길 소설은 스릴러 서사 속에서 인물들의 불안과 공포를 독자 스스로 감각하게 함으로써 이러한 주제의식을 효과적으로 전달해 보였다.\r\n\r\n혐오라는 현상에서 출발해 그것의 본질을 밝혀내려는 여정을 계속해온 강화길은 『대불호텔의 유령』에 이르러 한국사회의 밑바닥에 깔린 ‘원한’이라는 정서를 성공적으로 소설화해낸다. 한국전쟁의 상흔이 전국을 지배하고 있던 1950년대, 귀신 들린 건물 ‘대불호텔’에 이끌리듯 모여든 네 사람이 겪는 공포스러운 경험을 다룬 이 이야기는 각각의 인물들이 살아남기 위해 품어야만 했던 어둑한 마음을 심령현상과 겹쳐낸 강화길식 고딕 호러 소설이다. 독자는 이 소설을 읽는 동안 자신의 내면에 대물림된 그 뿌리깊은 감정들이 건드려지는 것을 체험하게 된다. 서로를 믿지 못한 끝에 해치게 만드는 그 유구한 저주에 자신 또한 사로잡혀 있었는지 모른다는 서늘한 자각이 한여름의 무더위를 씻어내린다.','Y'),(5,1189683881,'우리말 어감사전',17000,1,'인문',' 책소개\r\n사전 편찬의 장인이 국어사전에 다 담지 못한 우리말의 ‘속뜻’. 확실히 검증된 객관적인 의미만을 간결하게 수록하는 사전에서는 쉽게 드러내기 어려웠던 편찬자의 고민과 생각이 알뜰하게 담겨 있다. 가령 ‘가치’와 ‘값어치’, ‘헤엄’과 ‘수영’은 비슷하지만 어감, 뉘앙스, 말맛, 쓰임 등이 다르다. 하지만 지금의 사전은 이 섬세한 차이를 제대로 보여 주지 못한다. 저자는 사람들이 흔히 쓰는, 뜻과 쓰임에 공통점이 있는 낱말들을 찾아 모으고 속뜻을 궁리해서 어감의 차이가 발생하는 지점을 명확하게 보여 준다.\r\n\r\n언어는 말로 명료하게 표현할 수 있는 ‘명시적 지식’이라기보다 무의식에 내면화된 ‘암묵적 지식’이기에 우리는 이미 비슷한 단어를 구분해 쓰면서도 그 말들이 왜 다르며 무엇이 다른지 설명하지 못한다. 이 책은 바로 이런 상황에서 명쾌한 답을 주는 지침서가 될 것이며, ‘찾아보는 사전’을 넘어 ‘읽는 사전’의 가능성을 보여 준다.','Y'),(6,1166815781,'하버드 회복탄력성 수업',13000,1,'자기계발','“그래서 회복탄력성은 어떻게 키우는 거죠?”\r\n지금 바로 시작하는 18가지 회복탄력성 훈련\r\n\r\n“하버드 최고의 회복탄력성 전문가인 게일 가젤 박사는 당신이 어떤 인생을 살아왔든 상관없이 회복탄력성을 높이는 데 필요한 가장 적확한 방법을 알려준다.”\r\n- 마셜 골드스미스(세계 최고의 경영 컨설턴트, 『트리거』, 『모조』 저자)\r\n\r\n이른바 ‘조용한 학살’이 시작됐다. 코로나19 이후 위기에 내몰린 사람들이 조용히 설 자리를 잃어간다. 특히 스스로 목숨을 끊는 청년들이 늘고 있다. 최근 통계에 따르면 20~30대 여성의 자살시도자 비율이 가장 큰 증가세를 보인다. 고용 위기와 경제적 부담, 폭력과 범죄, 질병과 사고 등이 하루 이틀 문제는 아니지만, 코로나19 이후 사상 최대로 심각한 수준에 이르렀다. 그래서 ‘코로나블루’에 이어 ‘코로나블랙’이라는 신조어가 나올 만큼 우울증, 공황장애, 수면장애 등 정신건강의 적신호를 드러내는 사람들이 많아졌다.\r\n지금은 그 어느 때보다 삶의 방역을 위한 ‘마음백신’이 필요한 시기다. 코로나19 상황이나 사회구조적 환경을 당장 바꿀 수는 없겠지만, 그 환경을 바라보는 내면의 태도나 관점은 충분히 바꿀 수 있다. 이처럼 외부 환경에 따른 우울과 불안, 스트레스에 무너지지 않고 역경과 시련을 극복하는 멘탈의 힘을 ‘회복탄력성’이라 한다. 회복탄력성은 비범한 특정인이 아닌 누구에게나 잠재되어 있는 능력이다. 다만 우리가 그 힘을 꺼내 쓰는 방법에 관해 따로 배우지 않았을 뿐이다.\r\n\r\n하버드 최고의 회복탄력성 전문가인 게일 가젤 박사는 강도 높은 업무 환경에서 극심한 스트레스와 우울증, 번아웃에 빠진 의사들을 상대로 이 회복탄력성 원리를 적용해 놀라운 효과를 거두었다. 지금까지 500명이 넘는 의사들이 그의 도움을 받고 내면의 위기를 극복해 자타공인 ‘의사들의 의사’로 불린다. 그도 어린 시절 가정 폭력의 피해자로 힘든 시기를 보냈지만 회복탄력성 훈련으로 고통을 극복해냈고, 이를 계기로 힘겨운 시간을 보내는 사람들의 마음에 ‘평정심’을 선물하고 있다.\r\n\r\n이 책에서 가젤 박사는 풍부한 경험과 지식을 바탕으로 회복탄력성의 원리를 알기 쉽게 설명한다. 회복탄력성을 위해 필요한 마음 근육을 6가지 키워드(대인관계, 유연성, 끈기, 자기조절, 긍정성, 자기돌봄)로 명쾌하게 정리했다. 직접 상담한 다양한 사례를 소개하며 독자가 자기 상황에 직접 적용하도록 돕는다. 학술용어 사용은 최소화하되 의학, 심리학의 최신 연구 결과를 통해 회복탄력성의 실제적인 힘을 느껴보도록 했다. 무엇보다 이 책은 실용적이다. 명상, 뇌과학, 긍정심리학, 감성지능 등을 활용한 “18가지 회복탄력성 훈련법”은 지금 바로 각자 삶에 적용해볼 수 있다.','Y'),(7,1162243074,'이것이 취업을 위한 코딩 테스트다 with 파이썬',34000,1,'IT/모바일',' 나동빈 저자의 유튜브 라이브 방송 https://www.youtube.com/c/dongbinna\r\n\r\nIT 취준생이라면 누구나 입사하고 싶은 카카오 · 삼성전자 · 네이버 · 라인!\r\n\r\n취업의 성공 열쇠는 알고리즘 인터뷰에 있다!\r\n\r\n\r\n\r\nIT 취준생이라면 누구나 가고 싶어 하는 카카오, 라인, 삼성전자의 2016년부터 2020년까지의 코딩 테스트와 알고리즘 대회의 기출문제를 엄선하여 수록했다. 최근 5년간의 코딩 테스트 기출문제를 분석하여 반드시 알아야 하는 알고리즘을 8가지로 정리했다. 8가지 핵심 알고리즘 이론을 쉽게 설명하고, 관련 실전 문제를 풀이했다. 출제 유형 분석, 이론 설명, 기출문제 풀이까지! 어떤 코딩 테스트도 대비할 수 있을 것이다. 코딩 테스트에서 주로 선택하는 파이썬을 기반으로 설명되어 있으며, 파이썬 코드 외에도 C/C++, 자바 코드를 추가로 제공한다.','Y'),(8,1250231981,'Factfulness : The Ten Reasons We\'re Wrong About the World',12000,1,'경영/경제',' 전 세계 100만부 돌파! 세계 지성계를 사로잡은 글로벌 베스트셀러\r\n강력한 사실을 바탕으로 세상을 정확하게 바라보는 방법을 담은 혁명적 저작\r\n\r\n· 빌 게이츠가 미국 모든 대학 졸업생에게 직접 선물한 화제의 책\r\n· 버락 오바마 전 대통령, 스티븐 핑커 하버드대 교수 강력 추천\r\n· [옵저버] 선정 금세기 최고의 책! [뉴욕타임스][월스트리트저널][가디언] 베스트셀러\r\n\r\n전 세계적으로 확증편향이 기승을 부리는 탈진실의 시대에, 막연한 두려움과 편견을 이기는 팩트의 중요성을 일깨우는 세계적 역작! 세계를 이해하기 위한 13가지 문제에서 인간의 평균 정답률은 16%, 침팬지는 33%. 우리는 왜 침팬지를 이기지 못하는가? 똑똑하고 현명한 사람일수록 세상의 참모습을 정확히 알지 못한다! ‘느낌’을 ‘사실’로 인식하는 인간의 비합리적 본능 10가지를 밝히고, 우리의 착각과 달리 세상이 나날이 진보하고 있음을 명확한 데이터와 통계로 증명한 놀라운 통찰. 세상을 바라보는 방식을 바꾸고 미래의 위기와 기회에 대처하기 위해 반드시 읽어야 할 필독서이다.\r\n\r\n책은 출간과 동시에 세계 지성계를 사로잡으며 뜨거운 화제를 모았다. 버락 오바마 전 대통령은 반드시 읽어야 할 책 목록 5권 중에 하나로 추천했다. 스티븐 핑커 하버드대학 심리학과 교수는 풍부한 데이터를 통해 우리의 인지과정이 어떻게 우리를 잘못된 길로 이끌 수 있는지를 합리적으로 설명한 책으로, [네이처]는 읽는 것만으로도 우리의 세계관이 완전히 뒤바뀔 거라며 극찬했다. 또한 [옵저버]는 금세기 최고의 책으로 선정했고, [뉴욕타임스][월스트리트저널][가디언][선데이타임스] 등 유수 언론의 베스트셀러에 오르며 출간 이후 6개월 만에 100만부를 돌파하는 기록을 세웠다. 현재 미국, 영국, 프랑스, 독일, 일본 등 40여 국가에서 출간이 확정되었다.\r\n\r\n전 세계적으로 확증편향이 기승을 부리는 탈진실(post-truth)의 시대에, 『팩트풀니스』는 막연한 두려움과 편견을 이기는 팩트의 중요성을 일깨우는 역작이다. 빈곤, 교육, 환경, 에너지, 인구 등 다양한 영역에서 우리가 생각하는 세계와 실제 세계의 간극을 좁히고 선입견을 깨는 통찰을 제시한다. 우리의 편견과 달리 세상이 나날이 진보하고 있음을, 사실에 충실한 명확한 데이터와 통계로 이를 낱낱이 증명한다.\r\n\r\n빌 게이츠가 사회로 진출하는 청춘에게 이 책을 선물한 이유는, ‘세상은 나아지고 있다’는 긍정의 시각을 심어주는 동시에 자기 신념이 사실과 부합하는지 돌아보라는 충고이기도 할 것이다. 우물 안에 계속 갇혀 살기보다 올바르게 사는 데 관심이 있다면, 세계관을 흔쾌히 바꿀 마음이 있다면, 본능적 반응 대신 비판적 사고를 할 준비가 되었다면, 이 책을 반드시 읽어보기 바란다. 한국 사회가 나아갈 방향에도 중요한 이정표가 되어줄 것이다.\r\n\r\n\"One of the most important books I\'ve ever read--an indispensable guide to thinking clearly about the world.\" - Bill Gates\r\n\r\n\"Hans Rosling tells the story of \'the secret silent miracle of human progress\' as only he can. But Factfulness does much more than that. It also explains why progress is so often secret and silent and teaches readers how to see it clearly.\" --Melinda Gates\r\n\r\n\"Factfulness by Hans Rosling, an outstanding international public health expert, is a hopeful book about the potential for human progress when we work off facts rather than our inherent biases.\" - Former U.S. President Barack Obama\r\n\r\nFactfulness: The stress-reducing habit of only carrying opinions for which you have strong supporting facts.\r\n\r\nWhen asked simple questions about global trends--what percentage of the world\'s population live in poverty; why the world\'s population is increasing; how many girls finish school--we systematically get the answers wrong. So wrong that a chimpanzee choosing answers at random will consistently outguess teachers, journalists, Nobel laureates, and investment bankers.\r\n\r\nIn Factfulness, Professor of International Health and global TED phenomenon Hans Rosling, together with his two long-time collaborators, Anna and Ola, offers a radical new explanation of why this happens. They reveal the ten instincts that distort our perspective--from our tendency to divide the world into two camps (usually some version of us and them) to the way we consume media (where fear rules) to how we perceive progress (believing that most things are getting worse).\r\n\r\nOur problem is that we don\'t know what we don\'t know, and even our guesses are informed by unconscious and predictable biases.\r\n\r\nIt turns out that the world, for all its imperfections, is in a much better state than we might think. That doesn\'t mean there aren\'t real concerns. But when we worry about everything all the time instead of embracing a worldview based on facts, we can lose our ability to focus on the things that threaten us most.\r\n\r\nInspiring and revelatory, filled with lively anecdotes and moving stories, Factfulness is an urgent and essential book that will change the way you see the world and empower you to respond to the crises and opportunities of the future.\r\n\r\n---\r\n\r\n\"This book is my last battle in my life-long mission to fight devastating ignorance...Previously I armed myself with huge data sets, eye-opening software, an energetic learning style and a Swedish bayonet for sword-swallowing. It wasn\'t enough. But I hope this book will be.\" Hans Rosling, February 2017.','Y');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-16 17:54:04
