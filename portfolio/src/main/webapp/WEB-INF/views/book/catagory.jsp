<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CATAGORY</title>
<link rel="stylesheet" href="/portfolio/resources/css/common.css">
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        padding:0; margin: 0; text-decoration: none; list-style: none; color:black;
    }
    a:hover, .menu a:hover {
    	color: rgb(0, 104, 136);
    }
    .fa-bars{
      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .container{
        margin-top: 120px; overflow: hidden;
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
    	color: white;
    }
    .foreign-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px; 
    }

    h1{
        font-weight: bold;
    }
    .viewList{
        width: 500px; height: 50px; background-color:#f8f8f8; display: flex; font-size: 17px;
        line-height: 50px; margin-top: 40px; font-weight: 600;
    }
    .viewList li{
        margin:0 30px 0 15px;
    }
    .table{
        margin-top: 5px;
    }
    input[name="checkList"]{
        width: 20px; height: 20px;
    }
    .catagoryImg{
        width: 200px; height: 315px;
    }
    .cataTitle{
        font-weight: bold; margin-bottom: 20px; font-size: 30px;
    }
    .cataContents{
        width: 650px;
    }
    .cataPrice{
        font-size: 25px; font-weight:600;
    }
    .preview{
        max-height: 200px; overflow: hidden; margin-top: 20px;
        display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;
    }
    input[name="cataAmount"]{
        width: 47px; margin-right: -1px; height: 30px; text-align: center;
    }
    .cataBottom{
        display: flex; margin: 40px 0;
    }
    .cataBottom *{
        margin-right: 2px;
    }
    .viewList a{
    	cursor: pointer; color: black;
    }
    .btn-part{
    	display: flex; margin-left: 910px;
    }
    .btn-part button{
     	margin-left: 7px;
    }
    .allUnChecked-btn{
    	display: none;
    }

    .minus, .plus {
    	width:30px; height: 30px;  line-height: 30px; background-color: #f8f8f8; border: 1px solid gray;
    	margin-right: -1px;
    }
    .plus{
    	margin-right: 37px;
    }
    .fas {
   		text-align: center; margin-right :0;
    }
    .amount-box{
    	display: flex; line-height: 30px; margin-top: 4px;
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
    .menu a{
    	color: black;
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
        <h1 class="titleCatagory"></h1>
        <ul class="viewList">
            <li class="basicSort">
            	<a href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}">기본순</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}&sort=popular">인기순</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}&sort=highPrice">높은가격순</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}&sort=lowPrice">낮은가격순</a>
            </li>
        </ul>
    <form action="<%=request.getContextPath()%>/order/cartRegister" method="post">
        <div class="btn-part">
 			<button class="btn btn-secondary addAllCart-btn">장바구니</button>
 			<button type="button" class="btn btn-secondary allChecked-btn">전체선택</button> 
 			<button type="button" class="btn btn-secondary allUnChecked-btn">전체해제</button>
 		</div>
        <table class="table">
        <c:forEach items="${registration}" var="book" varStatus="status">
            <tr>
                <td>
                <a href="<%=request.getContextPath()%>/book/details?re_bk_isbn=${book.bk_isbn}">
                <img src="<%=request.getContextPath()%>/img${book.bk_mainImg}" alt="catagoryImg" class="catagoryImg">
                </a>
                </td>
                <td class="cataContents">
                	<a href="<%=request.getContextPath()%>/book/details?re_bk_isbn=${book.bk_isbn}">
                    <span class="cataTitle">${book.bk_title}</span>
                    </a>
                    <c:if test="${book.bk_subtitle != ''}"><span> : ${book.bk_subtitle}</span></c:if>
                    <div>
                        ${book.bk_au_writer} 저 
            		<c:forEach items="${books}" var="subAuthor" varStatus="status">
            			<c:if test="${subAuthor.bs_bk_isbn == book.bk_isbn}">
            			/ ${subAuthor.bs_name}<c:if test="${stauts.index+1 != 1}">,</c:if>
            			역
            			</c:if>
            		</c:forEach>
                         | ${book.bk_publish} | ${book.date}
                    </div>
                    <c:forEach items="${regist}" var="regi" varStatus="status">
                    <c:if test="${book.bk_isbn == regi.re_bk_isbn}">
                    <span class="pricePart">
                       <span> 판매가 &nbsp; | </span><span class="cataPrice"> ${regi.re_price}원</span>
                    </span>
                    <div class="preview">
                        ${regi.re_contents}
                    </div>
                    <div class="cataBottom">
                    	<div class="amount-box">
	                        수량 &nbsp;&nbsp; 
			           		<button type="button" class="decreaseQuantity minus"><i class="fas fa-minus"></i></button>
	                        <input type="text" name="cataAmount" class="cataAmount" value="1" readonly> <br>
	        			    <button type ="button" class="increaseQuantity plus"><i class="fas fa-plus"></i></button>
	 	                    <input type="hidden" value="${regi.re_code}" class="code">
	        			 </div>
                      <a href="#" class="addCart-btn"><button type="button" class="btn btn-info ">장바구니</button></a> <br>
                      <a href="<%=request.getContextPath()%>/order/payment" class="btn-buy"><button class="btn btn-secondary ">바로구매</button></a>
				      <input type="hidden" value="${book.bk_isbn}" class="isbn">
				      <input type="hidden" value="${regi.re_catagory}" class="catagory">
                    </div>
                    </c:if>
                    </c:forEach>
                </td>
                <td>
                    <input type="checkbox" name="checkList" value="${book.bk_isbn}">
                </td>
            </tr>
		</c:forEach>
        </table>
     </form>
      <ul class="pagination justify-content-center">
		  <c:if test="${pm.prev}">
		    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.startPage-1}&sort=${pm.criteria.sort}">이전</a></li>
		  </c:if>
		  <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
		    <li class="page-item <c:if test="${pm.criteria.page == index}">active</c:if>"><a class="page-link"href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}&sort=${pm.criteria.sort}&page=${index}">${index}</a></li>
		  </c:forEach>
		  <c:if test="${pm.next}">
		    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.endPage+1}&sort=${pm.criteria.sort}">다음</a></li>
		  </c:if>
	  </ul>
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
    
    $('.allChecked-btn').click(function(){
    	$(this).hide();
    	$('.allUnChecked-btn').show();
    	$('input[name=checkList]').prop('checked',true);
    	
    })
    $('.allUnChecked-btn').click(function(){
    	$(this).hide();
    	$('.allChecked-btn').show();
    	$('input[name=checkList]').prop('checked',false);
    })
    
    $('.btn-buy').click(function(e){
    	var amount = $(this).parent().find('input[name=cataAmount]').val();
    	var isbn = $(this).parent().find('.isbn').val();
		if(parseInt(amount) <= 0){
			e.preventDefault();
		} else
		$(this).attr('href','<%=request.getContextPath()%>/order/payment?isbn='+isbn+'&amount='+amount)
    })
    
    var contextPath = '<%=request.getContextPath()%>';
	var user = '${user==null?'':user.me_id}';
	var result = '0';
	$('.addCart-btn').click(function(){
		if(user == ''){
			alert('회원만 사용 가능합니다.');
			return;
		}
		var amount = $(this).parent().find('input[name=cataAmount]').val();
		var code = $(this).parent().find('.code').val();
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
	
	$('.addAllCart-btn').click(function(){
		if(user == ''){
			alert('회원만 사용 가능합니다.');
			return false;
		}
		if($('input[name=checkList]:checked').length == 0){
			alert('선택된 상품이 없습니다.')
			return false;
		}	
	})
	
	var catagory = $('.catagory').val();
	$('.titleCatagory').text(catagory);	
	
    $('.decreaseQuantity').click(function(e){
       	e.preventDefault();
       	var stat = $(this).parent().find('.cataAmount').val();
       	var num = parseInt(stat);
       	num--;
      
       		$(this).parent().find('.cataAmount').val(num);
       		$(this).parent().find('.cataAmount').change();
     });
    	
     $('.increaseQuantity').click(function(e){
        e.preventDefault();
        var stat = $(this).parent().find('.cataAmount').val();
        var num = parseInt(stat);
        num++;

        	$(this).parent().find('.cataAmount').val(num);
        	$(this).parent().find('.cataAmount').change();
     });
     
 	$('.cataAmount').change(function(){
		var code = $(this).parent().find('.code').val();
		var amount = $(this).val();
		console.log(code)
		console.log(amount)
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
</script>
</body>
</html>