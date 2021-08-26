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
        padding:0; margin: 0; list-style: none;
    }
    .subCatagory-list a:hover {
    	color: rgb(0, 104, 136); text-decoration: underline;
    }
    .fa-bars{
      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .container{
        margin-top: 120px;
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
    <div class="container">
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
	                <td><img src="<%=request.getContextPath()%>/img${payment.ca_mainImg}" alt="cartImg" class="cart-image"></td>
	                <td >${payment.ca_title}</td>
	                <td class="price">${payment.ca_price}원</td>
	                <td class="amount">
	                	<c:if test="${payment.ca_amount != null}">${payment.ca_amount}</c:if>
	                </td>
	                <td >${payment.ca_total_price}원</td>
	                <td>8/23일 도착예정</td>
	            </tr>
            </c:forEach>
            </tbody>
        </table>
        <table class="table">
          <tr>
            <th rowspan="2" class="tableRow">배송일</th>
            <td>
              배송지
              <div>도로명 : ${member.me_address}</div>
              <div>지번  : ${member.me_jAddress}</div>
            </td>
          </tr>
          <tr>
            <td>배송일정</td>
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
                    <td><input type="text" value="${member.me_name}" class="name"></td>
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
	
</script>
</body>
</html>