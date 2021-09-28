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
  `re_sales` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`re_code`),
  KEY `re_bk_isbn_idx` (`re_bk_isbn`),
  CONSTRAINT `re_bk_isbn` FOREIGN KEY (`re_bk_isbn`) REFERENCES `book` (`bk_isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,119134732,'카인드 KIND',15000,2,'자기계발','     친절함은 우리의 삶을 어떻게 바꾸는가\r\n감사와 미소, 이해와 배려가 불러온 위대한 변화\r\n\r\n2020 뉴욕 시티 빅북 어워드 수상작\r\n2019 에릭 호퍼 어워드 수상작\r\n2018 커커스리뷰 베스트북 선정\r\n\r\n당신은 ‘친절’이라는 말을 들으면 어떤 생각이 드는가? ‘착하다’, ‘온순하다’, ‘순종적이다’와 같은 이미지가 떠오르는가? 혹은 나약한 태도를 가진 사람들이 스스로를 방어하기 위한 수단이라고 생각하고 있지는 않은가? 오늘날 친절이 사라진 광경은 어디에서든 쉽게 목격할 수 있다. 진심 어린 배려와 공손한 말투 대신 무시와 경멸, 조롱이 오가고 다른 사람보다 소리 높여 고함을 지르는 것이 상대보다 우월하다는 것을 입증하는 전략처럼 여겨지고 있다. 그렇다면 친절이란 현대 사회에서 무의미한 가치일까?\r\n\r\n다양한 비영리단체에서 오랫동안 일하며 인간관계, 비즈니스, 기업 문화 등 여러 주제에 대해 통찰력 있는 글을 써온 세계적인 작가 겸 컨설턴트인 도나 캐머런은 무수히 많은 사람을 만나 소통하며 한 가지 의문을 갖게 되었다. ‘왜 어떤 사람들은 하루 종일 불만이 가득한 표정으로 조급하게 행동하며 불쾌감을 주는 반면 또 어떤 사람들은 지나는 곳마다 즐거움과 평온함을 남기며 매일을 순탄하게 살아가는 것처럼 보이는 걸까?’ 그녀가 찾아낸 답은 바로 이것이었다. 타인에게 친절하느냐, 그렇지 않느냐.\r\n\r\n아주 작은 친절의 힘이 가져오는 놀라운 변화에 대해 깨달은 그녀는 자신도 1년 동안 친절한 사람이 되기로 결심한 뒤 자신의 블로그에 그 과정을 자세히 기록했다. 그리고 그 안에서 얻은 통찰과 교훈, 지혜를 『카인드』라는 책으로 완성해냈다. 이해와 배려, 감사와 존중이 불러오는 위대한 변화에 대해 일깨워준 이 책은 출간 즉시 커커스 리뷰 베스트북, 뉴욕 시티 빅북 어워드, 에릭 호퍼 어워드 등에서 크고 작은 상을 받으며 화제를 모았다.\r\n\r\n공손함과 배려심이 실종된 오늘날의 세상 때문에 낙담할 때가 있는가? 사람들이 서로에게서 좋은 점을 찾아내고, 모든 사람이 다 똑같이 중요하다는 태도로 서로를 대하기를 바라는가? 삶과 더 깊은 유대관계를 맺고, 사람들 사이에 긍정적이고 건설적인 소통이 오가기를 바라는가? 친절이 변화를 일으켜 궁극적으로 세상을 바꿀 수 있다는 믿음에 공감한다면 『카인드』이야말로 훌륭한 길잡이가 되어줄 것이다.','Y',5),(3,1190030926,'소크라테스 익스프레스',18000,3,'철학','      “인생에서 길을 잃는 수많은 순간마다?이 철학자들의 목소리가 들려올 것이다”\r\n[뉴욕타임스] 베스트셀러 작가 에릭 와이너와 함께 떠나는 철학자행 특급 열차!\r\n2020 아마존 베스트 논픽션, 2020 NPR 올해의 책\r\n\r\n- 소크라테스처럼 궁금해하고, 루소처럼 걷고, 소로처럼 볼 수 있을까?\r\n- 간디는 어떻게 싸웠을까, 에픽테토스가 역경에서 벗어난 방법은 무엇일까?\r\n- 노화와 죽음에 대해 보부아르와 몽테뉴는 뭐라고 했을까?\r\n- 에피쿠로스처럼 즐기고, 에픽테토스처럼 역경에 대처할 수 있을까?\r\n\r\n프랑스 사상가 모리스 리즐링은 말한다. “결국 인생은 우리 모두를 철학자로 만든다.” 하지만 인생이 호락호락하지 않음을 우리는 수시로 깨닫는다. 여기, 인생에서 가장 중요한 질문을 하고 답을 찾기 위해 평생을 바친 철학자들이 있다. 그들에게 삶에 도움이 되는 조언을 받는 것은 어떨까?\r\n《소크라테스 익스프레스》는 마르쿠스 아우렐리우스부터 몽테뉴까지 역사상 가장 위대한 철학자들을 만나러 떠나는 여행기이자, 그들의 삶과 작품 속의 지혜가 우리 인생을 개선하는 데 어떻게 도움이 되는지 답을 찾아가는 책이다. 매력적인 글솜씨로 “빌 브라이슨의 유머와 알랭 드 보통의 통찰력이 만났다”는 평가를 받는 에릭 와이너가 이 여행의 동반자로 나선다.\r\n\r\n“우리에겐 늘 지혜가 필요하지만 삶의 단계마다 필요한 지혜가 다르다. 열다섯 살에게 중요한 ‘어떻게’ 질문과 서른다섯 살, 또는 일흔다섯 살에게 중요한 질문은 같지 않다. 철학은 각 단계에 반드시 필요한 이야기를 들려준다.”','Y',7),(4,8954681573,'대불호텔의 유령',14000,64,'소설/시','  2020 젊은작가상 대상 수상작가, 강화길 소설세계의 진화!\r\n\r\n단편소설 「음복飮福」으로 2020 젊은작가상 대상을 거머쥐며 한국형 여성 스릴러 소설을 대표하는 작가가 된 강화길의 두번째 장편소설 『대불호텔의 유령』이 출간되었다. 작가는 첫 소설집 『괜찮은 사람』과 첫 장편소설 『다른 사람』을 통해 여성의 일상에 밀착된 폭력이라는 사회적 문제를 조명했고, 두번째 소설집 『화이트 호스』에서는 눈에 보이지 않지만 여성의 삶을 억압하고 한계 지어온 거대한 구조를 부각시켰다. 강화길 소설은 스릴러 서사 속에서 인물들의 불안과 공포를 독자 스스로 감각하게 함으로써 이러한 주제의식을 효과적으로 전달해 보였다.\r\n\r\n혐오라는 현상에서 출발해 그것의 본질을 밝혀내려는 여정을 계속해온 강화길은 『대불호텔의 유령』에 이르러 한국사회의 밑바닥에 깔린 ‘원한’이라는 정서를 성공적으로 소설화해낸다. 한국전쟁의 상흔이 전국을 지배하고 있던 1950년대, 귀신 들린 건물 ‘대불호텔’에 이끌리듯 모여든 네 사람이 겪는 공포스러운 경험을 다룬 이 이야기는 각각의 인물들이 살아남기 위해 품어야만 했던 어둑한 마음을 심령현상과 겹쳐낸 강화길식 고딕 호러 소설이다. 독자는 이 소설을 읽는 동안 자신의 내면에 대물림된 그 뿌리깊은 감정들이 건드려지는 것을 체험하게 된다. 서로를 믿지 못한 끝에 해치게 만드는 그 유구한 저주에 자신 또한 사로잡혀 있었는지 모른다는 서늘한 자각이 한여름의 무더위를 씻어내린다.','Y',5),(5,1189683881,'우리말 어감사전',17000,90,'인문','  책소개\r\n사전 편찬의 장인이 국어사전에 다 담지 못한 우리말의 ‘속뜻’. 확실히 검증된 객관적인 의미만을 간결하게 수록하는 사전에서는 쉽게 드러내기 어려웠던 편찬자의 고민과 생각이 알뜰하게 담겨 있다. 가령 ‘가치’와 ‘값어치’, ‘헤엄’과 ‘수영’은 비슷하지만 어감, 뉘앙스, 말맛, 쓰임 등이 다르다. 하지만 지금의 사전은 이 섬세한 차이를 제대로 보여 주지 못한다. 저자는 사람들이 흔히 쓰는, 뜻과 쓰임에 공통점이 있는 낱말들을 찾아 모으고 속뜻을 궁리해서 어감의 차이가 발생하는 지점을 명확하게 보여 준다.\r\n\r\n언어는 말로 명료하게 표현할 수 있는 ‘명시적 지식’이라기보다 무의식에 내면화된 ‘암묵적 지식’이기에 우리는 이미 비슷한 단어를 구분해 쓰면서도 그 말들이 왜 다르며 무엇이 다른지 설명하지 못한다. 이 책은 바로 이런 상황에서 명쾌한 답을 주는 지침서가 될 것이며, ‘찾아보는 사전’을 넘어 ‘읽는 사전’의 가능성을 보여 준다.','Y',15),(6,1166815781,'하버드 회복탄력성 수업',13000,100,'자기계발',' “그래서 회복탄력성은 어떻게 키우는 거죠?”\r\n지금 바로 시작하는 18가지 회복탄력성 훈련\r\n\r\n“하버드 최고의 회복탄력성 전문가인 게일 가젤 박사는 당신이 어떤 인생을 살아왔든 상관없이 회복탄력성을 높이는 데 필요한 가장 적확한 방법을 알려준다.”\r\n- 마셜 골드스미스(세계 최고의 경영 컨설턴트, 『트리거』, 『모조』 저자)\r\n\r\n이른바 ‘조용한 학살’이 시작됐다. 코로나19 이후 위기에 내몰린 사람들이 조용히 설 자리를 잃어간다. 특히 스스로 목숨을 끊는 청년들이 늘고 있다. 최근 통계에 따르면 20~30대 여성의 자살시도자 비율이 가장 큰 증가세를 보인다. 고용 위기와 경제적 부담, 폭력과 범죄, 질병과 사고 등이 하루 이틀 문제는 아니지만, 코로나19 이후 사상 최대로 심각한 수준에 이르렀다. 그래서 ‘코로나블루’에 이어 ‘코로나블랙’이라는 신조어가 나올 만큼 우울증, 공황장애, 수면장애 등 정신건강의 적신호를 드러내는 사람들이 많아졌다.\r\n지금은 그 어느 때보다 삶의 방역을 위한 ‘마음백신’이 필요한 시기다. 코로나19 상황이나 사회구조적 환경을 당장 바꿀 수는 없겠지만, 그 환경을 바라보는 내면의 태도나 관점은 충분히 바꿀 수 있다. 이처럼 외부 환경에 따른 우울과 불안, 스트레스에 무너지지 않고 역경과 시련을 극복하는 멘탈의 힘을 ‘회복탄력성’이라 한다. 회복탄력성은 비범한 특정인이 아닌 누구에게나 잠재되어 있는 능력이다. 다만 우리가 그 힘을 꺼내 쓰는 방법에 관해 따로 배우지 않았을 뿐이다.\r\n\r\n하버드 최고의 회복탄력성 전문가인 게일 가젤 박사는 강도 높은 업무 환경에서 극심한 스트레스와 우울증, 번아웃에 빠진 의사들을 상대로 이 회복탄력성 원리를 적용해 놀라운 효과를 거두었다. 지금까지 500명이 넘는 의사들이 그의 도움을 받고 내면의 위기를 극복해 자타공인 ‘의사들의 의사’로 불린다. 그도 어린 시절 가정 폭력의 피해자로 힘든 시기를 보냈지만 회복탄력성 훈련으로 고통을 극복해냈고, 이를 계기로 힘겨운 시간을 보내는 사람들의 마음에 ‘평정심’을 선물하고 있다.\r\n\r\n이 책에서 가젤 박사는 풍부한 경험과 지식을 바탕으로 회복탄력성의 원리를 알기 쉽게 설명한다. 회복탄력성을 위해 필요한 마음 근육을 6가지 키워드(대인관계, 유연성, 끈기, 자기조절, 긍정성, 자기돌봄)로 명쾌하게 정리했다. 직접 상담한 다양한 사례를 소개하며 독자가 자기 상황에 직접 적용하도록 돕는다. 학술용어 사용은 최소화하되 의학, 심리학의 최신 연구 결과를 통해 회복탄력성의 실제적인 힘을 느껴보도록 했다. 무엇보다 이 책은 실용적이다. 명상, 뇌과학, 긍정심리학, 감성지능 등을 활용한 “18가지 회복탄력성 훈련법”은 지금 바로 각자 삶에 적용해볼 수 있다.','Y',5),(7,1162243074,'이것이 취업을 위한 코딩 테스트다 with 파이썬',34000,100,'IT/모바일','  나동빈 저자의 유튜브 라이브 방송 https://www.youtube.com/c/dongbinna\r\n\r\nIT 취준생이라면 누구나 입사하고 싶은 카카오 · 삼성전자 · 네이버 · 라인!\r\n\r\n취업의 성공 열쇠는 알고리즘 인터뷰에 있다!\r\n\r\n\r\n\r\nIT 취준생이라면 누구나 가고 싶어 하는 카카오, 라인, 삼성전자의 2016년부터 2020년까지의 코딩 테스트와 알고리즘 대회의 기출문제를 엄선하여 수록했다. 최근 5년간의 코딩 테스트 기출문제를 분석하여 반드시 알아야 하는 알고리즘을 8가지로 정리했다. 8가지 핵심 알고리즘 이론을 쉽게 설명하고, 관련 실전 문제를 풀이했다. 출제 유형 분석, 이론 설명, 기출문제 풀이까지! 어떤 코딩 테스트도 대비할 수 있을 것이다. 코딩 테스트에서 주로 선택하는 파이썬을 기반으로 설명되어 있으며, 파이썬 코드 외에도 C/C++, 자바 코드를 추가로 제공한다.','Y',5),(8,1250231981,'Factfulness : The Ten Reasons We\'re Wrong About the World',12000,100,'경제/경영','  전 세계 100만부 돌파! 세계 지성계를 사로잡은 글로벌 베스트셀러\r\n강력한 사실을 바탕으로 세상을 정확하게 바라보는 방법을 담은 혁명적 저작\r\n\r\n· 빌 게이츠가 미국 모든 대학 졸업생에게 직접 선물한 화제의 책\r\n· 버락 오바마 전 대통령, 스티븐 핑커 하버드대 교수 강력 추천\r\n· [옵저버] 선정 금세기 최고의 책! [뉴욕타임스][월스트리트저널][가디언] 베스트셀러\r\n\r\n전 세계적으로 확증편향이 기승을 부리는 탈진실의 시대에, 막연한 두려움과 편견을 이기는 팩트의 중요성을 일깨우는 세계적 역작! 세계를 이해하기 위한 13가지 문제에서 인간의 평균 정답률은 16%, 침팬지는 33%. 우리는 왜 침팬지를 이기지 못하는가? 똑똑하고 현명한 사람일수록 세상의 참모습을 정확히 알지 못한다! ‘느낌’을 ‘사실’로 인식하는 인간의 비합리적 본능 10가지를 밝히고, 우리의 착각과 달리 세상이 나날이 진보하고 있음을 명확한 데이터와 통계로 증명한 놀라운 통찰. 세상을 바라보는 방식을 바꾸고 미래의 위기와 기회에 대처하기 위해 반드시 읽어야 할 필독서이다.\r\n\r\n책은 출간과 동시에 세계 지성계를 사로잡으며 뜨거운 화제를 모았다. 버락 오바마 전 대통령은 반드시 읽어야 할 책 목록 5권 중에 하나로 추천했다. 스티븐 핑커 하버드대학 심리학과 교수는 풍부한 데이터를 통해 우리의 인지과정이 어떻게 우리를 잘못된 길로 이끌 수 있는지를 합리적으로 설명한 책으로, [네이처]는 읽는 것만으로도 우리의 세계관이 완전히 뒤바뀔 거라며 극찬했다. 또한 [옵저버]는 금세기 최고의 책으로 선정했고, [뉴욕타임스][월스트리트저널][가디언][선데이타임스] 등 유수 언론의 베스트셀러에 오르며 출간 이후 6개월 만에 100만부를 돌파하는 기록을 세웠다. 현재 미국, 영국, 프랑스, 독일, 일본 등 40여 국가에서 출간이 확정되었다.\r\n\r\n전 세계적으로 확증편향이 기승을 부리는 탈진실(post-truth)의 시대에, 『팩트풀니스』는 막연한 두려움과 편견을 이기는 팩트의 중요성을 일깨우는 역작이다. 빈곤, 교육, 환경, 에너지, 인구 등 다양한 영역에서 우리가 생각하는 세계와 실제 세계의 간극을 좁히고 선입견을 깨는 통찰을 제시한다. 우리의 편견과 달리 세상이 나날이 진보하고 있음을, 사실에 충실한 명확한 데이터와 통계로 이를 낱낱이 증명한다.\r\n\r\n빌 게이츠가 사회로 진출하는 청춘에게 이 책을 선물한 이유는, ‘세상은 나아지고 있다’는 긍정의 시각을 심어주는 동시에 자기 신념이 사실과 부합하는지 돌아보라는 충고이기도 할 것이다. 우물 안에 계속 갇혀 살기보다 올바르게 사는 데 관심이 있다면, 세계관을 흔쾌히 바꿀 마음이 있다면, 본능적 반응 대신 비판적 사고를 할 준비가 되었다면, 이 책을 반드시 읽어보기 바란다. 한국 사회가 나아갈 방향에도 중요한 이정표가 되어줄 것이다.\r\n\r\n\"One of the most important books I\'ve ever read--an indispensable guide to thinking clearly about the world.\" - Bill Gates\r\n\r\n\"Hans Rosling tells the story of \'the secret silent miracle of human progress\' as only he can. But Factfulness does much more than that. It also explains why progress is so often secret and silent and teaches readers how to see it clearly.\" --Melinda Gates\r\n\r\n\"Factfulness by Hans Rosling, an outstanding international public health expert, is a hopeful book about the potential for human progress when we work off facts rather than our inherent biases.\" - Former U.S. President Barack Obama\r\n\r\nFactfulness: The stress-reducing habit of only carrying opinions for which you have strong supporting facts.\r\n\r\nWhen asked simple questions about global trends--what percentage of the world\'s population live in poverty; why the world\'s population is increasing; how many girls finish school--we systematically get the answers wrong. So wrong that a chimpanzee choosing answers at random will consistently outguess teachers, journalists, Nobel laureates, and investment bankers.\r\n\r\nIn Factfulness, Professor of International Health and global TED phenomenon Hans Rosling, together with his two long-time collaborators, Anna and Ola, offers a radical new explanation of why this happens. They reveal the ten instincts that distort our perspective--from our tendency to divide the world into two camps (usually some version of us and them) to the way we consume media (where fear rules) to how we perceive progress (believing that most things are getting worse).\r\n\r\nOur problem is that we don\'t know what we don\'t know, and even our guesses are informed by unconscious and predictable biases.\r\n\r\nIt turns out that the world, for all its imperfections, is in a much better state than we might think. That doesn\'t mean there aren\'t real concerns. But when we worry about everything all the time instead of embracing a worldview based on facts, we can lose our ability to focus on the things that threaten us most.\r\n\r\nInspiring and revelatory, filled with lively anecdotes and moving stories, Factfulness is an urgent and essential book that will change the way you see the world and empower you to respond to the crises and opportunities of the future.\r\n\r\n---\r\n\r\n\"This book is my last battle in my life-long mission to fight devastating ignorance...Previously I armed myself with huge data sets, eye-opening software, an energetic learning style and a Swedish bayonet for sword-swallowing. It wasn\'t enough. But I hope this book will be.\" Hans Rosling, February 2017.','Y',5),(9,525657746,'Crying in H Mart: A Memoir',27500,100,'인문/사회','  From the indie rockstar of Japanese Breakfast fame, and author of the viral 2018 New Yorker essay that shares the title of this book, an unflinching, powerful memoir about growing up Korean American, losing her mother, and forging her own identity.\r\n\r\nIn this exquisite story of family, food, grief, and endurance, Michelle Zauner proves herself far more than a dazzling singer, songwriter, and guitarist. With humor and heart, she tells of growing up one of the few Asian American kids at her school in Eugene, Oregon; of struggling with her mother\'s particular, high expectations of her; of a painful adolescence; of treasured months spent in her grandmother\'s tiny apartment in Seoul, where she and her mother would bond, late at night, over heaping plates of food.\r\n\r\nAs she grew up, moving to the East Coast for college, finding work in the restaurant industry, and performing gigs with her fledgling band--and meeting the man who would become her husband--her Koreanness began to feel ever more distant, even as she found the life she wanted to live. It was her mother\'s diagnosis of terminal cancer, when Michelle was twenty-five, that forced a reckoning with her identity and brought her to reclaim the gifts of taste, language, and history her mother had given her.\r\n\r\nVivacious and plainspoken, lyrical and honest, Zauner\'s voice is as radiantly alive on the page as it is onstage. Rich with intimate anecdotes that will resonate widely, and complete with family photos, Crying in H Mart is a book to cherish, share, and reread.','Y',5),(10,1167740009,'스케일이 전복된 세계',17000,100,'과학',' “스케일이 바뀌면 문제도 바뀐다”\r\n파슨스·뉴스쿨 초학제 연구를 이끄는 제이머 헌트 교수의 통찰\r\n인간의 지각 범위를 벗어난 현상들의 본질을 꿰뚫다\r\n\r\n원자 시대에서 비트 시대로 이행하면서 우리의 삶은 어떻게 바뀌었는가? 우리를 둘러싼 문제들이 인간의 지각 범위 밖에 있을 때, 우리는 어디서부터 시작해야 할까? 뉴스쿨과 파슨스에서 초학제 연구를 이끄는 제이머 헌트는 오늘날 우리가 경험하는 이러한 딜레마 속에서 ‘스케일 혼란’이라는 공통점에 주목했다. 모든 것이 비물질화되고 우리의 일상이 강력한 네트워크에 귀속되면서, 실재의 본질이 기존의 스케일 감각으로는 예측할 수 없는 방식으로 바뀌었다는 설명이다. 저자는 생물학과 물리학, 도시공학, 정보공학을 아우르는 탁월한 통찰력으로 뒤엉켜 보이는 현상들을 관통하는 스케일 혼란에 우리를 눈 뜨게 한다. 더불어 이러한 이해를 바탕으로 기후 위기, 불평등한 정책 등 복잡하고 해결 불가능해 보였던 문제들에 새롭게 접근하는 방법들을 제안한다. 초연결을 넘어 메타버스 시대로 나아가는 지금, 세상을 이해하는 하나의 기준을 제공해주는 책이다.','Y',5),(11,8954447384,'다만 죽음을 곁에 두고 씁니다',13800,105,'에세이',' 서른다섯, 젊은 소설가가 남긴 죽음과 삶의 이야기\r\n끝에 이르러서야 닿을 수 있었던 내면의 기록들\r\n\r\n모든 영화에 러닝타임이 있듯 우리 삶에도 언젠가 마지막 순간이 찾아온다. 그러나 지금으로부터 먼 어느 날이 아닌 바로 오늘, 나의 마지막 날을 알게 된다면 당신은 어떤 반응을 보일까? 아마 대부분은 그 사실로부터 일단 멀리 도망가고 싶어 하지 않을까? 그러나 여기, 달아나기는커녕 죽음 바로 곁에서 끝없이 질문을 던지는 이가 있다.\r\n\r\n서른다섯의 소설가인 그는, 어느 날 자신의 이른 죽음을 마주하게 된다. 악성 뇌종양이었다. 갑작스럽게 시한부 인생을 살게 된 그는 자신의 삶을 억지로 변화시키지 않고 자신이 이제껏 살아왔던 대로 살기로 한다. 그중에서도 특히 글쓰기는 그가 언제나 해왔던 일이었다.\r\n\r\n『다만 죽음을 곁에 두고 씁니다』는 삼십대 중반 젊은 소설가가 남긴 생의 마지막 기록으로, 삶과 죽음에 대한 단편적인 사색을 기록한 일기 형식의 에세이다. 그는 뇌종양 진단 이후 죽음이 항상 곁에 있다는 인식을 바탕에 두고, 살면서 한 번쯤 짚고 넘어가야 할 다양한 이야기를 자기 안에서 하나씩 꺼내놓는다. 그리고 폭넓은 철학적 인식과 수많은 질문을 통해 인간의 의미, 연대, 자연, 혼돈과 현실의 갈등이라는 삶의 실제적인 주제들을 탐구한다. 궁극적으로, 죽음에 다가갈수록 더욱 선명해지는 생의 감각을 통해 인생의 진리와 경이로움, 진정한 삶의 의미를 찾는 과정을 그리고 있다.','Y',9),(12,1190382431,'뭉우리돌의 바다',20000,100,'역사',' tvN 〈유 퀴즈 온 더 블럭〉 제67화 광복절 특집 감동의 출연자\r\n국가보훈처 보훈문화상, 다큐멘터리 온빛사진상 수상\r\n\r\n전 세계 각지에 흩어져 있는 독립운동의 흔적을 발굴하고 기록한 최초의 다큐멘터리. 인도에 간 한국광복군, 멕시코의 애니깽 농부들, 체 게바라의 동지, 한인 최초 백만장자, 우리 공군이 시작된 땅… 이제껏 우리가 들어보지 못한 바다 건너 독립운동가들의 이야기가 펼쳐진다.\r\n\r\n기자로 활동하다 여행자의 삶을 살던 김동우 작가는 세계일주를 하던 중 우연히 인도 델리 ‘레드 포트’가 한국광복군 훈련지란 사실을 알게 된다. 이후 독립운동가들의 삶에 강렬하게 사로잡혀 그들의 흔적을 좇아 기록하기 시작한다. 중국, 인도, 멕시코, 쿠바, 미국, 러시아, 네덜란드, 카자흐스탄, 우즈베키스탄, 일본 등 10개국에 이른 생생한 현장 취재기, 그리고 끝끝내 고국으로 돌아오지 못한 독립운동가 후손과의 에피소드를 110컷의 사진과 함께 이 책에 담아냈다. 또한 현장에 얽힌 깊고 내밀한 역사를 풀어내기 위해 수많은 논문과 단행본, 국내외 기사를 망라해 독립운동사를 재구성했다.\r\n\r\n둥글둥글하게 생긴 큰 돌을 뜻하는 ‘뭉우리돌.’ 일제강점기 서대문 형무소에 투옥된 김구는 일본 순사가 “지주가 전답의 뭉우리돌을 골라내는 것은 당연한 일이 아니냐!”며 자신을 협박하자 이 말을 오히려 영광으로 여기며 “오냐, 나는 죽어도 뭉우리돌 정신을 품고 죽겠고, 살아도 뭉우리돌의 책무를 다하리라”라고 답했다. 올곧은 일에 생을 바치고자 했던 뭉우리돌들의 역사, 오늘날 반드시 기억해야 할 자랑스러운 대한의 독립운동사가 우리 곁에 새롭게 다가온다.','Y',5),(13,1165042304,'쓰담쓰닮 바울서신',10000,80,'종교',' 말씀이신 주님을, 손으로 새기고 마음에 담고\r\n온전히 닮아가는 시간\r\n\r\n쓰고 담으세요!\r\n한 구절 한 구절 천천히 읽고 필사하면서\r\n하나님 말씀을 마음에 담으세요.\r\n\r\n쓰고 닮아가세요!\r\n정성껏 새기며 깊이 묵상할 때\r\n내 삶에 말씀이 숨쉬고 그분을 닮아가는 은혜가 깃듭니다.\r\n\r\n쓰담쓰닮\r\n하나님의 말씀이 당신을 위로하고 삶에 등불이 됨을 경험하십시오.','Y',34),(14,896735939,'중간착취의 지옥도',15000,79,'사회',' 346만 명의 간접고용 노동자들이 떼인 돈\r\n사용자와 노동자 사이에 누군가 개입하는 순간\r\n착취는 필연적이다!\r\n\r\n자본주의 체제의 가장 사악한 착취 구조를 가장 디테일하고도 광대하게 담아낸 이 시대의 아픈 벽화 같은 책이 출간되었다. 바로 『중간착취의 지옥도』다. 이 책은 한국일보 마이너리티 팀이 100명의 간접고용 노동자들을 인터뷰하여 그 실상을 담아낸 기록이다. 이 책의 출발은 다음의 질문에서 시작되었다. “당신은 힘들게 일하는 노동자입니다. 피·땀·눈물의 대가로 월급을 받지요. 그런데 누군가 그중 수십, 혹은 수백만 원을 늘 떼간다면 어떨 것 같습니까?” 이 고질적인 문제를 포착한 기자들은 노동시장의 최하부에 위치한 간접고용 노동자들에게 ‘중간착취’에 대해 묻고, 그 지옥도地獄圖를 펼쳐보기로 했다.','N',38),(15,8962818094,'파고다 첫토익 PART 5&6',17000,97,'국어와외국어',' 토익 기본기는 이 한 권으로 끝\r\n토익 초보자를 위한 필수 문법 & 파트 5, 6 문제풀이 전략서\r\n\r\n토익 초보자를 위한 토익 필수 문법 교재 ‘첫토익’이 신토익 경향을 반영해 ‘파고다 첫토익’으로 개정 출간됐다. 최신 토익 기출을 분석해 시험에 꼭 나오는 필수 문법만을 전략적으로 학습하고, 파트 5, 6의 실전 문제풀이 능력을 동시에 향상시킬 수 있도록 구성됐다.\r\n\r\n- 토익 초보자도 쉽게 이해할 수 있는 심플한 개념 정리\r\n- 파트 5, 6 실전 문제풀이 비법과 풍부한 연습문제 수록\r\n- 초보자가 반드시 알아야 할 품사별 필수 어휘 제공\r\n- 정확하고 빠른 독해를 위한 문장 구조 분석 마스터\r\n- 개정판 특별 추가: 파트 1, 2 만점 공략 문법 포인트 및 문제풀이 비법','N',22),(16,1191824004,'지구 끝의 온실',15000,81,'소설/시','김초엽 첫 장편소설, 모두가 간절히 기다려온 이야기\r\n\r\n이미 폭넓은 독자층을 형성하며 열렬한 사랑을 받고 있는 김초엽 작가는 더스트로 멸망한 이후의 세계를 첫 장편소설의 무대로 삼았다. 그는 지난해 말 플랫폼 연재를 통해 발표한 이야기를 반년이 훌쩍 넘는 시간 동안 수정하면서 한층 더 무르익도록 만들었다. 그리하여 장 구성부터 세부적인 장면은 물론 문장들까지 완전히 새롭게 탄생한 『지구 끝의 온실』이 2021년 8월 드디어 독자들을 만난다.\r\n\r\n『지구 끝의 온실』은 자이언트북스의 네 번째 도서이다. 김중혁의 첫 시리즈 소설 『내일은 초인간』, 배명훈 장편소설 『빙글빙글 우주군』, 그리고 한국문학의 빛나는 일곱 명의 작가가 ‘즐거움’을 키워드로 쓴 단편소설을 묶은 앤솔로지 『놀이터는 24시』까지, 작가들의 자유로운 상상력을 응원하며 가장 그다운 작품을 선보일 수 있도록 해온 자이언트북스는 이번 주인공으로 김초엽의 『지구 끝의 온실』을 출간하였다.','N',57),(17,8927812476,'후각과 환상',16000,90,'인문','지독하거나 아름답거나,\r\n우리를 순간이동하게 만드는\r\n냄새의 풍경들\r\n\r\n젖은 흙과 숲의 향내, 고릿하거나 매캐한 향신료 냄새, 아득한 전생의 기억까지 환기하는 선향. 냄새는 힘이 세다. 우리는 공기 중에 실려 오는 냄새를 따라 그때, 그곳, 그 순간으로 순간이동하곤 한다. 후각이 그토록 즉각적으로, 강렬하게 기억 속 시공간을 소환할 수 있는 까닭은 무엇일까? 답은 『후각과 환상』에 있다.\r\n\r\n우리의 후각중추는 해부학적으로 감정이나 기억, 욕망과 연결된 변연계 근처에 위치해 있다. 우리는 태어나서 죽을 때까지 냄새를 맡으며, 그 후각적 체험들은 뇌 깊숙한 곳에 숨어 있다가 우연한 자극에 의해 추억, 감정, 욕망과 함께 되살아난다. 여행에서도 마찬가지다. 여행지의 독특한 냄새는 훗날 감성적인 기억을 선사한다.\r\n\r\n그리하여 지은이는 \'코\'를 앞세워 지구 방방곡곡을 누비고 그 후각적 심상을 써 내려간다. 삶과 죽음, 향기와 악취가 공존하는 인도 콜카타 사원 앞 거리에서 출발해 세계 도처의 풍경을 ‘냄새’로 이야기한다. 구룡반도의 뒷골목에서, 지중해 작은 어시장에서…. 우리는 우리를 순간이동하게 만드는 여행의 냄새를 만나게 될 것이다. 그리고 그 안에서 저마다의 여행 체험과 기억을 다각도로 음미하고 향유하며, 여행의 즐거움을 완성하게 된다. 여행의 욕망이 억눌린 시대, 의학자가 기록한 후각적 서정, 냄새의 풍경을 따라 가보자. 세상의 냄새를 좇는 일은 그 자체로 하나의 새로운 여행이 될 것이다.','N',29),(18,1156122015,'커피 세계사+한국 가배사',20000,103,'역사','‘아메리카노’에서 커피 믹스, 모카에서 강릉까지\r\n다른 커피사와는 다른 인문향이 물씬\r\n\r\n우리나라는 2018년 기준 커피 수입량이 세계 6위였다. 성인 1인당 연간 약 353잔의 커피를 마시는 것으로 나타나 세계 1인당 커피 소비량 132잔의 3배 가까운 모습을 보이기도 했다. 가히 ‘커피공화국’ ‘커피 대국’이라 할 만하다. 그러니 커피 감식안이 문화인의 한 증표로 치부되거나 역사, 제법 등 커피와 관련된 책도 숱한 것이 당연하다. 한데 교육학자에서 커피 인문학자로 변신 중이라 자처하는 지은이가 쓴 이 책은 여느 커피사 책과 다르다. 기원, 제법 등 커피 자체뿐 아니라 커피문화를 짚어낸 점이 그렇고, 무엇보다 최초 음용자에서 커피농장까지 한국의 커피사를 한눈에 정리한 덕분이다.','N',13),(19,1190893789,'라이선스LP 연대기 : 비틀스에서 딥 퍼플까지, 퀸에서 너바나까지',48000,99,'예술','한국 라이선스LP 발매 50주년!\r\n국내 최초 가이드북 출간\r\n\r\n우리의 영혼을 뒤흔든 주옥같은 명반들\r\n그리고 그 찬란했던 기억들의 연대기\r\n\r\n국내 최초의 라이선스LP 가이드북. 비틀스, 레드 제플린, 핑크 플로이드, 딥 퍼플 등 전설의 슈퍼밴드부터 하드록, 프로그레시브, 헤비메탈, 블루스, 얼터너티브, 글램록, 모던록 등에 이르기까지, 한국 라이선스LP의 역사에 빛나는 불후의 명반과 숨은 명반들, 그리고 오직 한국에서만 발매된 희귀 앨범 등을 2000여 컷의 사진과 500쪽이 넘는 방대한 분량으로 집대성했다. 107아티스트, 305개 앨범 수록. 최고의 라이선스LP 수집가 3인방의 보물창고와도 같은 컬렉션들을 전격 공개한다!','N',20),(20,1191239349,'쿼크, 카오스, 그리스도교',12000,86,'종교','케임브리지 대학교 물리학 교수이자 성공회 사제였던 존 폴킹혼의 사상의 핵심을 보여주는 저작\r\n종교와 과학은 서로 어떠한 관계에 있으며 어떠한 도움을 주고받을 수 있는가?\r\n\r\n물리학자이자 성직자로 과학과 종교의 대화 분야에 거대한 업적을 남긴 존 폴킹혼의 대표 저작. 독일어, 일본어, 이탈리아어, 루마니어로 번역되었으며 폴킹혼이 스스로 자신의 사상의 핵심을 보여주는 책이라고 평가한 바 있다. 과학자로서 케임브리지 대학교 교수, 영국 왕립학회의 회원으로 선출될 정도로 탁월한 역량을 보여주었던 존 폴킹혼은 늦은 나이에 성공회 사제가 되어 그 자체로 많은 화제를 낳았다. 그리고 이후에는 종교와 과학의 대화에 앞장서 그리스도교 신학의 새로운 분야를 개척하고 확장한 이로 평가받는다.\r\n\r\n이 책에서 그는 과학과 종교, 과학과 신학에 관한 주제들을 하나씩 던지며 과학과 종교에 관련된 통념이 어떻게 잘못되었는지, 어떠한 면에서 과학과 종교가 대화를 나눌 수 있는지, 현대 과학의 새로운 발견이 창조, 기적, 종말과 같은 그리스도교의 주요 내용들을 이해하는 데 도움을 줄 있는지를 이야기한다. 그에 따르면 종교와 과학은 서로 적대적인 영역이 아니라 진리를 향해 따로 또 같이 나아가는 지적 사촌지간이다. 그리고 각자의 영역에서 발견한 통찰들은 자신뿐만 아니라 서로에게 새로운 앎의 빛을 일깨우는데 도움을 줄 수 있다. 과학 언어와 신학 언어를 모두 활용할 줄 아는 폴킹혼은 둘을 넘나들면서 자신의 주장을 설득력있게 제시한다.\r\n\r\n합리적인 과학자도 신앙을 가질 수 있다는 것을, 더 나아가 그리스도교 신앙이 과학의 길을 더 풍요롭게 하는데, 또한 과학의 길이 신앙의 길을 풍요롭게 하는데 기여할 수 있음을 폴킹혼은 몸소 보여준다. 과학 시대에 신앙을 갖는다는 것이 어떤 의미인지, 과학과 종교에 대한 보다 깊은 이해란 무엇인지 헤아려보는데 이 책은 신선한 자극과 도움을 줄 것이다.','N',26),(21,1190893924,'여자들은 집을 찾기 위해 집을 떠난다',16500,87,'사회','여성이자, 청년이자,\r\n지방에서 서울로 이주해 왔으며,\r\n혼자 살아가는 이들 열두 명에게서 들은 ‘집’에 관한 이야기\r\n\r\n누구나 집을 소유할 수 없고,\r\n누구에게나 집이 편안한 공간이 아니듯이,\r\n집은 모두에게 같은 방식으로 경험되지 않는다\r\n\r\n한국 사회에서 집이 차지하는 위상은 압도적이다. 집은 어떤 사람이 살아가는 물리적 건축물일 뿐만 아니라 그가 살아온 삶을 단적으로 드러내는 지표다. 집은 (거기 살든 살지 않든) 어떤 사람이 얼마나 부유하거나 빈곤한지를 보여주며, 집이 위치한 공간은 그가 접할 수 있었던 교육, 문화 등을 설명해준다. 집은 때로 고향과 동일한 의미로 사용되며(우리가 더 이상 살지 않는 고향 집을 으레 ‘본가’라 부르듯이), 때로는 가족 자체로 받아들여지기도 한다(가족에게 무슨 일이 생겼을 때 ‘집에 일이 생겼다’고 말하듯이). ‘집밥’이나 ‘단골집’ 같은 단어들이 연상케 하는 이미지가 그러하듯이, 집은 흔히 따뜻하고 친밀한 공간, 편안하게 휴식을 취할 수 있는 공간, 한곳(이를테면 고향)에 붙박여 있어 언제든 돌아갈 수 있는 공간, 떠나서도 향수를 느끼는 공간으로 여겨진다.','N',25),(22,1187150916,'미술관에 간 해부학자',20000,103,'과학','다 빈치, 미켈란젤로, 다비드부터 칼로, 바스키아에 이르기까지\r\n예술가의 손끝을 따라가면서\r\n명화에 담긴 해부학 코드를 해석하다!\r\n\r\n미술관에 걸린 작품은 한 구의 카데바(해부용 시신, cadaver)와 같다. 예술가들은 해부학자 만큼 인체에 천착했으며, 그들의 탐구 결과는 작품에 오롯이 스며들어 있다. 베르메르가 「우유 따르는 여인」에 묘사한 위팔노근, 보티첼리가 「봄」에 숨겨놓은 허파, 다비드가 「호라티우스 형제의 맹세」에 그린 두렁정맥, 라이몬디가 「파리스의 심판」에 묘사한 볼기근……. 해부학자의 시선으로 예술 작품을 바라보면, 근육·뼈·혈관·장기 등 사람의 몸 구석구석이 보인다.\r\n\r\n림프, 승모관, 라비린토스, 견치 등 몸속 기관 중에는 신화 속 인물 혹은 닮은꼴 대상에게 이름을 빌려온 것이 많다. 신화, 종교, 역사 등 다양한 이야기를 품고 있는 미술 작품은 해부학을 쉽고 재미있게 설명할 수 있는 훌륭한 교재다. 미술과 해부학의 만남은, 우리가 평소에 주목하지 않았던 인체를 탐구할 수 있도록 돕는다. 전 세계 미술관은 포르말린 냄새에 눈시울 붉힐 필요 없이 인체 곳곳을 탐험할 수 있는 해부학 교실이다. 인간의 몸을 치열하게 탐구한 예술가들이 남긴 작품 한 점 한 점은 인체 탐험을 돕는 카데바가 되어줄 것이다.','N',12),(23,1166816923,'결정 수업',15000,99,'자기계발','‘결정학’의 창시자가 고안하고 수많은 CEO가 검증한\r\n세계 유일, 4단계 의사결정 솔루션\r\n\r\n사소한 결정조차 버거워하는 당신을\r\n우유부단과 불안의 늪에서 건져줄 결정의 기술!\r\n\r\n- 아마존 의사결정 분야 베스트셀러\r\n- 대기업 CEO들의 비즈니스 코치,\r\n혁신적 의사결정법 창시자가 말하는 “결정 잘하는 법”\r\n\r\n선택의 갈림길에서 좀처럼 결정을 내리지 못하고 꾸물거리거나 차일피일 미루기만 하는 현대판 햄릿들…. 이들에게는 모든 결정의 순간이 위기요, 고통이다. 거침없이 결정하고 결과도 꽤 괜찮은 사람들이 부러울 따름이다. 그들에게는 특별한 비법이라도 있는 걸까? 템플러 어드바이저스를 설립하고 AIG, AXA, HSBC, 모건 스탠리 등 글로벌 기업의 자문을 맡아온 저자는 중요한 결정을 앞두고 고민하는 고객들을 돕고자 혁신적 의사결정법인 ‘결정학’(Decisiology)을 창시했다. 점심 메뉴 선정부터 사업의 명운이 걸린 계약까지, 일의 경중은 저마다 다르지만 현명한 결정에 이르는 길은 같다. 저자는 어떤 상황에서도 적용할 수 있고 시간이 지나도 절대 변하지 않을 핵심 원리를 이 책에 고스란히 담았다.\r\n\r\n『결정 수업』은 결정의 순간에 마주하는 두려움을 자세히 들여다보고, 의사결정의 단계를 하나하나 살펴가면서 가장 현명한 결정에 이르는 과정을 생생하게 탐구한다. 그런 다음 철학, 심리학, 문학, 수학, 어학, 신경학, 신학, 역사, 예술 등 온갖 영역을 넘나들며 맞춤형 수업을 하듯이 독자가 자신에게 가장 적합한 의사결정의 실마리를 찾도록 도와준다. 그 실마리를 따라가다 보면 어느덧 불확실한 상황을 돌파할 최고의 결정에 성큼 다가가 있을 것이다.','N',9),(24,8960906883,'코믹 헤븐에 어서 오세요',14000,90,'소설/시','박서련 작가가 펼치는 청춘들의 일과 사랑\r\n마음산책 열 번째 짧은 소설 『코믹 헤븐에 어서 오세요』\r\n\r\n한겨레문학상과 젊은작가상 수상자이자, 장편소설 『체공녀 강주룡』 『마르타의 일』 『더 셜리 클럽』으로 여성들의 삶과 연대를 흡인력 강한 서사로 힘 있게 이야기했던 박서련 작가. 그의 신작 『코믹 헤븐에 어서 오세요』가 마음산책 열 번째 짧은 소설로 출간됐다.\r\n\r\n소설 속 주인공들은 오늘 하루도 무탈하게 살아가기 위해 분투하는, 우리 주변에서 쉽게 만날 수 있는 청년들이다. 인물들은 24시간 지하 만화 카페에서 한밤중에 알바를 하다가 절체절명의 사건을 겪고(「코믹 헤븐에 어서 오세요」), 인턴에서 정규직이 되기 위해 애쓰던 중 자기 팀의 여자 대리가 겪는 부조리한 일에 슬퍼한다(「제자리」). 배우를 지망하지만 퍽퍽한 현실을 살아가는 주인공에게 기적이 벌어지고(「거의 영원에 가까운 장국영의 전성시대」), 군대 간 남자친구를 기다리는 여자들이 모인 인터넷 카페 활동에 몰입하기도 한다(「아이디는 러버슈」). 각각의 개성이 뚜렷한 아홉 편의 짧은 소설은 독자들의 공감을 이끌어내면서 이야기 속으로 단숨에 끌어당긴다.','N',19);
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

-- Dump completed on 2021-09-23 15:02:54