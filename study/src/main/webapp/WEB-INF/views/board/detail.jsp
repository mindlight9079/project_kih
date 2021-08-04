<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<title>게시판</title>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/reply.js"></script>
	<style>
	.recommend-size{
		font-size : 30px;
	}
	.fa-thumbs-down{
		transform : rotateY(180deg);
	}
	</style>
	</head>
<body>
	<div class="container">
		<h1>게시판</h1>
		 <div class="form-group">
			  <label for="usr">제목</label>
			  <input type="text" class="form-control" name="title" value="<c:out value="${board.title}"/>" readonly>
		 </div>
		 <div class="form-group">
			  <label for="usr">작성자</label>
			  <input type="text" class="form-control" name="writer "value="${board.writer}" readonly>
		 </div>
		 <div class="form-group">
			  <label for="usr">작성일</label>
			  <input type="text" class="form-control" name="registered" value="${board.registered}" readonly>
		 </div>	 
		 <div class="form-group">
			  <label for="usr">조회수</label>
			  <input type="text" class="form-control" name="views" value="${board.views}" readonly>
		 </div>
		 <div class="form-group">
			  <label for="usr">내용</label>
			  <div class="form-control" style="height:auto">${board.contents}</div>
		 </div>
		 <c:if test="${fileList.size() != 0}">
			<div class="form-group">
			<label>첨부파일</label>
			<c:forEach items="${fList}" var ="file">
				<a class="form-control" href="<%=request.getContextPath()%>/board/download?fileName=${file.name}">${file.ori_name}</a>
			</c:forEach>
			</div>
		</c:if>
				
		<div class="reply form-group">
			<label>댓글</label>
				<div class="contents">
					<div class="reply-list"></div>
					<div class="reply-box form-group">
						<ul class="pagination justify-content-center">
						  
						</ul>
						<textarea class="reply-input form-control mb-2"></textarea>
						<button type="button" class="reply-btn btn btn-outline-success">등록</button>
					</div>
				</div>
		</div>
		
		 <div class="input-group">
		 	<a href="<%=request.getContextPath()%>/board/list" class="mr-2"><button type="button" class ="btn btn-outline-danger">목록</button></a>
		 	<c:if test="${board != null && user.id.equals(board.writer)}">
		 		<a href="<%=request.getContextPath()%>/board/update?num=${board.num}" class="mr-2"><button class ="btn btn-outline-danger">수정</button></a>
				 <form action="<%=request.getContextPath()%>/board/delete" method="post" class="mr-2">
		 			<input type="hidden" value="${board.num}" name ="num">
		 			<button class ="btn btn-outline-danger">삭제</button>
		 		</form>
		 	</c:if>
		 </div>	
	<c:if test="${board.groupOrd == 0 && (user != null && user.authority != 'USER')}">
		<a href="<%=request.getContextPath()%>/board/reply/register?oriNo=${board.num}">
			<button class="btn btn-outline-success">답변</button>
		</a>
	</c:if>
	<c:if test="${user != null && user.id == board.writer}">
		<a href="<%=request.getContextPath()%>/board/modify?num=${board.num}" style="text-decoration: none">
			<button class="btn btn-outline-danger">수정</button>
		</a>
		<a href="<%=request.getContextPath()%>/board/delete?num=${board.num}"  style="text-decoration:none">
			<button class="btn btn-outline-danger">삭제</button>
		</a>
	</c:if>
</div>
                                                                                                                                                                                                           
</body>
</html>
