<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Memberinfo</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/additional-methods.min.js"></script>
    <style>
        *{
            margin: 0; padding: 0; list-style: none; text-decoration: none; color: black;
        }
        body{
        	background-image: url(<%=request.getContextPath()%>/resources/js/whitewater.jpg); 
        	background-size: 200%;
        }
        .container{
            width: 70%;  margin: 120px auto; position: relative;
        }
        .mypage{
            font-size: 40px; text-align: center; font-weight: bold;
            font-style: italic; letter-spacing: 0; color: #000;
        }
        .table th{
            background-color: #f8f8f8;
        }
        .fa-bars{
            margin-right: 15px; font-size: 25px; cursor: pointer;
        }

        .nav{
        	margin-left: calc(50% - 440px / 2);
        }
        .nav::after{
            content: ''; display: block; clear: both;
        }
        .nav li{
            width: 110px; border-right: 1px solid black; text-align: center;
            float: left;  margin-top: 40px;
        }
        .nav a{
            color: black;
        }
        .nav li:last-child{
        	border: none;
        }

       	.menu {
	        display: flex; position: absolute; top: 15px; right: 30px; z-index: 12;
	    }
	    .menu ul li{
	        float: left; padding: 10px;  font-size: 20px;  font-family:sans-serif; font-weight: bold;  cursor: pointer;
	    }
	    .menu ul li a{
	     	font-size: 18px; font-weight: bold;
	     }
	  	.menu ul::after{
	        content: ''; clear: both; display: block;
	    }
	    .menu a{
	    	color: black;
	    }

	    a:hover, .menu a:hover {
	    	color: rgb(0, 104, 136);
	    }
	    .fa-bars{
	      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
	    }
	    .container{
	        margin-top: 120px; overflow: hidden;
	    }    
	    .side-bars{
	        width: 400px; height: 1280px; background-color: black; position: absolute; z-index: 10;
	        opacity: 80%; display: none; top:0px;
	    }
	    .side-bars li{
	       color: white; margin-bottom: 20px; margin-left: 20px; cursor: pointer; font-size: 18px;
	    }
	    .catagory-list{
	        position: absolute; top: 150px; left: 20px;
	    }
	    .subCatagory-list{
	        position: absolute; top: 150px; left: 200px;
	    }
	    .dome-list{
	        display: none;
	    }
	    .dome-list *, .foreign-list *{
	    	color: white; font-size: 18px;
	    }
	    .foreign-list{
	        display: none;
	    }
	    .fa-times{
	        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px; 
	    }


        h1{
            margin-bottom: 25px;
        }
        .address .form-control{
            margin-bottom: 5px;
        }
        #jumin1, #jumin2{
            display: inline;
        }
        .birth .form-control{
            display: inline;
        }
        .error{
            color:red;
        }
        .address-box, .birth-box{
            display: none;
        }
        .box1, .box2 {
        	width: 75%; margin: 0 auto;
        }
        .box1{
            margin-top: 70px;
        }
        .btn-info{
        	width: 75%; margin-left: calc(50% - 75% / 2) ;
        }
        .current{
        	font-weight: bold;
        }
            

    </style>
</head>
<body>
    <div class="side-bars bars">
        <i class="fas fa-times"></i>
        <div class="catagory-list">
            <ul>
                <li class="domestic">국내도서</li>
                <li class="foreign">외국도서</li>
            </ul>
        </div>
        <div class="subCatagory-list">
	         <ul class="dome-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설/시&country=국내/해외">소설/시</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=에세이&country=국내/해외">에세이</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문&country=국내/해외">인문</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=역사&country=국내/해외">역사</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술&country=국내/해외">예술</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=종교&country=국내/해외">종교</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=사회&country=국내/해외">사회</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=과학&country=국내/해외">과학</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자기계발&country=국내/해외">자기계발</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=국어와외국어&country=국내/해외">국어와외국어</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/모바일&country=국내/해외">IT/모바일</a></li>
	         </ul>
	     </div>
	     <div class="subCatagory-list">
	         <ul class="foreign-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=문학&country=외국">문학</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설&country=외국">소설</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=경제/경영&country=외국">경제/경영</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문/사회&country=외국">인문/사회</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술&country=외국">예술</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=컴퓨터&country=외국">컴퓨터</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자연과학&country=외국">자연과학</a></li>         
	         </ul>
        </div>
    </div>
    <i class="fas fa-bars"></i>
     <div class="menu">
        <ul>
        	<c:if test="${user == null}">
            <li><a href="<%=request.getContextPath()%>/member/login">LOGIN</a></li>
            <li><a href="<%=request.getContextPath()%>/member/signup">SIGNUP</a></li>
            </c:if>
            <c:if test="${user != null}">
            <li><a href="<%=request.getContextPath()%>/member/logout">LOGOUT</a></li>
            </c:if>
            <c:if test="${user.me_grade != 'ADMIN'}">
           	 <li><a href="<%=request.getContextPath()%>/member/mypage">MYPAGE</a></li>
             <li><a href="<%=request.getContextPath()%>/order/cart">CART</a></li>
            </c:if>
            <c:if test="${user.me_grade == 'ADMIN'}">
             <li><a href="<%=request.getContextPath()%>/admin/user/publisherlist">MANAGEMENT</a></li>
             <li><a href="<%=request.getContextPath()%>/admin/user/orders">ORDERS</a></li>
            </c:if>
             <li><a href="<%=request.getContextPath()%>/">HOME</a></li>
        </ul>
      </div>
<form class="container" method="post" action="<%=request.getContextPath()%>/member/memberinfo">
    <div class="mypage">MyPage</div>
    <ul class="nav">
        <li><a href="<%=request.getContextPath()%>/member/mypage">주문내역</a></li>
        <li class="point"><a href="<%=request.getContextPath()%>/member/greenpoint">그린포인트</a></li>
        <li class="info"><a href="<%=request.getContextPath()%>/member/memberinfo" class="current">회원정보</a></li>
        <li class="out"><a href="<%=request.getContextPath()%>/member/memberout">회원탈퇴</a></li>
    </ul>
<div class="box1">
    <div class="form-group">
    <label>아이디</label>
    <input type="text" class="form-control" placeholder="아이디" id="id" name="me_id" value="${user.me_id}" readonly>
    </div>
    
    <div class="form-group">
    <label>비밀번호</label>
    <input type="password" class="form-control" placeholder="비밀번호" id="pw" name="me_password">
    </div>
    <div class="form-group">
        <label>비밀번호 재확인</label>
        <input type="password" class="form-control" placeholder="비밀번호" id="pw2" name="me_password2">
    </div>
    <div class="form-group">
        <label>이름</label>
        <input type="text" class="form-control" placeholder="이름" id="name" name="me_name" value="${user.me_name}" readonly>
    </div>
    <div class="form-group">
        <label>닉네임</label>
        <input type="text" class="form-control" placeholder="닉네임" id="nickname" name="me_nickname" value="${user.me_nickname }">
    </div>
</div>

<div class="box2">
    <div class="form-group address">
        <label>주소</label>
        <br>
        도로명 <input type="text" class="form-control" value="${user.me_address}" readonly>
        지번 <input type="text" class="form-control" value="${user.me_jAddress}" readonly>
        <input class="form-control address-mod-btn"type="button" value="수정"><br>
        <div class="address-box">
           <input class="form-control"type="text" id="sample4_postcode" placeholder="우편번호">
           <input class="form-control"type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
           <input class="form-control"type="text" id="sample4_roadAddress" placeholder="도로명주소">
           <input class="form-control"type="text" id="sample4_jibunAddress" placeholder="지번주소">
           <span class="form-control"id="guide" style="color:#999;display:none"></span>
           <input class="form-control"type="text" id="sample4_detailAddress" placeholder="상세주소">
           <input class="form-control"type="text" id="sample4_extraAddress" placeholder="참고항목">
           <input type="hidden" name="me_address">
           <input type="hidden" name="me_jAddress">
        </div>
    </div>
    <div class="form-group">
    <label>전화번호</label>
    <input type="text" class="form-control" placeholder="전화번호" id="phone" name="me_phone" value="${user.me_phone}">
    </div>
    <div class="form-group">
    <label>성별</label>
    <select class="form-control" name="me_gender" id="gender">
        <option>성별</option>
        <option value="M" <c:if test="${user.me_gender == 'M'}">selected</c:if> >남성</option>
        <option value="F" <c:if test="${user.me_gender == 'F'}">selected</c:if> >여성</option>
    </select>
    </div>
    <div class="form-group birth">
    <label>생년월일</label> <br>
        <input type="text" class="form-control mb-2" name="me_birth" value="${user.me_birth}" readonly>
        <input class="form-control mb-2 birth-mod-btn"type="button" value="수정"><br>
            <div class="birth-box">
            <input class="form-control col-5" type="year" placeholder="년(4자)" maxlength="4">
            <select class="form-control col-2" name="month">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
            </select>
            <input class="form-control col-4" type="day" placeholder="일" maxlength="2">
            </div>
    </div>
    <div class="form-group">
        <label>이메일</label>
        <input type="text" class="form-control" placeholder="이메일" id="email" name="me_email" value="${user.me_email}">
    </div>
</div>
<button class="btn btn-info col-12">회원정보수정</button>
</form>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
   	    	 var sp = $('input[id=sample4_postcode]').val();
		     var road = $('input[id=sample4_roadAddress]').val();
		     var jibun = $('input[id=sample4_jibunAddress]').val();
		     var detail = $('input[id=sample4_detailAddress]').val();
		     var extra = $('input[id=sample4_extraAddress]').val();
		     var address = sp+", "+road+" "+detail+" "+extra;
		     var jAddress = sp+", "+jibun+" "+detail+" "+extra;
		     $('[name=me_address]').val(address);
		     $('[name=me_jAddress]').val(jAddress);
            }
        }).open();
    }
$(function(){
    $('.fa-bars').click(function(){
        $('.side-bars').show();
    })
    $('.fa-times').click(function(){
        $('.side-bars').hide();
    })

    $('.domestic').hover(function(){
        $('.foreign-list').hide();
        $('.dome-list').show();
    })
    $('.foreign').hover(function(){
        $('.dome-list').hide();
        $('.foreign-list').show();
    })
    var prevScrollTop = 0;
    var nowScrollTop = 0;
    function wheelDelta(){
        return prevScrollTop - nowScrollTop > 0 ? 'up' : 'down';
    };
    $(window).on('scroll', function(){
        nowScrollTop = $(this).scrollTop();
            if(wheelDelta() == 'down'){
                $('.bars').fadeOut();
            }     
        prevScrollTop = nowScrollTop;
    });

	$('.address-mod-btn').click(function(){
        $('.address-box').show();
    })
	$('.birth-mod-btn').click(function(){
        $('.birth-box').show();
    })   

	$("form").validate({
	    rules: {
	        me_password: {
	            required : false,
	            regex: /^[a-z0-9!@#]{8,16}$/i
	        },
	        me_password2: {
	            required : false,
	            equalTo : pw
	        },
	        me_name: {
	            required :false
	        },
	        me_nickname: {
	            required :false
	        },
	        me_gender: {
	        	required :false
	        },
	        me_phone: {
	        	required :false
	        },
	        me_birth : {
	        	required :false
	        },	        
	        me_email: {
	            required :false,
	            email : true
	        }
	    },
	    //규칙체크 실패시 출력될 메시지
	    messages : {
	        me_password: {
	            regex : "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요."
	        },
	        me_password2: {
	            equalTo : "비밀번호와 일치하지 않습니다."
	        },
	        me_email: {
	            required : "필수 정보입니다.",
	            email : "메일규칙에 어긋납니다."
	        }
	    }, submitHandler: function(form){
					     
		     var year = $('[type=year]').val();
		     var month = $('[name=month]').val();
		     var day = $('[type=day]').val();
		     var birth = year+"년"+month+"월"+day+"일";
		     $('[name=me_birth]').val(birth);
		     
		     var sp = $('input[id=sample4_postcode]').val();
		     var road = $('input[id=sample4_roadAddress]').val();
		     var jibun = $('input[id=sample4_jibunAddress]').val();
		     var detail = $('input[id=sample4_detailAddress]').val();
		     var extra = $('input[id=sample4_extraAddress]').val();
		     var address = sp+", "+road+" "+detail+" "+extra;
		     var jAddress = sp+", "+jibun+" "+detail+" "+extra;
		     $('[name=me_address]').val(address);
		     $('[name=me_jAddress]').val(jAddress);
		     
		     
		     var jumin1 = $('#jumin1').val();
		     var jumin2 = $('#jumin2').val();
		     var jumin = jumin1+jumin2;
		     $('[name=me_resident_num]').val(jumin);
		 
		    return true;
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