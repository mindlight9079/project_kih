<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/additional-methods.min.js"></script>
</head>
<style>
	.error{
		color: red;
	}
</style>
<body>
<h1>회원가입</h1>
<form class="container" method="post" action="<%=request.getContextPath()%>/signup" id="signup">
	<h1>회원가입</h1>
	<div class="form-group">
	  <label for="usr">아이디:</label>
	  <input type="text" class="form-control" name="id">
	</div>
	<div class="form-group">
	  <label>비밀번호:</label>
	  <input type="password" class="form-control" name="pw" id="pw">
	</div>
	<div class="form-group">
	  <label>비밀번호 확인:</label>
	  <input type="password" class="form-control" name="pw2">
	</div>
	<div class="form-group">
	  <label for="usr">이름:</label>
	  <input type="text" class="form-control" name="name">
	</div>
	<div class="form-group">
	  <label for="usr">이메일:</label>
	  <input type="text" class="form-control" name="email">
	</div>
	<div class="form-group">
	  <label for="usr">성별:</label>
	  <select class="form-control" name="gender">
	  	<option value = "M">남성</option>
	  	<option value = "F">여성</option>
	  </select>
	</div>
	<button class="btn btn-outline-success col-12">회원가입</button>
</form>
<script type="text/javascript">
	$(function(){
	    $("#signup").validate({
	        rules: {
	            id: {
	                required : true,
	                regex : /^[0-9a-z_-]{5,20}$/
	            },
	            pw: {
	                required : true,
	                regex: /^[0-9a-zA-Z@#$]{8,16}$/
	            },
	           	pw2: {
	                required : true,
	                equalTo : pw
	            },
	            name: {
	                required : true,
	                minlength : 2
	            },
	            email: {
	                required : true,
	                email : true
	            },
	            gender: {
	                required : true
	            }
	        },
	        //규칙체크 실패시 출력될 메시지
	        messages : {
	            id: {
	                required : "필수정보입니다.",
	                regex : "5~20자의 영문 소문자, 숫자와 특수기호(_)(-)만 사용 가능합니다."
	            },
	            pw: {
	                required : "필수정보입니다.",
	                regex : "8~16자 영문 대 소문자, 숫자, 특수문자(@#$)를 사용하세요."
	            },
	            pw2: {
	                required : "필수정보입니다.",
	                equalTo : "비밀번호가 일치하지 않습니다."
	            },
	            name: {
	                required : "필수정보입니다.",
	                minlength : "최소 {0}글자이상이어야 합니다"
	            },
	            email: {
	                required : "필수정보입니다.",
	                email : "메일규칙에 어긋납니다"
	            },
	           	gender: {
	                required : "필수정보입니다."
	            }
	        }
	    });
	})
	$.validator.addMethod(
	    "regex",
	    function(value, element, regexp) {
	        var re = new RegExp(regexp);
	        return this.optional(element) || re.test(value);
	    },
	    "Please check your input."
	);
</script>
</body>
</html>
