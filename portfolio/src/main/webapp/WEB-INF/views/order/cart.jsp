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
    .{
        position: relative;
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
    input[name="amount"]{
        width: 50px;
    }
    .order-btn{
        font-size: 13px; width: 80px;
    }
    .delete-btn{
      font-size: 13px; width: 80px;
    }
    .cart-contents{
        width: 650px;
    }
    .price-box{
       background-color: #f8f8f8; margin-top: 30px; text-align: center; position:relative
    }
    .fa-plus{
        position: absolute; top: 17px; left:calc(100% / 3 - 10px);
    }
    .fa-equals{
        position: absolute; top:17px; right:calc(100% / 3 - 10px);
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
    .foreign-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px;
    }
    .btn-box{
      text-align: center; margin-top: 40px;
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
    </div>
    <i class="fas fa-bars"></i>
    <div class="container">
        <table class="table cart-table">
            <thead>
            <tr class="cartTr">
                <th></th>
                <th></th>
                <th class="cart-contents">상품정보</th>
                <th>수량</th>
                <th>상품금액</th>
                <th>주문</th>
            </tr>
            </thead>
            <tbody>
               <c:forEach items="${cartList}" var="cart" varStatus="status"> 
                 <c:if test="${cart != null}">
	            <tr>
	                <td><input type="checkbox" name="bookCheck" checked></td>
	                <td><img  src="<%=request.getContextPath()%>/img${cart.ca_mainImg}" alt="cartImg" class="cart-image"></td>
	                <td >${cart.ca_title}<c:if test="${cart.ca_subTitle != ''}"> : ${cart.ca_subTitle}</c:if></td>
	                <td><input type="number" name="amount" class="amount" min="0" value="${cart.ca_amount}"></td>

	                <td>${cart.ca_price}원 <input type="hidden" value="${cart.ca_price}" class="price"/></td>
	                <td>
	                    <button type="button" class="btn btn-secondary order-btn mb-1">주문하기</button> <br>
	                    <button type="button" class="btn btn-secondary delete-btn" data-cartNum="${cart.ca_re_code}" >삭제</button>
	                </td>
	            </tr>
		          </c:if>
	           </c:forEach>
            </tbody>
        </table>
        <table class="table price-box">
            <tr>
                <td>
                    총 상품금액
                    <i class="fas fa-plus"></i>
                </td>
                <td>
                    총 추가금액
                <i class="fas fa-equals"></i>
                </td>
                <td>최종 결제금액</td>
            </tr>
            <tr>
                <td class="totalCount">원</td>
                <td>0원</td>
                <td>18000원</td>
            </tr>
        </table>
        <div class="btn-box">
            <button class="btn btn btn-info">주문하기</button>
            <button class="btn btn-secondary">쇼핑계속하기</button>
        </div>
    </div>
<script>
var totalCount = 0;
	$('.price').each(function(){
		var qty = $(this).parent().prev().find('.amount').val();
		totalCount += parseInt($(this).val())*qty;
	})
	$('.totalCount').text(totalCount);
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
    
var contextPath = '<%=request.getContextPath()%>';
$('.delete-btn').click(function(){
	var carNum = $(this).attr('data-cartNum');
	console.log(carNum)
	var data = {
			ca_re_code : carNum
	};
	var obj = $(this);
   	$.ajax({
		url : contextPath + '/order/cart/delete',
		type : 'post',
		data : JSON.stringify(data),
		contentType : 'application/json; charset=utf-8',
		success:function(result){
			if(result == 1){
				alert("삭제되었습니다.")
				obj.parents('tr').remove();
			}else{
				alert("삭제에 실패했습니다.")
			}
		}
   	})
})
</script>
</body>
</html>