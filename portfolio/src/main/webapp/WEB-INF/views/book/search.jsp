<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
	<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        padding:0; margin: 0; list-style: none; color:black;
    }
    body{
    	background-image: url(<%=request.getContextPath()%>/resources/js/whitewater.jpg); 
    	background-size: 400%;
    }
    a:hover, .menu a:hover{
    	color: rgb(0, 104, 136);
    }
    .fa-bars{
      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .container{
        margin-top: 120px; margin-bottom: 120px; overflow: hidden; position: relative;
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
    	color: white; font-size: 18px;
    }
    .foreign-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px; 
    }
    .fa-search{
        font-size: 25px; text-align: center; margin-top: 11px; margin-left: 3px; cursor: pointer;
    }


    h1{
        font-weight: bold;
    }
    .viewList{
        width: 500px; height: 50px; background-color:#f8f8f8; display: flex; font-size: 17px;
        line-height: 50px; font-weight: 600; 
    }
    .viewList a{
    	color: black;
    }
    .viewList li{
        margin:0 30px 0 15px;
    }
    input[name="checkList"]{
        width: 20px; height: 20px;
    }
    .searchImg{
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
        display: flex; margin: 40px 0; line-height: 30px;
    }
    .cataBottom *{
        margin-right: 2px;
    }
    .search-result {
        font-size: 18px; font-weight: bold;
    }
    .search-result span{
    	color: rgb(0, 104, 136);
    }
    .authorIntro td div{
       overflow: hidden; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;
    }
    .author-name{
        font-weight: bold;
    }
    .author-name a{
    	color: black;
    }
    .author-box{
        border-top: 1px solid #dee2e6; border-bottom: 1px solid #dee2e6;
    }
    .author-box th{
        width: 100px; background-color:#f8f8f8;
    }
	.author-box td, .author-box th{
		border: none;
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
    
    .search-box{
        width:100%; height: 1280px; background-color: black; position: absolute; z-index: 15;
        opacity: 80%; top: 0px; right:0; display: flex; display: none;
    }
    [name="search"]{
        width: 500px; height: 100px; position: absolute; top:300px; left: calc(50% - 250px);
        opacity: 100%; font-size: 30px; padding: 15px; box-sizing: border-box; border-radius: 20px;
    }
    .search-icon{
        font-size: 40px; z-index: 20; cursor: pointer;
        text-align: center; line-height: 50px; position:absolute; top: 315px; left :calc(50% + 185px);
    }
    .x-btn{
        position: absolute; top: 25px; right: 35px;
    }
    .bookCart{
    	position: absolute; right: 15px;  top: 45px;
	}
	.notice{
    	color: grey; font-size: 15px; text-align : center;
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
        <i class="fas fa-search sm-search"></i>
	    </div>
	   	<form method="post" action="<%=request.getContextPath()%>/book/search">
	       <div class="search-box bars">
	           <i class="fas fa-times x-btn"></i>
	           <input type="text" name="search" placeholder="search">
	           <button><i class="fas fa-search search-icon"></i></button>
	   	   </div>
	   	</form>
    <div class="container">
        <div class="search-result" >| "<span>${pm.criteria.search}</span>" ????????????</div>
        <ul class="viewList">
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}">?????????</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=popular">?????????</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=highPrice">???????????????</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=lowPrice">???????????????</a>
            </li>
        </ul>
        <form action="<%=request.getContextPath()%>/order/cartRegister" method="post">
        <button class="bookCart btn btn-secondary">????????????</button>
        <table class="table">
            <c:if test="${bookSearch.size() == 0}">
				<div class="notice">????????? ??? ????????? ????????????.</div>
        	</c:if>
        <c:forEach items="${bookSearch}" var="book" varStatus="status">
            <tr>
                <td>
                 <a href="<%=request.getContextPath()%>/book/details?re_bk_isbn=${book.bk_isbn}">
                    <img src="<%=request.getContextPath()%>/img${book.bk_mainImg}" alt="searchImg" class="searchImg">
                 </a>
                </td>
                <td class="cataContents">
               	    <a href="<%=request.getContextPath()%>/book/details?re_bk_isbn=${book.bk_isbn}">
                    <span class="cataTitle">${book.bk_title}</span>
                    </a>
                    <c:if test="${book.bk_subtitle != ''}"><span> : ${book.bk_subtitle}</span></c:if>
                    <div>
                        ${book.bk_au_writer} ???
                        <c:forEach items="${booksSearch}" var="books" varStatus="status">
                        <c:if test="${books.bs_part == '??????' && books.bs_bk_isbn == book.bk_isbn}">
                        / ${books.bs_name}
                        ??? 
                        </c:if>
                        </c:forEach>
                        | ${book.bk_publish} | ${book.date}
                    </div>
                    <span class="pricePart">
                        <span> ?????????&nbsp;&nbsp;&nbsp;&nbsp;|</span><span class="cataPrice"> ${book.bk_price}???</span>
                    </span>
                    <div class="preview">
                       ${book.bk_contents}
                    </div>
                    <div class="cataBottom">
                    	<div class="amount-box">
	                    	<input type="hidden" value="${book.bk_isbn}" class="isbn">
	                    	<input type="hidden" value="${book.bk_code}" class="code">
	                        ?????? &nbsp;&nbsp;
			           		<button type="button" class="decreaseQuantity minus"><i class="fas fa-minus"></i></button>
	                        <input type="text" name="cataAmount" class="searchAmount" value="1" readonly> <br>
	                        <input type="checkbox" name="cartAmount" style="display:none" value="1">
	        			    <button type ="button" class="increaseQuantity plus"><i class="fas fa-plus"></i></button>
	        			 </div>
	                        <a href="#" class="addCart-btn"><button type="button" class="btn btn-info">????????????</button></a> <br>
	                        <a href="<%=request.getContextPath()%>/order/payment" class="btn-buy"><button type="button" class="btn btn-secondary" >????????????</button></a>
                    </div>
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
					<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/search?&page=${pm.startPage-1}&search=${pm.criteria.search}&sort=${pm.criteria.sort}">??????</a></li>
				</c:if>
				<c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
					<li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=${pm.criteria.sort}&page=${index}">${index}</a></li>
				</c:forEach>
				<c:if test="${pm.next}">
					<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/search?page=${pm.endPage+1}&search=${pm.criteria.search}&sort=${pm.criteria.sort}">??????</a></li>
				</c:if>
			</ul>
        <table class="table author-box">
	        <c:forEach items="${booksSearch}" var="books" varStatus="status">
	        <c:if test="${books != ''}">
        	<tbody>
	            <tr class="author-name">
	                <th>??????</th>
	                <td><a href="<%=request.getContextPath()%>/member/authorintro?bs_num=${books.bs_num}" name="bs_num">${books.bs_name}</a></td>
	            </tr>
	            <tr class="masterpiece">
	                <th>?????????  </th>
	                <td>${books.bs_title}</td>
	            </tr>
	            <tr class="authorIntro">
	                <th>????????????  </th>
	                <td>
	                    <div>${books.bs_contents}</div>
	            </tr>
        	 </tbody>
	         </c:if>
	         </c:forEach>
        </table>
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
			alert('????????? ?????? ???????????????.');
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
					alert("?????? ?????? ??????")
				}
				var isGo = confirm("??????????????? ??????????????????????");
				if(isGo){
					location.href= '<%=request.getContextPath()%>/order/cart'
				}
			}
		})
	})
	
	$('[name=checkList]').click(function(){
		$(this).parents('tr').find('[name=cartAmount]').prop('checked',$(this).is(':checked'));
	})	

	 $('.decreaseQuantity').click(function(e){
       	e.preventDefault();
        if(!$(this).parents('tr').find('[name=checkList]').is(':checked')){
        	alert('?????? ??? ????????? ???????????????.');
        	return;
        }
       	var stat = $(this).parent().find('.searchAmount').val();
       	var num = parseInt(stat);
       	num--;
      
       		$(this).parent().find('.searchAmount').val(num);
       		$(this).parent().find('[name=cartAmount]').val(num);
       		$(this).parent().find('.searchAmount').change();
     });
    	
     $('.increaseQuantity').click(function(e){
        e.preventDefault();
        if(!$(this).parents('tr').find('[name=checkList]').is(':checked')){
        	alert('?????? ??? ????????? ???????????????.');
        	return;
        }
        var stat = $(this).parent().find('.searchAmount').val();
        var num = parseInt(stat);
        num++;

        	$(this).parent().find('.searchAmount').val(num);
        	$(this).parent().find('[name=cartAmount]').val(num);
        	$(this).parent().find('.searchAmount').change();
     });
     
 	$('.searchAmount').change(function(){
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
       
    $('.sm-search').click(function(){
        $('.search-box').show();
        $('[name="search"]').val('');
    })
    $('.x-btn').click(function(){
        $('.search-box').hide();
    })
    
	$('.bookCart').click(function(){
		if(user == ''){
			alert('????????? ?????? ???????????????.');
			return false;
		}
		if($('input[name=checkList]:checked').length == 0){
			alert('????????? ????????? ????????????.')
			return false;
		}	
	})
   
})
</script>
</body>
</html>