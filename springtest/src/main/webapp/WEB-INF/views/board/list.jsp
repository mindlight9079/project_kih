<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<title>게시판</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</head>
<body>
	<div class="container">
	  <h2>게시판</h2>
		<form class="input-group float-right mb-3" method="get" action="<%=request.getContextPath()%>/board/list">
		  	<select class="form-control mr-2" name="type">
		  		<option value="0" <c:if test="${pm.criteria.type == 0}">selected</c:if> >전체</option>
		  		<option value="1" <c:if test="${pm.criteria.type == 1}">selected</c:if>>제목+내용</option>
		  		<option value="2" <c:if test="${pm.criteria.type == 2}">selected</c:if>>작성자</option>
		  	</select>
		  		<input type="text" class="form-control mr-2" name="search" value="<c:out value="${pm.criteria.search}"/>">
		  		<button class="btn btn-outline-dark">검색</button>
		</form>
	  <table class="table table-hover">
	    <thead>
	      <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	        <th>조회수</th>
	      </tr>
	    </thead>
	    <tbody>
	    <!-- items의 이름은 BoardController의 addObject("list")이름과 맞춰준다. -->
		    <c:forEach items="${list}" var="board">
			      <tr>
			        <td>${board.num}</td>
			        <td><a href="<%=request.getContextPath()%>/board/detail?num=${board.num}">${board.title}</a></td>
			        <td>${board.writer}</td>
			        <td>${board.dateTime}</td>
			        <td>${board.views}</td>
			      </tr>
		      </c:forEach>
	    </tbody>
	  </table>
	    <ul class="pagination justify-content-center">
			 <c:if test="${pm.prev}">
			    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pm.startPage-1}&type=${pm.criteria.type}&search=<c:out value="${pm.criteria.search}"/>">이전</a></li>
			 </c:if>
			 <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
			    <li class="page-item <c:if test="${pm.criteria.page == index}">active</c:if>">
			    	<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&type=${pm.criteria.type}&search=<c:out value="${pm.criteria.search}"/>">${index}</a>
			    </li>
			 </c:forEach>
			 <c:if test="${pm.next}">
			    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pm.endPage+1}&type=${pm.criteria.type}&search=<c:out value="${pm.criteria.search}"/>">다음</a></li>
			 </c:if>
		</ul>
		  <c:if test="${list.size() == 0}">
		  	<h1>게시글이 없습니다.</h1>
		  </c:if>
	   <a href="<%=request.getContextPath()%>/board/register"><button class="btn btn-outline-danger">글쓰기</button></a>
	</div>
	<!-- <img src="<%=request.getContextPath()%>/resources/img/김태리.jfif"> -->
	<script type="text/javascript">
		$(function(){
			var msg = '${msg}';
			printMsg(msg);
			history.replaceState({},null,null);
		})
		function printMsg(msg){
			if(msg == '' || history.state){
				return ;
			}
			alert(msg);
		}
	</script>
</body>
</html>
