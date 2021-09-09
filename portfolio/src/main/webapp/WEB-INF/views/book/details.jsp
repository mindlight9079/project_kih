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
  <link rel="stylesheet" href="/portfolio/resources/css/common.css">
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
    .subCatagory-list a:hover, .menu a:hover {
    	color: rgb(0, 104, 136); text-decoration: underline;
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
      width: 1px; min-height: 580px; background-color: gainsboro; margin-left:50px;
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
      display: flex; margin-left: 50px; padding: 10px; margin-bottom: 35px; line-height: 30px;
    }
    .order-line * {
      margin-right: 15px;
    }
    .amount input[type="text"]{
      width: 47px; height: 30px; margin-right: -1px; text-align: center;
    }
    .amount{
    	display: flex; margin-top: 4px;
    }
	.cart{
	  margin-right : -10px;
	}
    .cart a, .buy a{
      margin: 0 auto;
    }
 
    .middle-line{
      min-width: 1040px; height:2px; color: gainsboro;
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
      background-color: #f8f8f8; text-align: center;
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
        color: white; margin-bottom: 20px; margin-left: 20px; cursor: pointer; font-size: 18px;
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
    .dome-list *, .foreign-list *{
    	color: white; font-size: 18px;
    }
    .foreign-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px;
    }
    
    .minus, .plus {
    	width:30px; height: 30px;  line-height: 30px; background-color: #f8f8f8; border: 1px solid gray;
    	margin-right: -1px;
    }
    .plus{
    	margin-right: 15px;
    }
    .fas {
   		text-align: center; margin-right :0;
    }
    
   .menu {
        display: flex; position: absolute; top: 15px; right: 30px; z-index: 12;
    }
    .menu ul li{
        float: left; padding: 10px;  font-size: 20px;  font-family:sans-serif; font-weight: bold;  cursor: pointer;
    }
     .menu ul li a{
     	font-size: 18px; font-weight: bold;  
     }
  	.menu ul::after{
        content: ''; clear: both; display: block;
    }

  </style>
</head>
<body>
  <div class="side-bars bars">
    <i class="fas fa-times"></i>
    <div class="catagory-list">
        <ul>
            <li class="domestic">국내도서</li>
            <li class="foreign">외국도서</li>
        </ul>
    </div>
    <div class="subCatagory-list">
         <ul class="dome-list">
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설/시&country=국내/해외">소설/시</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=에세이&country=국내/해외">에세이</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문&country=국내/해외">인문</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=역사&country=국내/해외">역사</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술&country=국내/해외">예술</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=종교&country=국내/해외">종교</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=사회&country=국내/해외">사회</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=과학&country=국내/해외">과학</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자기계발&country=국내/해외">자기계발</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=국어와외국어&country=국내/해외">국어와외국어</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/모바일&country=국내/해외">IT/모바일</a></li>
         </ul>
     </div>
     <div class="subCatagory-list">
         <ul class="foreign-list">
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=문학&country=외국">문학</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설&country=외국">소설</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=경제/경영&country=외국">경제/경영</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문/사회&country=외국">인문/사회</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술&country=외국">예술</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=컴퓨터&country=외국">컴퓨터</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자연과학&country=외국">자연과학</a></li>         
         </ul>
    </div>
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
           	 <li><a href="<%=request.getContextPath()%>/member/mypage">MYPAGE</a></li>
             <li><a href="<%=request.getContextPath()%>/order/cart">CART</a></li>
             <li><a href="<%=request.getContextPath()%>/">HOME</a></li>
            </c:if>
            <c:if test="${user.me_grade == 'ADMIN'}">
             <li><a href="<%=request.getContextPath()%>/admin/user/booklist">MANAGEMENT</a></li>
            </c:if>
        </ul>
    </div>
  <div class="container">
    <div class="book-top">
      <div class="bookImg">
       <img src="<%=request.getContextPath()%>/img${book.bk_mainImg}" alt="book-image">
     </div>
     <div class="height-line"></div>
     <div class="title">
        <h1 class="bookTitle">${book.bk_title}</h1>
        <p class="bookSubTitle"> ${book.bk_subtitle}</p>
        <div class="width-line"></div>
        <div class="title-bottom">
            <div>${book.bk_au_writer} 저
            	<c:if test="${subAuthor.size() != 0}"> 
	            	/ 
	            	<c:forEach items="${subAuthor}" var="subList" varStatus="status">
	            		${subList.au_writer} <c:if test="${status.index+1 != subAuthor.size() }">,</c:if>
	            	</c:forEach>
	            	역
	             </c:if>
             	| ${book.bk_publish} | ${book.date}</div>
            <div>
              판매가 | <h2 class="bookPrice">${regi.re_price}</h2>원
            </div>
            <div>그린 포인트 | ${regi.re_price_point}원 (5% 적립)</div>
            <div>배송일정 | 서울시특별구 종로구 세정대로 기준</div>
            <div>배송비 |  <c:if test="${regi.re_price >= 10000}">무료</c:if><c:if test="${regi.re_price < 10000}">2500원</c:if></div>
            <div>(10,000원 이상 구매시 배송비 무료)</div>
        </div>
        <div class="order-line">
          <div class="amount">
             수량 &nbsp;
             <button type="button" id="decreaseQuantity" class="minus"><i class="fas fa-minus"></i></button>
             <input type="text" value="1" class="bookAmount" readonly>
             <button type ="button" id="increaseQuantity" class="plus"><i class="fas fa-plus"></i></button>
          </div>
           <a href="#"><button class="cart btn btn-info addCart-btn">장바구니</button></a>
          <a href="<%=request.getContextPath()%>/order/payment" class="btn-buy"><button class="buy btn btn-secondary ">바로구매</button></a>
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
              <p>${book.bk_country} > ${regi.re_catagory}</p>
          </div>
          <div class="introduce">
            <h4>책소개</h4>
            <p>${regi.re_contents}</p>
          </div>
          <div class="writer">
              <h4>저자소개</h4>
  
        <c:forEach items="${author}" var="authList" varStatus="status">
           <div class="main">
	               <p>저자 | ${authList.au_writer}</p>
	               <p>${authList.au_contents}</p>
	       </div>
        </c:forEach>
	       
  		<c:forEach items="${subAuthor}" var="subList" varStatus="status">
   		 <c:if test="${subList != null}">
           <div class="sub">
                <p>역자 | ${subList.au_writer}</p>
                <p>${subList.au_contents}</p>
           </div>
   	     </c:if>
        </c:forEach>
          
          </div>
        </div>
        
           <input type="hidden" value="${regi.re_code}" class="code">
           <input type="hidden" value="${regi.re_amount}" class="stockAmount">
        
    </div>
  </div>
<script>
$(function(){
	var contextPath = '<%=request.getContextPath()%>';
	var user = '${user==null?'':user.me_id}';
	var result = '0';
	$('.addCart-btn').click(function(){
		if(user == ''){
			alert('회원만 사용 가능합니다.');
			return;
		}
		var amount = $('.bookAmount').val();
		var code = $('.code').val();
		var data = {
			ca_amount : amount,
			ca_re_code : code
		};
		$.ajax({
			url : contextPath + '/order/cart',
			type: 'post',
			data : JSON.stringify(data),
			contentType : 'application/json; charset=utf-8',
			success : function(result){
				if(result == '1'){
					alert("카트 담기 성공")
				}
				var isGo = confirm("장바구니로 이동하겠습니까?");
				if(isGo){
					location.href= '<%=request.getContextPath()%>/order/cart'
				}
			}
		})
	})
	
	var stockAmount = $('.stockAmount').val();
	
    $('#decreaseQuantity').click(function(e){
       	e.preventDefault();
       	var stat = $('.bookAmount').val();
       	var num = parseInt(stat);
       	num--;
      
        	$('.bookAmount').val(num);
        	$('.bookAmount').change();
     });
    	
     $('#increaseQuantity').click(function(e){
        e.preventDefault();
        var stat = $('.bookAmount').val();
        var num = parseInt(stat);
        num++;

        	$('.bookAmount').val(num);
        	$('.bookAmount').change();
     });

	
	$('.bookAmount').change(function(){
		var code = $('.code').val();
		var amount = $(this).val();
		var data = {
			ca_re_code : code,
			ca_amount : amount
		};
		var obj = $(this);
		if(amount <=0){
			alert('1개 이상 구매 가능합니다.');
			obj.val(amount = '1');
			return false;
		}
		$.ajax({
			url : contextPath + '/order/cart/stock',
			type: 'post',
			data : JSON.stringify(data),
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			success : function(result){
				if(result.re_amount < amount){
					alert('재고량이 부족합니다.');
					obj.val(result.re_amount)
				}
			}
		})
	})
	
	
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
    
    var prevScrollTop = 0;
    var nowScrollTop = 0;
    function wheelDelta(){
        return prevScrollTop - nowScrollTop > 0 ? 'up' : 'down';
    };
    $(window).on('scroll', function(){
        nowScrollTop = $(this).scrollTop();
            if(wheelDelta() == 'down'){
                $('.bars').fadeOut();
            }     
        prevScrollTop = nowScrollTop;
    });
    
    $('.btn-buy').click(function(e){
    	var amount = $('.bookAmount').val();
    	var isbn = '${book.bk_isbn}';

		if(parseInt(amount) <= 0){
			e.preventDefault();
		} else
		$(this).attr('href','<%=request.getContextPath()%>/order/payment?isbn='+isbn+'&amount='+amount)
    })
	 
})
</script>
</body>
</html>