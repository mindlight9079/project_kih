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
	<form class="container" method="post" action="<%=request.getContextPath()%>/board/update">
		<h1>게시판</h1>
		 <div class="form-group">
			  <label for="usr">제목</label>
			  <input type="text" class="form-control" name="title" value="${board.title}">
		 </div>
		 <div class="form-group">
			  <label for="usr">작성자</label>
			  <input type="text" class="form-control" name="writer "value="${board.writer}" readonly >
		 </div>
		 <div class="form-group">
			  <label for="usr">내용</label>
			  <textarea class="form-control" name="contents" rows="10">${board.contents}</textarea>
		 </div>
		 	<input type="hidden" value="${board.num}" name="num">
			<input type="hidden" value="${board.views}" name="views">
			<a href="<%=request.getContextPath()%>/board/list"><button class ="btn btn-outline-danger">목록</buttton></a>
			<button type="submit" class ="btn btn-outline-danger">수정완료</button>
	</form>
</body>
</html>
