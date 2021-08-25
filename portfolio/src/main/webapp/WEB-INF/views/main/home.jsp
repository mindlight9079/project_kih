<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DETAILS</title>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link
    rel="stylesheet"
    href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<style>
    * {
        margin: 0; padding: 0; text-decoration: none; list-style: none; color:black;
    }
    .subCatagory-list a:hover {
    	color: rgb(0, 104, 136); text-decoration: underline;
    }
    .main{
        position:relative; background-image: url(<%=request.getContextPath()%>/resources/js/water.jpg); background-position: center center; height: 1280px; width: 100%; overflow: hidden;
        
    }
    .homeImg{
        width: 100%; height: 100%;
    }
    .bookstore{
        position: absolute;  top:calc(45% - 768px / 2); left: calc(50% - 1366px / 2);
    }
    .letter{
        color: white; font-size: 35px; position:absolute; top: 65%; text-align: center; width: 100%;
    }
    .menu {
        display: flex; position: absolute; top: 15px; right: 30px; 
    }
    .menu ul li{
        float: left; padding: 10px;  font-size: 20px;  font-family:sans-serif; font-weight: bold;  cursor: pointer;
    }
    .fa-search{
        font-size: 25px; text-align: center; margin-top: 11px; margin-left: 3px; cursor: pointer;
    }
    .fa-bars{
        font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .menu::after{
        content: ''; clear: both; display: block;
    }
    .container, .container2, .container3{
        width: 100%; height: 900px; position: relative; overflow: hidden;
    }
    .container2{
        height: 1200px;
    }
    .choice, .bookToday, .bestSeller{
        font-size: 40px; font-family:Georgia, 'Times New Roman', Times, serif ; margin: 130px 0 0 80px;
        display: flex;
    }
    .bookToday{
       position: absolute; right: 140px; display: flex;
    }
    .line, .line2 {
        background-color: gray; height: 2px; width:1525px; position:absolute; top:165px; right: 0;
    }
    .line2{
        left:0;
    }
    .choiceImg {
        display:flex; position: absolute; top:220px; left: calc(50% - 1480px / 2);
    }
    .swiper-container{
        width: 1903px ; height: 680px;
    }
    .choiceImg img{
        width: 250px; height: 393px; margin: 20px;  margin: 80px 60px 20px;
    }
    .contents span{
        text-align: center; display: block;
    }
    .contents2{
        position: absolute; top: calc(50% - 300px); left:calc(50% - 1370px / 2); display: flex;
    }
    .contents2 img{
        width: 450px;
    }
    .bookContents{
        text-align: center; width: 800px; font-size: 30px; padding: 60px 0 0 60px;
    }
    .contents3 img{
        width: 150px; height: 220px;
    }
    .container3{
       height: 1000px;
    }
    .contents3{
        top: 250px; left:calc(50% - 1390px / 2); width: 80%; height: 100%; margin: 0 auto;
    }
    .bsContents{
        text-align: center; font-size: 14px; display:block;
    }
    .bsBook{
        text-align: center; float:left; width: 20%; margin-top: 80px; cursor: pointer;
    }
    .bsNum{
        font-size: 30px; font-family:Georgia, 'Times New Roman', Times, serif ; display: block;
    }
        
    .container2::after{
        display: block; content: ''; clear: both;
    }
    .swiper-slide{
        flex-shrink:initial;
    }
    .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction {
        left: -200px;
    }
    
    
    .side-bars{
        width: 400px; height: 1280px; background-color: black; position: absolute; z-index: 10;
        opacity: 80%; display: none;
    }
    .side-bars li{
        color: white; margin-bottom: 20px; cursor: pointer; font-size: 20px;
    }
    .catagory-list{
        position: absolute; top: 150px; left: 20px;
    }
    .subCatagory-list{
        position: absolute; top: 150px; left: 200px;
    }
    .dome-list{
        display: none;
    }
    .dome-list *{
    	color: white;
    }
    .foreign-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px;
    }
    
    .search-box{
        width:100%; height: 1280px; background-color: black; position: absolute; z-index: 15;
        opacity: 80%; top: 0px; right:0; display: flex; display: none;
    }
    [name="search"]{
        width: 500px; height: 100px; position: absolute; top:300px; left: calc(50% - 250px);
        opacity: 100%; font-size: 30px; padding: 15px; box-sizing: border-box; border-radius: 20px;
    }
    .search-icon{
        font-size: 40px; z-index: 20; 
        text-align: center; line-height: 50px; position:absolute; top: 315px; left :calc(50% + 185px);
    }
    .x-btn{
        position: absolute; top: 25px; right: 35px;
    }
</style>
</head>
<body>
    <div class="side-bars">
        <i class="fas fa-times"></i>
        <div class="catagory-list">
            <ul>
                <li class="domestic">국내도서</li>
                <li class="foreign">외국도서</li>
            </ul>
        </div>
        <div class="subCatagory-list">
            <ul class="dome-list">
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설/시">소설/시</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=에세이">에세이</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문">인문</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=역사">역사</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술">예술</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=종교">종교</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=사회">사회</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=과학">과학</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자기계발">자기계발</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=국어와외국어">국어와외국어</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/모바일">IT/모바일</a></li>
            </ul>
        </div>
        <div class="subCatagory-list">
            <ul class="foreign-list">
                <li>문학</li>
                <li>소설</li>
                <li>경제/경영</li>
                <li>인문/사회</li>
                <li>예술</li>
                <li>컴퓨터</li>
                <li>자연과학</li>
            </ul>
        </div>
    </div>
    <div class="main">
        <img class="bookstore animate__repeat-1	animate__fadeInDown animate__animated" src="<%=request.getContextPath()%>/resources/js/BOOKSTORE.png" alt="greenbookstore" >
        <p class="letter">Books makes you valuable</p>
    </div>   
    <i class="fas fa-bars"></i>
    <div class="menu">
        <ul>
        	<c:if test="${user == null}">
            <li><a href="<%=request.getContextPath()%>/member/login">LOGIN</a></li>
            <li><a href="<%=request.getContextPath()%>/member/signup">SIGNUP</a></li>
            </c:if>
            <c:if test="${user != null}">
            <li><a href="<%=request.getContextPath()%>/member/logout">LOGOUT</a></li>
            </c:if>
            <c:if test="${user.me_grade != 'ADMIN'}">
           	 <li><a href="#">ORDERS</a></li>
           	 <li><a href="<%=request.getContextPath()%>/member/mypage">MYPAGE</a></li>
             <li><a href="<%=request.getContextPath()%>/order/cart">CART</a></li>
            </c:if>
            <c:if test="${user.me_grade == 'ADMIN'}">
             <li><a href="<%=request.getContextPath()%>/admin/user/booklist">MANAGEMENT</a></li>
            </c:if>
        </ul>
        <i class="fas fa-search sm-search"></i>
    </div>
       <div class="search-box">
           <i class="fas fa-times x-btn"></i>
           <input type="text" name="search" placeholder="search">
           <i class="fas fa-search search-icon"></i>
   	   </div>
    <div class="container" >
        <div class="choice">
         Green's Choice
        <div class="line"></div>
        </div>
		<div class="choiceImg">
			<div class="swiper-container mySwiper">
				<div class="swiper-wrapper">
				<c:forEach items="${bookChoice}" var="book" varStatus="status">
					<div class="swiper-slide">
						<a class="contents" href="<%=request.getContextPath()%>/book/details?re_bk_isbn=${book.bk_isbn}">
							<img src="<%=request.getContextPath()%>/img${book.bk_mainImg}" alt="bookImg">
							<span>${book.bk_title}</span>
 							<span>${book.bk_au_writer} 저 | ${book.bk_publish}</span>
						</a>
					</div>
				</c:forEach>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</div>
    <div class="container2">
        <div class="line2"></div>
        <div class="bookToday">
            Book Today
        </div>
        <div class="contents2">
        <img src="소크라테스 익스프레스.jpg" alt="express">
        <div class="bookContents">
            " 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 "

            로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은
            " 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 "

            로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은
        </div>
        </div>
    </div>
    <div class="container3">
        <div class="bestSeller">
           The Best Seller 10
        <div class="line"></div>
        </div>
    <div class="contents3">
    <c:forEach items="${registration}" var="regi" varStatus="status">
        <div class="bsBook">
   		<a href="<%=request.getContextPath()%>/book/details?re_bk_isbn=${regi.bk_isbn}">
            <span class="bsNum">${status.count}</span>
            <img src="<%=request.getContextPath()%>/img${regi.bk_mainImg}" alt="express"/>
            <span class="bsContents"><span>${regi.bk_title}</span><br><span>${regi.bk_au_writer} 저 | ${regi.bk_publish}</span></span>
        </a>
        </div>
    </c:forEach>
    </div>
    </div>
<script>
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 4,
        spaceBetween: 40,
        pagination: {
        el: ".swiper-pagination",
        clickable: true,
        },
    });
    $('.fa-bars').click(function(){
        $('.side-bars').show();
    })
    $('.fa-times').click(function(){
        $('.side-bars').hide();
    })
    $('.domestic').hover(function(){
        $('.foreign-list').hide();
        $('.dome-list').show();
    })
    $('.foreign').hover(function(){
        $('.dome-list').hide();
        $('.foreign-list').show();
    })
    
    $('.sm-search').click(function(){
        $('.search-box').show();
        $('[name="search"]').val('');
    })
    $('.x-btn').click(function(){
        $('.search-box').hide();
    })
    </script>
</body>
</html>