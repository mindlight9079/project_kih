<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CART</title>
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        padding:0; margin: 0; list-style: none; color: black;
    }
    .subCatagory-list a:hover, .menu a:hover {
    	color: rgb(0, 104, 136); text-decoration: underline;
    }
    .fa-bars{
      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .container{
        margin-top: 120px; margin-bottom: 120px;
    }
    .cartTr{
        background-color: #f8f8f8
    }
    .cart-image{
        width: 80px; height: 105px;
    }
    .cart-contents{
        width: 600px;
    }
    .tableRow{
      background-color:#f8f8f8; width: 30%;
    }   
    .price-box{
       background-color: #f8f8f8; margin-top: 30px; text-align: center; position:relative
    }
    .fa-plus{
        position: absolute; top: 17px; left:calc(25% - 10px);
    }
    .fa-minus{
        position: absolute; top:17px; left:calc(50% - 15px);
    }
    .fa-equals{
        position: absolute; top:17px; left:calc(75% - 20px);
    }
    .pointView, .address{
        display: flex;
    }
    .point, .deli-addr{
        width: 800px;
    }
    .point td{
        display: flex;
    }
    .point div{
        margin-left: 40px; color:gray;
    }
    .point th, .deli-addr th{
        background-color: #f8f8f8; width: 150px;
    }
    .point .text{
        width: 100px; color:black
    }
    .point ul{
        margin-left: 40px;;
    }
    .collectPoint, .client{
        background-color: #f8f8f8; width: 310px; padding: 20px; 
    }
    .collectPoint h4, .client h4{
        font-size: 20px;
    }
    .collectPoint li{
    	position: relative;
    }
    .collectPoint span{
       position: absolute; right: 4px;
    }
    .address td, .address th{
        border: none;
    }
    .address{
        border-top: 1px solid #dee2e6;
    }
    .orderInfo tr>th{
        width: 100px;
    }
    .orderInfo tr>td>input{
        width: 150px;
    }
    .home-addr input{
        margin-bottom: 10px; width: 450px;
    }
    .shipping input{
        margin: 0 10px;
    }
  
    .side-bars{
        width: 400px; height: 1280px; background-color: black; position: absolute; z-index: 10;
        opacity: 80%; display: none; top:0px;
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
    .dome-list *, .foreign-list *{
        color : white;
    }
    .foreign-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px;
    }
    .fa-exclamation-triangle{
    	color: rgb(0, 104, 136);
    }
	.caution{
		font-size: 13px;
	}
    .pay-method{
        height: 70px; width: 100%;
        display: flex; border: 1px solid #dee2e6;
    }
    .pay-method li{
        width: calc(100% / 3); text-align: center; line-height: 70px;
        border-right: 1px solid #dee2e6;  cursor: pointer;
    }
    .pay-method li:last-child{
        border-right: none;
    }
    .doubleCheck{
        color: gray; text-align: center; font-size: 14px;
    }
    .agree{
        color: black;
    }
    .payment-btn{
       margin-left: calc(50% - 32px); margin-top: 7px;
    }
  	.deli-date, .green-deli, .total, .doro, .finalCount, .totalPoint {
  		font-weight: 600;
  	}
    
   .menu {
        display: flex; position: absolute; top: 15px; right: 30px; z-index: 12; 
    }
    .menu a{
     	color: black;
     }

    .menu ul li{
        float: left; padding: 10px;  font-size: 20px;  font-family:sans-serif; font-weight: bold;  cursor: pointer;
    }
  	.menu ul::after{
        content: ''; clear: both; display: block;
    }
    
    
</style>
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
           	 <li><a href="#">ORDERS</a></li>
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
	    <form action="<%=request.getContextPath()%>/order/payfinished" method="post">
	        <h6>| 상품확인</h6>
	        <table class="table cart-table">
	            <thead>
	            <tr class="cartTr">
	                <th></th>
	                <th class="cart-contents">상품정보</th>
	                <th>금액</th>
	                <th>수량</th>
	                <th>합계</th>
	                <th>배송일</th>
	            </tr>
	            </thead>
	            <tbody>
	            <c:forEach items="${paymentList}" var="payment" varStatus="status">
		            <tr>
		                <td>
		                	<img src="<%=request.getContextPath()%>/img${payment.ca_mainImg}" alt="cartImg" class="cart-image">
		                	<input type="hidden" value="${payment.ca_re_code}" name="ca_re_code">
		                </td>
		                <td >${payment.ca_title} <c:if test="${payment.ca_subTitle != null && payment.ca_subTitle != ''}"> : ${payment.ca_subTitle}</c:if></td>
		                <td class="price">${payment.ca_price}원</td>
		                <td class="amount">
		                	<c:if test="${payment.ca_amount != null}">${payment.ca_amount}</c:if>
							<input type="hidden" value="${payment.ca_amount}" name="pr_amount">
		                </td>
		                <td class="total" >${payment.ca_total_price}원</td>
		                <td class="deli-date"></td>
		            </tr>
	            </c:forEach>
	            </tbody>
	        </table>
	        <table class="table">
	          <tr>
	            <th rowspan="2" class="tableRow">배송일</th>
	            <td>
	              배송지
	              <div class="doro">도로명 : ${member.me_address}</div>
	              <div>지번  : ${member.me_jAddress}</div>
	            </td>
	          </tr>
	          <tr>
	            <td>
	            	그린배송 : <span class="green-deli"></span> 도착예정
	            	<div class="caution"><i class="fas fa-exclamation-triangle"></i> 날씨나 택배사 사정에 따라 배송이 지연될 수 있습니다</div>
	            	</td>
	          </tr>
	        </table>
	        <table class="table price-box">
	            <tr>
	                <td>
	                    총 상품금액
	                    <i class="fas fa-plus"></i>
	                </td>
	                <td>
	                    총 추가금액
	                    <i class="fas fa-minus"></i>
	                </td>
	                <td>
	                    총 할인금액
	                    <i class="fas fa-equals"></i>
	                </td>
	                <td>최종 결제금액</td>
	            </tr>
	            <tr>
	                <td class="totalCount"></td>
	                <td class="addPrice"></td>
	                <td>0원</td>
	                <td class="finalCount"></td>
	            </tr>
	        </table>
	        <input type="hidden" name="finalCount">
	        <div class="pointView">
	            <table class="table point">
	                <tbody>
	                    <tr>
	                        <th>그린포인트</th>
	                        <td>
	                            <div class="text">${member.me_point}</div>
	                            <div>그린포인트 5000원 이상이면 그린머니로 환전가능합니다.</div>
	                        </td>
	                    </tr>
	                </tbody>                
	            </table>
	            <ul class="collectPoint">
	                <h4>적립혜택</h4>
	                <hr>
	                <li>기보유 포인트 <span class="hasPoint">${member.me_point}</span></li>
	                <hr>
	                <li>기본적립 포인트<span class="basicPoint"></span></li>
	                <hr>
	                <li>총 예상 포인트<span class="totalPoint"></span></li>
	            </ul>
	        </div>
	        <br>
	        <h6>| 배송주소</h6>
	        <div class="address">
	            <table class="table deli-addr">
	                <tr>
	                    <th>배송지</th>
	                    <td class="shipping">
	                        <label><input type="radio" name="ship_addr" class="recentAddr">최근배송지</label>
	                        <label><input type="radio" name="ship_addr" class="memberAddr" checked>회원정보동일</label>
	                        <label><input type="radio" name="ship_addr" class="newAddr">새로입력</label>
	                    </td>
	                </tr>
	                <tr>
	                    <th>이름</th>
	                    <td>
	                    	<input type="text" value="${member.me_name}" class="name" name="or_receiver">
	                    	<input type="hidden" value="${member.me_id}" name="or_me_id">
	                    </td>
	                    
	                </tr>
	                <tr>
	                    <th>배송주소</th>
	                    <td class="home-addr">
	                        도로명주소 <input type="text" value=" ${member.me_address}" class="doroAddr"> <br>
	                        지번주소 <input type="text" value="${member.me_jAddress}" class="jibunAddr">
	                    </td>
	                </tr>
	                <tr>
	                    <th>휴대폰</th>
	                    <td>
	                        <input type="text" value="${member.me_phone}" class="phone">
	                    </td>
	                </tr>
	            </table>
	            <div class="client">
	                <table class="table orderInfo">
	                    <h4>주문고객</h4>
	                    <hr>
	                    <tr>
	                        <th>이름</th>
	                        <td><input type="text" value="${member.me_name}"></td>
	                    </tr>
	                    <tr>
	                        <th>휴대폰</th>
	                        <td><input type="text" value="${member.me_phone}"></td>
	                    </tr>
	                    <tr>
	                        <th>이메일</th>
	                        <td><input type="text" value="${member.me_email}"></td>
	                    </tr>
	                </table>
	            </div> 
	  
	        </div>
	        <br>
	        <h6>| 결제방법</h6>
            <ul class="pay-method">
                <li>카카오페이</li>
                <li>네이버페이</li>
                <li>카드</li>
            </ul>
            <div class="doubleCheck">
                주문하실 상품, 가격, 배송정보, 할인정보 등을 확인하였으며, 구매에 동의하시겠습니까?
                <label class="agree"><input type="checkbox" name="agree-btn"> 동의합니다.(전자상거래법 제 8조 제2항)</label>
            </div>
	        <button class="payment-btn btn btn-info">결제하기</button>
	    </form>
	    <button id="apibtn">카카오페이</button>
    </div>
<script>
$(function(){
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
    
    
	var totalCount = 0;	
	$('.price').each(function(){			
		var qty = $(this).siblings('.amount').text();
		totalCount += parseInt($(this).text())*qty;
	})
	$('.totalCount').text(totalCount+"원");
	
	var total = $('.totalCount').text();
	var num = parseInt(total.replace(/[^0-9]/g,''));
	if(num >= 10000){
		$('.addPrice').text('0원');		
	} else if(num < 10000){
		$('.addPrice').text('2500원');
	}
	var addPrice = $('.addPrice').text();
	var addNum = parseInt(addPrice.replace(/[^0-9]/g,''));
	var finalCount = num+addNum;
	$('.finalCount').text(finalCount+"원");
	$('[name=finalCount]').val(finalCount);
	
	var basicPoint = parseInt($('.totalCount').text())*0.05;
	$('.basicPoint').text(basicPoint);
	
	var hasPoint = parseInt($('.hasPoint').text());
	var totalPoint = hasPoint+basicPoint;
	$('.totalPoint').text(totalPoint);
	
	$('.newAddr').click(function(){
		$('.deli-addr input').val('');
	})
	
	$('.memberAddr').click(function(){
		$('.name').val('${member.me_name}');
		$('.doroAddr').val('${member.me_address}');
		$('.jibunAddr').val('${member.me_jAddress}');
		$('.phone').val('${member.me_phone}');
	})

	var now = new Date();
	now.setDate(now.getDate()+2)
	var more = now.toISOString().substring(0,10);
	$('.deli-date').text(more+" 도착예정");
	$('.green-deli').text(more);

	var contextPath = '<%=request.getContextPath()%>';
	
	$('#apibtn').click(function(){
		$.ajax({
			url: contextPath+'/order/kakaopay',
			dataType: 'json',
			data : JSON.stringify(data),
			contentType : 'application/json; charset=utf-8',
			success:function(data){
				var box = data.next_redirect_pc_url;
				window.open(box);
			},
			error:function(error){
				alert(error);
			}
		})
	})

	
	
})
</script>
</body>
</html>