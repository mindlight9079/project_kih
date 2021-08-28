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
        padding:0; margin: 0; list-style: none; color:black;
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
        width: 80px; margin-right: 35px; height: 40px;
    }
    .cataBottom{
        display: flex; margin-top: 40px; line-height: 40px;
    }
    .cataBottom *{
        margin-right: 5px;
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
        <div class="search-result" >| "<span>${pm.criteria.search}</span>" 검색결과</div>
        <ul class="viewList">
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}">기본순</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=popular">인기순</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=highPrice">높은가격순</a>
            </li>
            <li>
            	<a href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=lowPrice">낮은가격순</a>
            </li>
        </ul>
        <table class="table">
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
                        ${book.bk_au_writer} 저
                        <c:forEach items="${booksSearch}" var="books" varStatus="status">
                        <c:if test="${books.bs_part == '역자' && books.bs_bk_isbn == book.bk_isbn}">
                        / ${books.bs_name}
                        역 
                        </c:if>
                        </c:forEach>
                        | ${book.bk_publish} | ${book.date}
                    </div>
                    <span class="pricePart">
                        <span> 판매가&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;</span><span class="cataPrice"> &nbsp;${book.bk_price}원</span>
                    </span>
                    <div class="preview">
                       ${book.bk_contents}
                    </div>
                    <div class="cataBottom">
                        수량 &nbsp;&nbsp; <input type="number" name="cataAmount"  min="0" value="1"> <br>
                        <button type="button" class="btn btn-info">장바구니</button> <br>
                        <button type="button" class="btn btn-secondary" >바로구매</button>
                    </div>
                </td>
                <td>
                    <input type="checkbox" name="checkList">
                </td>
            </tr>
        </c:forEach>
        </table>
            <ul class="pagination justify-content-center">
				<c:if test="${pm.prev}">
					<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/search?&page=${pm.startPage-1}&search=${pm.criteria.search}&sort=${pm.criteria.sort}">이전</a></li>
				</c:if>
				<c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
					<li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/book/search?search=${pm.criteria.search}&sort=${pm.criteria.sort}&page=${index}">${index}</a></li>
				</c:forEach>
				<c:if test="${pm.next}">
					<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/book/search?page=${pm.endPage+1}&search=${pm.criteria.search}&sort=${pm.criteria.sort}">다음</a></li>
				</c:if>
			</ul>
        <table class="table author-box">
	        <c:forEach items="${booksSearch}" var="books" varStatus="status">
	        <c:if test="${books != ''}">
        	<tbody>
	            <tr class="author-name">
	                <th>작가</th>
	                <td><a href="<%=request.getContextPath()%>/member/authorintro?bs_num=${books.bs_num}" name="bs_num">${books.bs_name}</a></td>
	            </tr>
	            <tr class="masterpiece">
	                <th>대표작  </th>
	                <td>${books.bs_title}</td>
	            </tr>
	            <tr class="authorIntro">
	                <th>작가소개  </th>
	                <td>
	                    <div>${books.bs_contents}</div>
	            </tr>
        	 </tbody>
	         </c:if>
	         </c:forEach>
        </table>
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
    </script>
</body>
</html>