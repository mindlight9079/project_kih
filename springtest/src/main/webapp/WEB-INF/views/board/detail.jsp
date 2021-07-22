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
			  <input type="text" class="form-control" name="registered" value="${board.dateTime}" readonly>
		 </div>	 
		 <div class="form-group">
			  <label for="usr">조회수</label>
			  <input type="text" class="form-control" name="views" value="${board.views}" readonly>
		 </div>
		<div class="form-group">
	  	<a href="#" class="re-btn up">
	  		<c:choose>
		 		<c:when test="${recommend != null && recommend.state == 1}"><i class="fas fa-thumbs-up recommend-size"></i></c:when>
		 		<c:otherwise><i class="far fa-thumbs-up recommend-size"></i></c:otherwise>
		 	</c:choose>
	  	</a>
	  	<a href="#" class="re-btn down">
	  		<c:choose>
		 		<c:when test="${recommend != null && recommend.state == -1}"><i class="fas fa-thumbs-down recommend-size"></i></c:when>
		 		<c:otherwise><i class="far fa-thumbs-down recommend-size"></i></c:otherwise>
		 	</c:choose>
	  	</a>
		</div>	
		 <div class="form-group">
			  <label for="usr">내용</label>
			  <div class="form-control" style="height:auto">${board.contents}</div>
		 </div>
		 <c:if test="${fileList.size() != 0}">
			<div class="form-group">
			<label>첨부파일</label>
			<c:forEach items="${fileList}" var="file">
				<a href="<%=request.getContextPath()%>/board/download?fileName=${file.name}" class="form-control mb-2">${file.ori_name}</a>
			</c:forEach>
			</div>
		</c:if>
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
	</div>
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
		
		$(document).ready(function() {
	        $('#summernote').summernote({
		         placeholder: '내용을 작성하세요.',
		         tabsize: 2,
		   	     height: 400	
	        });
	    });
	
			$('.re-btn').click(function(e){
				e.preventDefault();
				var board = ${board.num};
				var state = $(this).hasClass('up') ? 1 : -1;
				$.ajax({
					type : 'get',
					url : '<%=request.getContextPath()%>/board/recommend/' + board+ '/' + state,
					success : function(result, status, xhr){
						$('.re-btn i').removeClass('fas').addClass('far');
						
						if(result == 'UP'){
							alert('해당 게시글을 추천했습니다.')
							$('.re-btn.up i').addClass('fas');
						} else if(result == 'DOWN'){
							alert('해당 게시글을 비추천했습니다.')
							$('.re-btn.down i').addClass('fas');
						} else if(result == 'GUEST'){
							alert('추천/비추천을 하려면 로그인을 하세요.');
						} else if(result == 'CANCEL'){
							if(state == 1){
								alert('추천을 취소했습니다.')
							} else {
								alert('비추천을 취소했습니다.')
							}
						}
					}, 
					error : function(xhr, status, e){
						console.log('에러 발생');
					}
				})	
			})
	
	</script>
</body>
</html>
