<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<style>
    *{
        padding:0; margin: 0; list-style: none; color: black;
    }
    body{
    	background-image: url(<%=request.getContextPath()%>/resources/js/whitewater.jpg); 
    	background-size: 400%;
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
    	position: relative; height: 48px;
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
        color : white; font-size: 18px;
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
        width: calc(100% / 2); text-align: center; line-height: 70px;
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
     .menu ul li a{
     	font-size: 18px; font-weight: bold;  
     }
  	.menu ul::after{
        content: ''; clear: both; display: block;
    }
    
	.exchange{
		margin-left: 5px;
	}
	.usePoint{
		position: absolute; right: 4px; color: rgb(0, 104, 136); 
	}

	.new-addr{
		display: none;  margin-bottom: 10px; width: 450px;
	}
	.doroName, .jibunName{
		width: 450px;
	}
	.new-addr input {
		margin-bottom : 10px;
	}
    
</style>
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
	    <form action="<%=request.getContextPath()%>/order/payfinished" method="post" id="a">
	        <h6>| ????????????</h6>
	        <table class="table cart-table">
	            <thead>
	            <tr class="cartTr">
	                <th></th>
	                <th class="cart-contents">????????????</th>
	                <th>??????</th>
	                <th>??????</th>
	                <th>??????</th>
	                <th>?????????</th>
	            </tr>
	            </thead>
	            <tbody>
	            <c:forEach items="${paymentList}" var="payment" varStatus="status">
		            <tr>
		                <td>
		                	<img src="<%=request.getContextPath()%>/img${payment.ca_mainImg}" alt="cartImg" class="cart-image">
		                	<input type="hidden" value="${payment.ca_isbn}" name="isbn">
		                </td>
		                <td >${payment.ca_title} <c:if test="${payment.ca_subTitle != null && payment.ca_subTitle != ''}"> : ${payment.ca_subTitle}</c:if></td>
		                <td class="price">${payment.ca_price}???</td>
		                <td class="amount">
		                	<c:if test="${payment.ca_amount != null}">${payment.ca_amount}</c:if>
		                		<input type="hidden" value="${payment.ca_amount}" class="ca_amount" name="pr_amount">
		                		<input type="hidden" value="${payment.ca_re_code}" class="codeNum">
		                </td>
		                <td class="total" >${payment.ca_total_price}???</td>
		                <td class="deli-date"></td>
		            </tr>
	            </c:forEach>
	            </tbody>
	        </table>
	        <table class="table">
	          <tr>
	            <th rowspan="2" class="tableRow">?????????</th>
	            <td>
	              ?????????
	              <div class="doro">????????? : ${member.me_address}</div>
	              <div>??????  : ${member.me_jAddress}</div>
	            </td>
	          </tr>
	          <tr>
	            <td>
	            	???????????? :
	            	<span class="green-deli"></span> ????????????
	            	<input type="hidden" name="or_deli_date">
	            	<div class="caution"><i class="fas fa-exclamation-triangle"></i> ????????? ????????? ????????? ?????? ????????? ????????? ??? ????????????</div>
	            	</td>
	          </tr>
	        </table>
	        <table class="table price-box">
	            <tr>
	                <td>
	                    ??? ????????????
	                    <i class="fas fa-plus"></i>
	                </td>
	                <td>
	                    ??? ????????????
	                    <i class="fas fa-minus"></i>
	                </td>
	                <td>
	                    ??? ????????????
	                    <i class="fas fa-equals"></i>
	                </td>
	                <td>?????? ????????????</td>
	            </tr>
	            <tr>
	                <td class="totalCount" id="totalPrice"></td>
	                <td class="addPrice"></td>
	                <td class="pointDiscount">0???</td>
	                <td class="finalCount"></td>
	            </tr>
	        </table>
	        <input type="hidden" name="finalCount">
	        <input type="hidden" name="addPrice">
	        <div class="pointView">
	            <table class="table point">
	                <tbody>
	                    <tr>
	                        <th>???????????????</th>
	                        <td>
	                            <div class="text">${member.me_point}</div>
	                            <div>??????????????? 5000??? ???????????? ??????????????? ?????????????????????.</div>
	                        </td>
	                    </tr>
	                    <c:if test="${member.me_point >= 5000 }">
						<tr>
							<th></th>
							<td>
								<input type="text" id="charge" readonly>
								<input type="hidden" class="useGreen" name="pr_use_point" value="0">
								<button type="button" class="exchange btn btn-secondary">??????</button>
							</td>
						</tr>
	                    </c:if>
	                </tbody>                
	            </table>
	            <ul class="collectPoint">
	                <h4>????????????</h4>
	                <hr>
	                <li>????????? ????????? 
	                	<span class="hasPoint" id="hasPoint">${member.me_point}</span>
	                	<div class="usePoint"></div>	
	                </li>
	                <hr>
	                <li>???????????? ?????????<span class="basicPoint"></span><input type="hidden" name="or_green_point"></li>
	                <hr>
	                <li>??? ?????? ?????????<span class="totalPoint"></span></li>
	            </ul>
	        </div>
	        <br>
	        <h6>| ????????????</h6>
	        <div class="address">
	            <table class="table deli-addr">
	                <tr>
	                    <th>?????????</th>
	                    <td class="shipping">
	                        <label><input type="radio" name="ship_addr" class="recentAddr" value="recent">???????????????</label>
	                        <label><input type="radio" name="ship_addr" class="memberAddr" value="same" checked>??????????????????</label>
	                        <label><input type="radio" name="ship_addr" class="newAddr" value="new">????????????</label>
	                    </td>
	                </tr>
	                <tr>
	                    <th>??????</th>
	                    <td>
	                    	<input type="text" value="${member.me_name}" class="name">
	                    	<input type="hidden" value="${member.me_id}" name="or_me_id">
	                    </td>
	                    
	                </tr>
	                <tr>
	                    <th>????????????</th>
	                    <td class="home-addr">
	                        ??????????????? <input type="text" value=" ${member.me_address}" class="doroAddr"> <br>
	                        ???????????? <input type="text" value="${member.me_jAddress}" class="jibunAddr">
	                    </td>
						<td class="new-addr">
							<input type="text" id="sample4_postcode" placeholder="????????????">
							<button type="button" class="btn btn-secondary addrNum">???????????? ??????</button><br>
							<input type="text" id="sample4_roadAddress" placeholder="???????????????" class="doroName">
							<input type="text" id="sample4_jibunAddress" placeholder="????????????" class="jibunName">
							<span id="guide" style="color:#999;display:none"></span>
							<input type="text" id="sample4_detailAddress" placeholder="????????????">
							<input type="text" id="sample4_extraAddress" placeholder="????????????">
							<input type="hidden" name="dAddress">
                			<input type="hidden" name="jAddress">
						</td>
	                </tr>
	                <tr>
	                    <th>?????????</th>
	                    <td>
	                        <input type="text" value="${member.me_phone}" class="phone">
	                    </td>
	                </tr>
	            </table>
	            <div class="client">
	                <table class="table orderInfo">
	                    <h4>????????????</h4>
	                    <hr>
	                    <tr>
	                        <th>??????</th>
	                        <td><input type="text" value="${member.me_name}" class="orderName"></td>
	                    </tr>
	                    <tr>
	                        <th>?????????</th>
	                        <td><input type="text" value="${member.me_phone}" class="cellPhone"></td>
	                    </tr>
	                    <tr>
	                        <th>?????????</th>
	                        <td><input type="text" value="${member.me_email}" class="email"></td>
	                    </tr>
	                </table>
	            </div> 
	  
	        </div>
	        <br>
	        
	        <h6>| ????????????</h6>
            <ul class="pay-method">
                <li><label><input type="checkbox" name="pay" value="kakao">???????????????</label></li>
                <li><label><input type="checkbox" name="pay" value="card">??????</label></li>
            </ul>
            <div class="doubleCheck">
                ???????????? ??????, ??????, ????????????, ???????????? ?????? ??????????????????, ????????? ?????????????????????????
                <label class="agree"><input type="checkbox" name="agree-btn"> ???????????????.(?????????????????? ??? 8??? ???2???)</label>
            </div>
            <input type="hidden" id="partner_order_id" name="partner_order_id">
            <input type="hidden" id="sh_doro" name="sh_doro" style="width: 500px">
            <input type="hidden" id="sh_jibun" name="sh_jibun">
            <input type="hidden" name="or_receiver">
            <input type="hidden" name="sh_phone">
	        <button class="payment-btn btn btn-info" type="button">????????????</button>
	    </form>
    </div>
   
<script>
$(function(){
function fullAddress(){
    var sp = $('input[id=sample4_postcode]').val();
    var road = $('input[id=sample4_roadAddress]').val();
    var jibun = $('input[id=sample4_jibunAddress]').val();
    var detail = $('input[id=sample4_detailAddress]').val();
    var extra = $('input[id=sample4_extraAddress]').val();
    var address = sp+", "+road+" "+detail+" "+extra;
    var jAddress = sp+", "+jibun+" "+detail+" "+extra;
    $('[name=dAddress]').val(address);
    $('[name=jAddress]').val(jAddress);	
    $('[name=sh_doro]').val(address);
    $('[name=sh_jibun]').val(jAddress);	
}

function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var roadAddr = data.roadAddress; // ????????? ?????? ??????
            var extraRoadAddr = ''; // ?????? ?????? ??????

            if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            if(data.buildingName !== '' && data.apartment === 'Y'){
            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(?????? ????????? ?????? : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(?????? ?????? ?????? : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
          	
            fullAddress();
            
        }
    }).open();
}

	$('.addrNum').click(function(){
		sample4_execDaumPostcode();
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
    
    
	var totalCount = 0;	
	$('.price').each(function(){			
		var qty = $(this).siblings('.amount').text();
		totalCount += parseInt($(this).text())*qty;
	})
	$('.totalCount').text(totalCount+"???");
	
	var total = $('.totalCount').text();
	var num = parseInt(total.replace(/[^0-9]/g,''));
	if(num >= 10000){
		$('.addPrice').text('0???');		
	} else if(num < 10000){
		$('.addPrice').text('2500???');
	}
	
	var addPrice = $('.addPrice').text();
	var addNum = parseInt(addPrice.replace(/[^0-9]/g,''));
	var finalCount = num+addNum;
	$('.finalCount').text(finalCount+"???");
	$('[name=finalCount]').val(finalCount);
	
	$('[name=addPrice]').val(addNum);	
	
	var basicPoint = parseInt($('.totalCount').text())*0.05;
	$('.basicPoint').text(basicPoint);
	$('[name=or_green_point]').val(basicPoint);
	
	var hasPoint = parseInt($('.hasPoint').text());
	var totalPoint = hasPoint+basicPoint;
	$('.totalPoint').text(totalPoint);
	
	$('.new-addr').change(function(){
		 fullAddress();
	})	
	
	$('.newAddr').click(function(){
		$('.home-addr').hide();
		$('.new-addr').show();
		$('.name').val('');
		$('.phone').val('');
		var sp = $('input[id=sample4_postcode]').val('');
	    var road = $('input[id=sample4_roadAddress]').val('');
	    var jibun = $('input[id=sample4_jibunAddress]').val('');
	    var detail = $('input[id=sample4_detailAddress]').val('');
	    var extra = $('input[id=sample4_extraAddress]').val('');
	    var guide = $('#guide').text('');
	})
	

	$('.name').change(function(){
      	if($('input[name=ship_addr]:checked').val() == 'new'){
		    newValue = $(this).val();
			$('[name=or_receiver]').val(newValue);
      	} else if($('input[name=ship_addr]:checked').val() == 'same'){
			differName =  $(this).val();
			$('[name=or_receiver]').val(differName);
		} else if($('input[name=ship_addr]:checked').val() == 'recent'){
			recentDifferName = $(this).val();
			$('[name=or_receiver]').val(recentDifferName);
		}
	})
	
	$('.phone').change(function(){
      	if($('input[name=ship_addr]:checked').val() == 'new'){
		    newPhone = $(this).val();
			$('[name=sh_phone]').val(newPhone);
      	} else if($('input[name=ship_addr]:checked').val() == 'same'){
			differPhone =  $(this).val();
			$('[name=sh_phone]').val(differPhone);
		} else if($('input[name=ship_addr]:checked').val() == 'recent'){
			recentDifferPhone = $(this).val();
			$('[name=sh_phone]').val(recentDifferPhone);
		}
	})
	
	$('.home-addr').change(function(){
		if($('input[name=ship_addr]:checked').val() == 'same'){
			differAddr1 =  $(this).find('.doroAddr').val();
			differAddr2 =  $(this).find('.jibunAddr').val();
			$('[name=sh_doro]').val(differAddr1);
			$('[name=sh_jibun]').val(differAddr2);
		}
		if($('input[name=ship_addr]:checked').val() == 'recent'){
			recentDiffer1 = $(this).find('.doroAddr').val();
			recentDiffer2 = $(this).find('.jibunAddr').val();
			$('[name=sh_doro]').val(recentDiffer1);
			$('[name=sh_jibun]').val(recentDiffer2);
		}
	})
	
	$('.doroAddr').focus('input', function(){
	if($('input[name=ship_addr]:checked').val() == 'recent'){
		recentAddr1 =  $(this).val();
		recentAddr2 =  $(this).parent().find('.jibunAddr').val();
		recentName = $(this).parents('.deli-addr').find('.name').val();
		recentPhone = $(this).parents('.deli-addr').find('.phone').val();
		$('[name=sh_doro]').val(recentAddr1);
		$('[name=sh_jibun]').val(recentAddr2);
		$('[name=or_receiver]').val(recentName);
		$('[name=sh_phone]').val(recentPhone);
		
	}
})
	
	var addrList = $('input[name=ship_addr]:checked').val();
	if(addrList == 'same'){
		$('[name=sh_doro]').val($('.doroAddr').val());
		$('[name=sh_jibun]').val($('.jibunAddr').val());
		$('[name=or_receiver]').val($('.name').val());
		$('[name=sh_phone]').val($('.phone').val());
	}
	
	
	$('.memberAddr').click(function(){
		$('.home-addr').show();
		$('.new-addr').hide();
		$('.name').val('${member.me_name}');
		$('.doroAddr').val('${member.me_address}');
		$('.jibunAddr').val('${member.me_jAddress}');
		$('.phone').val('${member.me_phone}');
		$('[name=sh_doro]').val($('.doroAddr').val());
		$('[name=sh_jibun]').val($('.jibunAddr').val());
		$('[name=or_receiver]').val($('.name').val());
		$('[name=sh_phone]').val($('.phone').val());
	})
	
	var now = new Date();
	now.setDate(now.getDate()+2)
	var more = now.toISOString().substring(0,10);
	$('.deli-date').text(more+" ????????????");
	$('.green-deli').text(more);
	$('[name=or_deli_date]').val(more);
	
	$('.exchange').click(function(){
		var child = window.open("<%=request.getContextPath()%>/order/pointexchange", "_blank", "height=400, width=400");
	})
	
	$('.recentAddr').click(function(){
		$('.home-addr').show();
		$('.new-addr').hide();
		$('.name').val('');
		$('.phone').val('');
		$('.jibunAddr').val('');
		$('.doroAddr').val('');
		var addrChild = window.open("<%=request.getContextPath()%>/order/address", "_blank", "height=400, width=800");
	})
	
	
	$('#charge').focus('input', function(){
		if($('#charge').val() != ''){		
			$('.pointDiscount').text($('#charge').val());
			var minus = $('.pointDiscount').text();
			var minusPoint = parseInt(minus.replace(/[^0-9]/g,''));
			var finalCount = num+addNum-minusPoint;
			$('.finalCount').text(finalCount+"???");
			$('[name=finalCount]').val(finalCount);
			$('.usePoint').text("-"+minusPoint);
			var totalPoint = hasPoint+basicPoint-minusPoint;
			$('.totalPoint').text(totalPoint);
			$('.useGreen').val(minusPoint);

		}else{
			$('.pointDiscount').text("0???");
		}
	})
	
	var contextPath = '<%=request.getContextPath()%>';	
	$('.payment-btn').click(function(){
		if($('[name=pay]:checked').length == 0){
			alert('?????? ????????? ???????????????.')
			return false;
		}
		if($('[name=agree-btn]:checked').length == 0){
			alert('?????? ?????? ?????? ??? ??????????????? ????????? ???????????????.');
			return false;
		}
		var str = true;
		$('.cart-table tr').each(function(){
			if(!checkAmount($(this)))
				str = false;
		})
		if(!str){
			location.reload();
			return false;
		}
		if($('[name=pay]:checked').val() == 'kakao'){
			var sh_name = $('[name=or_receiver]').val();
			var	sh_doro = $('[name=sh_doro]').val();
			var	sh_jibun = $('[name=sh_jibun]').val();				
			var sh_phone = $('[name=sh_phone]').val();
	
			var or_me_id = $('[name=or_me_id]').val();
			var or_receiver = $('[name=or_receiver]').val();
			var finalCount = $('[name=finalCount]').val();
			var or_deliver = $('[name=addPrice]').val();	
			var or_green_point = $('[name=or_green_point]').val();
			var or_deli_date = $('[name=or_deli_date]').val();
			var or_pay_card = $('[name=pay]:checked').val();
			
			var data = {
					sh_name : sh_name,
					sh_doro : sh_doro,
					sh_jibun : sh_jibun,
					sh_phone : sh_phone,
					or_me_id : or_me_id,
					or_receiver : or_receiver,
					or_payment : finalCount,
					or_deliver : or_deliver,
					or_green_point : or_green_point,
					or_deli_date : or_deli_date,
					or_pay_card : or_pay_card
				};
			$.ajax({
				async: false,
				url: contextPath+'/order/kakaopay',
				type : "post",
				dataType: 'json',
				data : data,
				//contentType : 'application/json; charset=utf-8',
				success:function(data){
					var box = data.next_redirect_pc_url;
					a = window.open(box);
				},
				error:function(error){
					alert(error);
				}
			})
			return false;
		}
		
		if($('[name=pay]:checked').val() == 'card'){
			var finalCount = $('[name=finalCount]').val();
			var email = $('.email').val();
			var name = $('.orderName').val();
			var cellPhone = $('.cellPhone').val()
			var	doro = $('[name=sh_doro]').val();
			var	jibun = $('[name=sh_jibun]').val();	
			var pay_method = 'card';
		
			
			IMP.init('imp78262628');
			IMP.request_pay({
			    pg : 'inicis',
			    pay_method : pay_method,
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : 'GreenBookStore',
			    amount : finalCount, //?????? ??????
			    buyer_email : email,
			    buyer_name : name,
			    buyer_tel : cellPhone,
			    buyer_addr : doro,
			    buyer_postcode : jibun
			    
			}, function(rsp) {
				console.log(rsp)
			    if ( rsp.success ) {
			        var msg = '????????? ?????????????????????.';
			        
					var sh_name = $('[name=or_receiver]').val();
					var	sh_doro = $('[name=sh_doro]').val();
					var	sh_jibun = $('[name=sh_jibun]').val();				
					var sh_phone = $('[name=sh_phone]').val();
			
					var or_me_id = $('[name=or_me_id]').val();
					var or_receiver = $('[name=or_receiver]').val();
					var finalCount = $('[name=finalCount]').val();
					var or_deliver = $('[name=addPrice]').val();	
					var or_green_point = $('[name=or_green_point]').val();
					var or_deli_date = $('[name=or_deli_date]').val();
					var or_pay_card = $('[name=pay]:checked').val();
					
					var data = {
							sh_name : sh_name,
							sh_doro : sh_doro,
							sh_jibun : sh_jibun,
							sh_phone : sh_phone,
							or_me_id : or_me_id,
							or_receiver : or_receiver,
							or_payment : finalCount,
							or_deliver : or_deliver,
							or_green_point : or_green_point,
							or_deli_date : or_deli_date,
							or_pay_card : or_pay_card,
							apply_num : rsp.apply_num,
							pay_method : pay_method,
							paid_at : rsp.paid_at,
							imp_uid : rsp.imp_uid
						};  
					
			        $.ajax({
			        	async: false,
			    		url : contextPath + '/order/inicis',
			    		type : 'post',
			    		data :  data,
			    		dataType: 'json',
			    		success:function(result){
			    			$("#partner_order_id").val(result);
			    			$("form").submit();
			    		}
			    	})    
			    
			    } else {
			        var msg = '????????? ?????????????????????.';
			        msg += '???????????? : ' + rsp.error_msg;
			    }
			    alert(msg);

			});
		}
	})

function checkAmount(trObj){
	var amount = parseInt(trObj.find('.ca_amount').val());
	var codeNum = trObj.find('.codeNum').val();
	console.log(amount)
	console.log(codeNum)
	var data = {
		ca_amount : amount,
		ca_re_code : codeNum
	}
	var str = true;
	$.ajax({
		url : contextPath + '/order/cart/update',
		type : 'post',
		data : JSON.stringify(data),
		async : false,
		contentType : 'application/json; charset=utf-8',
		success:function(result){
			if(result == 'OK1'){
				alert("?????????????????? ??????????????? ?????????????????????.")
				str = false;
			}
		}
	})
	return str;
}
})

</script>
</body>
</html>