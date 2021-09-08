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
<link rel="stylesheet" href="/portfolio/resources/css/common.css">
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
        margin-top: 120px; margin-bottom: 120px;
    }
    .cartTr{
        background-color: #f8f8f8
    }
    .cart-image{
        width: 80px; height: 105px;
    }
    input[name="amount"]{
        width: 35px; text-align: center;
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
    .pricePlus{
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
        color:white;
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

   .menu {
        display: flex; position: absolute; top: 15px; right: 30px; z-index: 12; 
    }
    .menu a{
     	color: black;
     }
	.menu a:hover{
		color: rgb(0, 104, 136);
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
    
    .minus, .plus {
    	width:30px; height: 30px;  line-height: 30px; background-color: #f8f8f8; border: 1px solid gray;
    
    }
    .fas {
   		text-align: center;
    }
    .amount-box{
    	display: flex;
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
	<form action="<%=request.getContextPath()%>/order/payment">
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
	                <td><input type="checkbox" name="ca_num" value="${cart.ca_num}"></td>
	                <td><img  src="<%=request.getContextPath()%>/img${cart.ca_mainImg}" alt="cartImg" class="cart-image"></td>
	                <td >${cart.ca_title} <input type="hidden" value="${cart.ca_re_code}" class="codeNum"><c:if test="${cart.ca_subTitle != ''}"> : ${cart.ca_subTitle}</c:if></td>
	                <td class="amount-box">
	                	 <button type="button" class="decreaseQuantity minus"><i class="fas fa-minus"></i></button>
	               	 	 <input type="text" name="amount" class="amount" min="0" value="${cart.ca_amount}" readonly>
	               	 	 <button type ="button" class="increaseQuantity plus"><i class="fas fa-plus"></i></button>
	               	 	 <input type="hidden" value="${cart.ca_re_amount}" name="ca_re_amount">
	                </td>
	                <td>${cart.ca_total_price}원 <input type="hidden" value="${cart.ca_price}" class="price"/></td>
	                <td>
	                 	<a href="<%=request.getContextPath()%>/order/payment?ca_num=${cart.ca_num}"><button type="button" class="btn btn-secondary order-btn mb-1">주문하기</button></a><br>
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
                    <i class="fas fa-plus pricePlus"></i>
                </td>
                <td>
                    총 추가금액
                <i class="fas fa-equals"></i>
                </td>
                <td>
                	최종 결제금액
                </td>
            </tr>
            <tr>
                <td class="totalCount"></td>
                <td class="addPrice"></td>
                <td class="finalCount"></td>
            </tr>
        </table>
        <div class="btn-box">
            <button class="btn btn btn-info orderList-btn">주문하기</button>
            <a href="<%=request.getContextPath()%>/"><button type="button" class="btn btn-secondary">쇼핑계속하기</button></a>
        </div>
    </form>
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
function getTotalCount(){
	var totalCount = 0;	
	$('.price').each(function(){
			var qty = $(this).parent().prev().find('.amount').val();
			if($(this).parents('tr').find('[name=ca_num]').prop('checked'))
				totalCount += parseInt($(this).val())*qty;
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
}	


	$('[name=ca_num]').prop('checked',true);
	getTotalCount();
	$('input[name=ca_num]').click(function(){
		getTotalCount();		
	})
    
var contextPath = '<%=request.getContextPath()%>';
$('.delete-btn').click(function(){
	var cartNum = $(this).attr('data-cartNum');
	var data = {
			ca_re_code : cartNum
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
				location.reload();
			}else{
				alert("삭제에 실패했습니다.")
			}
		}
   	})
})

    $('.decreaseQuantity').click(function(e){
       	e.preventDefault();
       	var stat = $(this).parent().find('.amount').val();
       	var num = parseInt(stat);
       	num--;
      
       		$(this).parent().find('.amount').val(num);
       		$(this).parent().find('.amount').change();
     });
    	
     $('.increaseQuantity').click(function(e){
        e.preventDefault();
        var stat = $(this).parent().find('.amount').val();
        var num = parseInt(stat);
        num++;

        	$(this).parent().find('.amount').val(num);
        	$(this).parent().find('.amount').change();
     });
     
$('.amount').change(function(){
	var amount = $(this).val();
	var codeNum =$(this).parent().prev().find('.codeNum').val();
	var data = {
		ca_amount : amount,
		ca_re_code : codeNum
	};
	var obj = $(this);
	var re_amount = $(this).parent().find('input[name=ca_re_amount]').val()
	if(amount <=0){
		alert('1개 이상 구매 가능합니다.');
		obj.val(amount = '1');
		return false;
	}
	if(re_amount < amount){
		alert('재고량이 부족합니다.');
		obj.val(re_amount)
		return false;
	}
	$.ajax({
		url : contextPath + '/order/cart/update',
		type : 'post',
		data : JSON.stringify(data),
		contentType : 'application/json; charset=utf-8',
		success:function(result){
			if(result == '1'){
				alert("수량이 수정되었습니다.")
				location.reload();
			}
		}
	})
})
$('.order-btn').click(function(){
	$('[name=ca_num]').prop('checked',false)
	$(this).parents('tr').find('[name=ca_num]').prop('checked',true)
	getTotalCount();
})

var user = '${user==null?'':user.me_id}';
$('.orderList-btn').click(function(){
	if(user == ''){
		alert('회원만 사용 가능합니다.');
	 	return false;
	}
	if($('input[name=ca_num]:checked').length == 0){
		alert('선택된 상품이 없습니다.')
		return false;
	}	
})
</script>
</body>
</html>