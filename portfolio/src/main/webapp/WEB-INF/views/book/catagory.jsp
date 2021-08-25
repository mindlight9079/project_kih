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
    a:hover{
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
    .dome-list *{
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
        margin-top: 50px;
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
        width: 80px; margin-right: 35px; height: 40px;
    }
    .cataBottom{
        display: flex; margin-top: 40px; line-height: 40px;
    }
    .cataBottom *{
        margin-right: 5px;
    }
    .viewList{
    	cursor: pointer;
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
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설/시">소설/시</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=에세이">에세이</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문">인문</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=역사">역사</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술">예술</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=종교">종교</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=사회">사회</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=과학">과학</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자기계발">자기계발</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=국어와외국어">국어와외국어</a></li>
                <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/모바일">IT/모바일</a></li>
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
        <h1 class="titleCatagory"></h1>
        <ul class="viewList">
       
            <li class="basicSort">
            	<a href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}">기본순</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}&sort=popular">인기순</a>
            </li>
            <li>
            	높은가격순
            </li>
            <li>
            	낮은가격순
            </li>
        </ul>
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
                        수량 &nbsp;&nbsp; <input type="number" name="cataAmount"  min="0" value="1"> <br>
                      <a href="#" class="addCart-btn"><button type="button" class="btn btn-info ">장바구니</button></a> <br>
	                  <input type="hidden" value="${regi.re_code}" class="code">
                      <a href="<%=request.getContextPath()%>/order/payment" class="btn-buy"><button class="btn btn-secondary ">바로구매</button></a>
				      <input type="hidden" value="${book.bk_isbn}" class="isbn">
				      <input type="hidden" value="${regi.re_catagory}" class="catagory">
                    </div>
                    </c:if>
                    </c:forEach>
                </td>
                <td>
                    <input type="checkbox" name="checkList">
                </td>
            </tr>
		</c:forEach>
        </table>
      <ul class="pagination justify-content-center">
		  <c:if test="${pm.prev}">
		    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.startPage-1}">이전</a></li>
		  </c:if>
		  <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
		    <li class="page-item <c:if test="${pm.criteria.page == index}">active</c:if>"><a class="page-link"href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.criteria.re_catagory}&page=${index}">${index}</a></li>
		  </c:forEach>
		  <c:if test="${pm.next}">
		    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/catagory?re_catagory=${pm.endPage+1}">다음</a></li>
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
	
	var catagory = $('.catagory').val();
	$('.titleCatagory').text(catagory);
	
	

	$('.basicSort').click(function(){
		var catagory = $('.catagory').val();
		console.log(catagory)
	var data = {
		re_catagory : catagory
	}
	$.ajax({
		url : contextPath + '/book/catagory',
		type: 'post',
		data : data,
		success : function(result){
		   if(result == "OK"){
			   console.log("기본순")
		   }
		}
	})
	
	})
	
</script>
</body>
</html>