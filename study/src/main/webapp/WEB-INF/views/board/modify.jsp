<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>게시판</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<form class="container" method="post" action="<%=request.getContextPath()%>/board/modify">
		<h1>게시판</h1>
		<div class="form-group">
			<label>제목</label>
			<input type="text" class="form-control" name="title" value="${board.title}">
		</div>
		<div class="form-group">
			<label>작성자</label>
			<input type="text" class="form-control" name="writer" readonly value="${board.writer}">
		</div>
		<div class="form-group">
			<label>내용</label>
			<textarea class="form-control" name="contents" rows="10">${board.contents }</textarea>
		</div>
		<div class="form-group">
			<label>첨부파일</label>
			<c:forEach items="${fList}" var="file">
				<div class="form-control">
					<span>${file.ori_name}</span>
					<span>X</span>
					<input type="hidden" name="fileNumList" value="${file.num}">
				</div>
			</c:forEach>
			<c:forEach begin="1" end="${3-fList.size()}">
				<input type="file" class="form-control" name="fileList">
			</c:forEach>
		</div>
		<input type="hidden" name="num" value="${board.num}">
		<button class="btn btn-outline-success">등록</button>
		<a href="<%=request.getContextPath()%>/board/list"><button type="button" class="btn btn-outline-danger">목록</button></a>
	</form>
<script type="text/javascript">
	$(function(){
		$('.file-box .fa-times').click(function(){
			$(this).parent().remove();
			$('.file-box').append('<input tpye="file" class="form-control" name="fileList">');
		})
	    $('#summernote').summernote({
	        placeholder: 'Hello Bootstrap 4',
	        tabsize: 2,
	        height: 100
	    });
	})
</script>
</body>
</html>
