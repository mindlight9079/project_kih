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
  <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    *{
      margin: 0; padding: 0; color:black; text-decoration: none; list-style: none;
    }
    a{
      color: black; text-decoration: none;
    }
    body{
      background-color: white; position: relative;
    }
    .fa-bars{
      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .container{
      padding: 50px; padding-top: 150px; background-color: white;  position:relative;
    }
    .book-top{
      display: flex; overflow: hidden; margin-left: 40px; width: 1000px;
    }
    .bookImg{
      width: 380px;
    }
    .bookImg img{
      width: 330px;
    }
    .title{
      width: 580px;
    }
    .height-line{
      width: 1px; height: 580px; background-color: gainsboro; margin-left:50px;
    }
    .title h1{
      margin-left: 50px;
    }
    .title p{
      color: gray; margin-top: 10px; margin-left: 50px; font-size: 18x;
    }
    .width-line{
      background-color: gainsboro; margin-top: 30px; height: 1px; width: 100%; 
    }
    .title-bottom{
      margin: 50px;
    }
    .title-bottom *{
      padding: 10px;
    }
    .title-bottom h2{
      display: inline;
    }
    .order-line{
      display: flex; margin-left: 50px; line-height: 40px; padding: 10px; 
    }
    .order-line * {
      margin-right: 15px;
    }
    .amount input{
      width: 100px; height: 30px;
    }
    .cart, .buy{
      width: 80px; height: 40px; font-size: 12px; line-height: 40px;
    }
    .cart a, .buy a{
      margin: 0 auto;
    }
 
    .middle-line{
      width: 1040px; height:2px; color: gainsboro;
    }
    .book-bottom{
      padding: 10px 30px;
    }
    .table-box{
      margin-top: 30px;
    }
    hr{
      margin-top: -0.7px;
    }
    .table-box th{
      background-color: gainsboro; text-align: center;
    }
    .catagory, .introduce{
      margin-top: 30px;
    }
    .writer{
      margin-top: 60px;
    }
    .introduce h4, .writer h4{
      margin-bottom: 30px;
    }
    .catagory h6, .introduce h4, .writer h4{
      font-weight: bold;
    }
    .catagory p{
      font-size: 14px;
    }
    .sub{
      margin-top: 40px;
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
    .foreign-list, .ebook-list, .web-novel-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px;
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
            <li class="ebook">ebook</li>
            <li class="webNovel">웹소설/코믹</li>
        </ul>
    </div>
    <div class="subCatagory-list">
        <ul class="dome-list">
            <li>소설/시</li>
            <li>에세이</li>
            <li>인문</li>
            <li>역사</li>
            <li>예술</li>
            <li>종교</li>
            <li>사회</li>
            <li>과학</li>
            <li>자기계발</li>
            <li>국어와외국어</li>
            <li>IT/모바일</li>
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
    <div class="subCatagory-list">
        <ul class="ebook-list">
            <li>장르소설</li>
            <li>소설</li>
            <li>에세이/시</li>
            <li>경제/경영</li>
            <li>자기계발</li>
            <li>인문/사회/정치</li>
            <li>역사/종교</li>
            <li>외국어</li>
            <li>IT/모바일</li>
        </ul>
    </div>
    <div class="subCatagory-list">
        <ul class="web-novel-list">
            <li>웹소설</li>
            <li>웹툰</li>
        </ul>
    </div>
</div>

  <i class="fas fa-bars"></i>
  <div class="container">
    <div class="book-top">
      <div class="bookImg">
       <img src="<%=request.getContextPath()%>/img${book.bk_mainImg}" alt="book-image">
     </div>
     <div class="height-line"></div>
     <div class="title">
        <h1>${book.bk_title}</h1>
        <p> ${book.bk_subtitle}</p>
        <div class="width-line"></div>
        <div class="title-bottom">
            <div>${book.bk_au_writer} / ${aSubAuthor.au_writer} 역 | ${book.bk_publish} | ${book.date}</div>
            <div>
              판매가 | <h2>${regi.re_price}</h2>원
            </div>
            <div>그린 포인트 | ${regi.re_price_point}원 (5% 적립)</div>
            <div>배송일정 | 서울시특별구 종로구 세정대로 기준</div>
            <div>배송비 |  <c:if test="${regi.re_price >= 10000}">무료</c:if><c:if test="${regi.re_price < 10000}">2500원</c:if></div>
            <div>(10,000원 이상 구매시 배송비 무료)</div>
        </div>
        <div class="order-line">
          <div class="amount">
            수량 <input type="number" min="0" value="0">
          </div>
          <button class="cart"><a href="<%=request.getContextPath()%>/buy/cart">장바구니</a></button>
          <button class="buy">바로구매</button>
        </div>
      </div>
    </div>
    <hr>
    <div class="book-bottom">
      <div class="table-box">
          <table class="table table-bordered table-sm">
            <tbody>
              <tr>
                <th class="col-3">ISBN</th>
                <td>${book.bk_isbn}</td>
              </tr>
              <tr>
                <th class="col-3">쪽수</th>
                <td>${book.bk_page}쪽</td>
              </tr>
              <tr>
                <th class="col-3">출간일</th>
                <td>${book.date}</td>
              </tr>
            </tbody>
          </table>
        </div>     
        <div class="book-contents">
          <div class="catagory">
              <h6>카테고리 분류</h6>
              <p>${anAuthor.au_country} > ${regi.re_catagory}</p>
          </div>
          <div class="introduce">
            <h4>책소개</h4>
            <p>${regi.re_contents}</p>
          </div>
          <div class="writer">
              <h4>저자소개</h4>
  
        <c:forEach items="author" var="authList" varStatus="status">
           <div class="main">
	               <p>저자 | ${authList.au_writer}</p>
	               <p>${authList.au_contents}</p>
	       </div>
        </c:forEach>
	       
  		<c:forEach items="subAuthor" var="subList" varStatus="status">
   		 <c:if test="${subList != null}">
           <div class="sub">
                <p>역자 | ${subList.au_writer}</p>
                <p>${subList.au_contents}</p>
           </div>
   	     </c:if>
        </c:forEach>
           
          </div>
        </div>
    </div>
  </div>
<script>
    $('.fa-bars').click(function(){
        $('.side-bars').show();
    })
    $('.fa-times').click(function(){
        $('.side-bars').hide();
    })

    $('.domestic').hover(function(){
        $('.foreign-list').hide();
        $('.ebook-list').hide();
        $('.web-novel-list').hide();
        $('.dome-list').show();
    })
    $('.foreign').hover(function(){
        $('.dome-list').hide();
        $('.ebook-list').hide();
        $('.web-novel-list').hide();
        $('.foreign-list').show();
    })
    $('.ebook').hover(function(){
        $('.foreign-list').hide();
        $('.dome-list').hide();
        $('.web-novel-list').hide();
        $('.ebook-list').show();
    })
    $('.webNovel').hover(function(){
        $('.foreign-list').hide();
        $('.dome-list').hide();
        $('.ebook-list').hide();
        $('.web-novel-list').show();
    })
</script>
</body>
</html>