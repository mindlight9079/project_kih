<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <link
    rel="stylesheet"
    href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<style>
    * {
        margin: 0; padding: 0; text-decoration: none; list-style: none; color:black;
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
        width: 250px; margin: 20px;  margin: 80px 60px 20px;
    }
    .contents div{
        text-align: center;
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
        width: 150px; margin-right: 60px;
    }
    .container3{
        position: relative;
    }
    .contents3{
        position: absolute; display: flex; top: 250px; left:calc(50% - 1095px / 2);
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
</style>
</head>
<body>
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
             <li><a href="<%=request.getContextPath()%>/buy/cart">CART</a></li>
            </c:if>
            <c:if test="${user.me_grade == 'ADMIN'}">
             <li><a href="<%=request.getContextPath()%>/admin/user/booklist">MANAGEMENT</a></li>
            </c:if>
        </ul>
        <i class="fas fa-search"></i>
    </div>
    <div class="container" >
        <div class="choice">
         Green's Choice
        <div class="line"></div>
        </div>
        <div class="choiceImg">
                <div class="swiper-container mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                         <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                           <a class="contents" href="<%=request.getContextPath()%>/book/details">
                            <img src="<%=request.getContextPath()%>/resources/js/소크라테스 익스프레스.jpg" alt="express">
                                <div>소크라테스 익스프레스</div>
                                <div>에릭 와이너 저/김하현 역 |어크로스</div>
                            </a>
                        </div>
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
        <span>1</span><img src="소크라테스 익스프레스.jpg" alt="express">
        <span>2</span><img src="소크라테스 익스프레스.jpg" alt="express">
        <span>3</span><img src="소크라테스 익스프레스.jpg" alt="express">
        <span>4</span><img src="소크라테스 익스프레스.jpg" alt="express">
        <span>5</span><img src="소크라테스 익스프레스.jpg" alt="express">
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
    </script>
</body>
</html>