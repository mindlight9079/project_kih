<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AUTHORLIST</title>
<link rel="stylesheet" href="/portfolio/resources/css/common.css">
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    *{
      margin: 0; padding: 0; border-radius: 5px; color: black; text-decoration: none;
    }
    a{
    	color: black; text-decoration: none;
    }
    a:hover{
    	color: rgb(0, 104, 136);
    }
	.list-nav li a.current {
		color:  rgb(0, 104, 136);
	}
    body{
      background-color: gainsboro;
    }
    .container{
      background-color: rgb(0, 104, 136); width: 70%; height: 50px; margin: 0 auto;
      margin-top: 50px; position:relative;
    }
    .fa-home{
      position:absolute; right: 20px; font-size: 25px; top:13px; color: white; cursor: pointer;
    }
    .container h2 {
      color: white; line-height: 50px; margin-left: 10px; 
    }
    .grade-box, .nav-bottom{
      width: 200px; height: 150px; border: 1px solid rgb(0, 104, 136); margin-top: 10px;
      background-color: white; font-weight: bold;
    }
    .grade-box{
    	position:relative;
    }
    .nav-list{
    	position: absolute; top: 230px;
    }
    .nav-bottom{
      height: 300px;
    }
    .nav{
      width: 200px;
    }
    .grade{
      text-align: center; margin-top: 10px; font-weight: bold; line-height: 50px;
    }
    .admin{
      background-color: rgb(0, 104, 136); width: 50px; height: 50px; 
      border-radius: 50%; margin: 0 auto; color: white;
    }
    .nav-bottom li{
      margin-left: 30px; line-height: 50px; cursor: pointer;
    }
    .inner-container {
      display: flex; overflow: hidden;
    }
    .list{
      margin-left: 25px; width:calc(100% - 220px); margin-top: 20px;
    }
    .list-nav{
      display: flex; list-style: none; cursor: pointer; font-weight: bold;
    }
    .list-nav li {
      margin-right: 20px;
    }
    .table-bordered, .search{
      width: 850px;
    }
  </style>
</head>
<body>
    <div class="container">
      <h2>관리페이지</h2>
      <a href="<%=request.getContextPath()%>"><i class="fas fa-home"></i></a>
        <div class="inner-container">
          <div class="nav">
            <div class="grade-box">   
                <div class="grade">나의 등급 : <div class="admin">관리자</div></div>   
            </div>
          	<div class="nav-list">
        	  <ul class="nav-bottom">
            	  <li class="book-management">
            	  <a href="<%=request.getContextPath()%>/admin/user/book">도서관리</a></li>
              	  <li class="publisher-management"><a href="<%=request.getContextPath()%>/admin/user/publisher">출판사관리</a></li>
                  <li class="books-management"><a href="<%=request.getContextPath()%>/admin/user/author">저자관리</a></li>
                  <li class="books-management"><a href="<%=request.getContextPath()%>/admin/user/books">저서관리</a></li>
                  <li class="registration-management"><a href="<%=request.getContextPath()%>/admin/user/registration">판매가능서적관리</a></li>
              </ul>      
            </div>
          </div>          
          <div class="list">
              <ul class="list-nav">
                <li><a href="<%=request.getContextPath()%>/admin/user/booklist">책리스트</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/user/publisherlist">출판사리스트</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/user/authorlist" class="current">저자리스트</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/user/bookslist">저서리스트</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/user/registrationlist">판매가능서적</a></li>
              </ul>
              
           <div class="search">
             <form class="input-group float-right mb-3" action="<%=request.getContextPath()%>/admin/user/authorlist">
				<select class="form-control mr-2" name="type">
					<option value="0" <c:if test="${pm.criteria.type == 0 }">selected</c:if>>전체</option>
					<option value="1" <c:if test="${pm.criteria.type == 1 }">selected</c:if>>제목+내용</option>
					<option value="2" <c:if test="${pm.criteria.type == 2 }">selected</c:if>>저자</option>
				</select>
				<input type="text" class="form-control mr-2" name="search" value="<c:out value="${pm.criteria.search}"/>">
				<button class="btn btn-outline-primary">검색</button>
		      </form>
	       </div>
	       
            <table class="table table-bordered">
	           <thead>
	            <tr>
               	 <th>작가번호</th>
                 <th>저자</th>
                 <th>대표작</th>
                 <th>생년월일</th>
	            </tr>
	          </thead>
              <tbody>
              <c:forEach items="${author}" var="author" varStatus="status">
                <tr>
                  <td>${author.au_num}</td>
                  <td><a href="<%=request.getContextPath()%>/admin/user/authordetails?au_num=${author.au_num}">${author.au_writer}</a></td>
                  <td>${author.au_title}</td>
                  <td>${author.au_birth}</td>
                </tr>
               </c:forEach>
              </tbody>
            </table>
	            <ul class="pagination justify-content-center">
					<c:if test="${pm.prev}">
						<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/authorlist?page=${pm.startPage-1}&type=${pm.criteria.type}&search=${pm.criteria.search}">이전</a></li>
					</c:if>
					<c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
						<li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/authorlist?page=${index}&type=${pm.criteria.type}&search=${pm.criteria.search}">${index}</a></li>
					</c:forEach>
					<c:if test="${pm.next}">
						<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/authorlist?page=${pm.endPage+1}&type=${pm.criteria.type}&search=${pm.criteria.search}">다음</a></li>
					</c:if>
				</ul>
          </div>
      </div>
    </div>  
</body>
</html>