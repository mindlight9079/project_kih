<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>singup</title>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/additional-methods.min.js"></script>
<style>
	.error{
		color: red;
	}
</style>
</head>
<body>
	<form class="container" method="post" action="<%=request.getContextPath()%>/signup" id="signup">
	<h1>회원가입</h1>
	<div class="form-group">
	  <label for="usr">아이디:</label>
	  <input type="text" class="form-control" name="id">
	</div>
	<button id="dupBtn" type="button" class="col-12 btn btn-outline-success">아이디 중복 확인</button>
	<div class="form-group">
	  <label>비밀번호:</label>
	  <input type="password" class="form-control" name="pw" id="pw">
	</div>
	<div class="form-group">
	  <label>비밀번호 확인:</label>
	  <input type="password" class="form-control" name="pw2">
	</div>
	<div class="form-group">
	  <label>이름</label>
	  <input type="text" class="form-control" name="name">
	</div>
	<div class="form-group">
	  <label>이메일</label>
	  <input type="text" class="form-control" name="email" required >
	</div>
	<select class="form-group form-control" name="gender">
		<option>선택안함</option>
		<option value="M">남자</option>
		<option value="F">여자</option>
	</select>
	<button class="btn btn-outline-success col-12">회원가입</button>
</form>
	<script type="text/javascript">
		$(function(){
			$('#dupBtn').click(function(){
				var id = $('[name=id]').val();
				if(id == ''){
					alert('아이디를 입력하세요.')
					return;
				}
				$.ajax({
					type : 'get',
					url : '<%=request.getContextPath()%>/member/idCheck/' + id,
					success : function(result, status, xhr){
						if(result == 'POSSIBLE')
							alert('사용 가능한 아이디입니다.')
						else
							alert('사용 불가능한 아이디입니다.')
					}, 
					error : function(xhr, status, e){
						console.log('에러 발생');
					}
				})
			})
			
			$('.form').submit(function(){
				var id = $('[name=id]').val();
				var pw = $('[name=pw]').val();
				var pw2 = $('[name=pw2]').val();
				var name = $('[name=name]').val();
				var email = $('[name=email]').val();
				if(id.trim() == ''){
					alert('아이디를 입력하세요.');
					return false;
				}
				if(pw.tring == ''){
					alert('비밀번호를 입력하세요.');
					return false;
				}
				if(pw!=pw2){
					alert('비밀번호가 일치하지 않습니다.');
				}
				if(name.trim() == ''){
					alert('이름을 입력하세요.')
					return false
				}
				if(email.trim() == ''){
					alert('이메일을 입력하세요.')
					return false;
				}
			})	
		})

	    $("#signup").validate({
	        rules: {
	            id: {
	                required : true,
	                regex : /^[0-9a-z_-]{5,20}$/
	            },
	            pw: {
	                required : true,
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
	                requried : true
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
