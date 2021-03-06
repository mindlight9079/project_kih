<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Details</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
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
      position: relative; 
    }
     body{
  	background-image: url(<%=request.getContextPath()%>/resources/js/whitewater.jpg); 
  	background-size: 400%;
  }
    .fa-bars{
      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .container{
      padding: 50px; padding-top: 150px; position:relative;
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
            <li class="domestic">????????????</li>
            <li class="foreign">????????????</li>
        </ul>
    </div>
    <div class="subCatagory-list">
         <ul class="dome-list">
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/???&country=??????/??????">??????/???</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=?????????&country=??????/??????">?????????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=????????????&country=??????/??????">????????????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????????????????&country=??????/??????">??????????????????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/?????????&country=??????/??????">IT/?????????</a></li>
         </ul>
     </div>
     <div class="subCatagory-list">
         <ul class="foreign-list">
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/??????&country=??????">??????/??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/??????&country=??????">??????/??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=?????????&country=??????">?????????</a></li>
             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=????????????&country=??????">????????????</a></li>         
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
            </c:if>
            <c:if test="${user.me_grade == 'ADMIN'}">
             <li><a href="<%=request.getContextPath()%>/admin/user/publisherlist">MANAGEMENT</a></li>
             <li><a href="<%=request.getContextPath()%>/admin/user/orders">ORDERS</a></li>
            </c:if>
             <li><a href="<%=request.getContextPath()%>/">HOME</a></li>
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
            <div>${book.bk_au_writer} ???
            	<c:if test="${subAuthor.size() != 0}"> 
	            	/ 
	            	<c:forEach items="${subAuthor}" var="subList" varStatus="status">
	            		${subList.au_writer} <c:if test="${status.index+1 != subAuthor.size() }">,</c:if>
	            	</c:forEach>
	            	???
	             </c:if>
             	| ${book.bk_publish} | ${book.date}</div>
            <div>
              ????????? | <h2 class="bookPrice">${regi.re_price}</h2>???
            </div>
            <div>?????? ????????? | ${regi.re_price_point}??? (5% ??????)</div>
            <div>???????????? | ?????????????????? ????????? ???????????? ??????</div>
            <div>????????? |  <c:if test="${regi.re_price >= 10000}">??????</c:if><c:if test="${regi.re_price < 10000}">2500???</c:if></div>
            <div>(10,000??? ?????? ????????? ????????? ??????)</div>
        </div>
        <div class="order-line">
          <div class="amount">
             ?????? &nbsp;
             <button type="button" id="decreaseQuantity" class="minus"><i class="fas fa-minus"></i></button>
             <input type="text" value="1" class="bookAmount" readonly>
             <button type ="button" id="increaseQuantity" class="plus"><i class="fas fa-plus"></i></button>
          </div>
           <a href="#"><button class="cart btn btn-info addCart-btn">????????????</button></a>
          <a href="<%=request.getContextPath()%>/order/payment" class="btn-buy"><button class="buy btn btn-secondary ">????????????</button></a>
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
                <th class="col-3">??????</th>
                <td>${book.bk_page}???</td>
              </tr>
              <tr>
                <th class="col-3">?????????</th>
                <td>${book.date}</td>
              </tr>
            </tbody>
          </table>
        </div>     
        <div class="book-contents">
          <div class="catagory">
              <h6>???????????? ??????</h6>
              <p>${book.bk_country} > ${regi.re_catagory}</p>
          </div>
          <div class="introduce">
            <h4>?????????</h4>
            <p>${regi.re_contents}</p>
          </div>
          <div class="writer">
              <h4>????????????</h4>
  
        <c:forEach items="${author}" var="authList" varStatus="status">
           <div class="main">
	               <p>?????? | ${authList.au_writer}</p>
	               <p>${authList.au_contents}</p>
	       </div>
        </c:forEach>
	       
  		<c:forEach items="${subAuthor}" var="subList" varStatus="status">
   		 <c:if test="${subList != null}">
           <div class="sub">
                <p>?????? | ${subList.au_writer}</p>
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
			alert('????????? ?????? ???????????????.');
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
					alert("?????? ?????? ??????")
				}
				var isGo = confirm("??????????????? ??????????????????????");
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
			alert('1??? ?????? ?????? ???????????????.');
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
					alert('???????????? ???????????????.');
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