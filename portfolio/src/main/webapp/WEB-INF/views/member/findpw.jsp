<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>비밀번호 찾기</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .container{
        padding: 30px; margin: 120px auto; width: 600px;
    }
    h1{
        font-size: 40px; text-align: center; font-weight: bold;
        font-style: italic; letter-spacing: 0; color: #000; margin-bottom : 40px;
    }
	.findPw{
		text-align : right;
	}
	.btn-box{
		text-align:center;
	}
</style>
</head>
<body>
<div  class="container">
	<h1>find Password</h1>
	<div class="form-group">
		<input type="text" class="form-control" placeholder="아이디" name="id">
	</div>
	<div class="findPw">
	<button type="button" id="findPwBtn" class="btn btn-outline-secondary">비밀번호 찾기</button>
	</div>
	<div class="btn-box">
		<a href="<%=request.getContextPath()%>/member/login"><button type="button" class="btn btn-info">로그인</button></a>
		<a href="<%=request.getContextPath()%>/member/signup"><button type="button" class="btn btn-secondary">회원가입</button></a>
	</div>
</div>
	<script type="text/javascript">
		$(function(){
			$('#findPwBtn').click(function(){
				var id = $('[name=id]').val();
				$.ajax({
					type : 'get',
					url : '<%=request.getContextPath()%>/find/pw/' + id,
					success : function(res){
						alert('새 비밀번호를 등록된 이메일로 전송했습니다.');
					}
				})
			})
		})
	</script>
</body>
</html>