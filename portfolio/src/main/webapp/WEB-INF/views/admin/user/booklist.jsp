<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BOOKLIST</title>
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
    body{
      background-color: gainsboro;
    }
    .container{
      background-color: rgb(0, 104, 136); width: 70%; height: 50px; margin: 0 auto;
      margin-top: 50px;

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
    	position: absolute; top: 270px;
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
    .table-bordered{
      width: 800px;
    }
  </style>
</head>
<body>
    <div class="container">
      <h2>관리페이지</h2>
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
              </ul>      
            </div>
          </div>
          <div class="list">
              <ul class="list-nav">
                <li><a href="<%=request.getContextPath()%>/admin/user/booklist">책리스트</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/user/publisherlist">출판사리스트</a></li>
                <li>저자리스트</li>
              </ul>
            <table class="table table-bordered">
	           <thead>
	            <tr>
               	 <th>ISBN</th>
                 <th>책제목</th>
                 <th>작가</th>
                 <th>출판사명</th>
	            </tr>
	          </thead>
              <tbody>
              <c:forEach items="${list}" var="book" varStatus="status">
                <tr>
                  <td>${book.bk_isbn}</td>
                  <td><a href="<%=request.getContextPath()%>/admin/user/bookdetails?bk_isbn=${book.bk_isbn}">${book.bk_title}</a></td>
                  <td>${book.bk_au_writer}</td>
                  <td>${book.bk_publish}</td>
                </tr>
               </c:forEach>
              </tbody>
            </table>
	            <ul class="pagination justify-content-center">
					<c:if test="${pm.prev}">
						<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/booklist?page=${pm.startPage-1}">이전</a></li>
					</c:if>
					<c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
						<li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/booklist?page=${index}">${index}</a></li>
					</c:forEach>
		
					<c:if test="${pm.next}">
						<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/booklist?page=${pm.endPage+1}">다음</a></li>
					</c:if>
				</ul>
          </div>
      </div>
    </div>  
</body>
</html>