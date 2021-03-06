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
                <li class="domestic">????????????</li>
                <li class="foreign">????????????</li>
            </ul>
        </div>
        <div class="subCatagory-list">
	         <ul class="dome-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/???&country=??????/??????">??????/???</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=?????????&country=??????/??????">?????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=????????????&country=??????/??????">????????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????????????????&country=??????/??????">??????????????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/?????????&country=??????/??????">IT/?????????</a></li>
	         </ul>
	     </div>
	     <div class="subCatagory-list">
	         <ul class="foreign-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/??????&country=??????">??????/??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/??????&country=??????">??????/??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=?????????&country=??????">?????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=????????????&country=??????">????????????</a></li>         
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
        <li><a href="<%=request.getContextPath()%>/member/mypage">????????????</a></li>
        <li class="point"><a href="<%=request.getContextPath()%>/member/greenpoint">???????????????</a></li>
        <li class="info"><a href="<%=request.getContextPath()%>/member/memberinfo" class="current">????????????</a></li>
        <li class="out"><a href="<%=request.getContextPath()%>/member/memberout">????????????</a></li>
    </ul>
<div class="box1">
    <div class="form-group">
    <label>?????????</label>
    <input type="text" class="form-control" placeholder="?????????" id="id" name="me_id" value="${user.me_id}" readonly>
    </div>
    
    <div class="form-group">
    <label>????????????</label>
    <input type="password" class="form-control" placeholder="????????????" id="pw" name="me_password">
    </div>
    <div class="form-group">
        <label>???????????? ?????????</label>
        <input type="password" class="form-control" placeholder="????????????" id="pw2" name="me_password2">
    </div>
    <div class="form-group">
        <label>??????</label>
        <input type="text" class="form-control" placeholder="??????" id="name" name="me_name" value="${user.me_name}" readonly>
    </div>
    <div class="form-group">
        <label>?????????</label>
        <input type="text" class="form-control" placeholder="?????????" id="nickname" name="me_nickname" value="${user.me_nickname }">
    </div>
</div>

<div class="box2">
    <div class="form-group address">
        <label>??????</label>
        <br>
        ????????? <input type="text" class="form-control" value="${user.me_address}" readonly>
        ?????? <input type="text" class="form-control" value="${user.me_jAddress}" readonly>
        <input class="form-control address-mod-btn"type="button" value="??????"><br>
        <div class="address-box">
           <input class="form-control"type="text" id="sample4_postcode" placeholder="????????????">
           <input class="form-control"type="button" onclick="sample4_execDaumPostcode()" value="???????????? ??????"><br>
           <input class="form-control"type="text" id="sample4_roadAddress" placeholder="???????????????">
           <input class="form-control"type="text" id="sample4_jibunAddress" placeholder="????????????">
           <span class="form-control"id="guide" style="color:#999;display:none"></span>
           <input class="form-control"type="text" id="sample4_detailAddress" placeholder="????????????">
           <input class="form-control"type="text" id="sample4_extraAddress" placeholder="????????????">
           <input type="hidden" name="me_address">
           <input type="hidden" name="me_jAddress">
        </div>
    </div>
    <div class="form-group">
    <label>????????????</label>
    <input type="text" class="form-control" placeholder="????????????" id="phone" name="me_phone" value="${user.me_phone}">
    </div>
    <div class="form-group">
    <label>??????</label>
    <select class="form-control" name="me_gender" id="gender">
        <option>??????</option>
        <option value="M" <c:if test="${user.me_gender == 'M'}">selected</c:if> >??????</option>
        <option value="F" <c:if test="${user.me_gender == 'F'}">selected</c:if> >??????</option>
    </select>
    </div>
    <div class="form-group birth">
    <label>????????????</label> <br>
        <input type="text" class="form-control mb-2" name="me_birth" value="${user.me_birth}" readonly>
        <input class="form-control mb-2 birth-mod-btn"type="button" value="??????"><br>
            <div class="birth-box">
            <input class="form-control col-5" type="year" placeholder="???(4???)" maxlength="4">
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
            <input class="form-control col-4" type="day" placeholder="???" maxlength="2">
            </div>
    </div>
    <div class="form-group">
        <label>?????????</label>
        <input type="text" class="form-control" placeholder="?????????" id="email" name="me_email" value="${user.me_email}">
    </div>
</div>
<button class="btn btn-info col-12">??????????????????</button>
</form>
<script>
    //??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
    
                // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var roadAddr = data.roadAddress; // ????????? ?????? ??????
                var extraRoadAddr = ''; // ?????? ?????? ??????

                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // ???????????? ??????, ??????????????? ?????? ????????????.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(?????? ????????? ?????? : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(?????? ?????? ?????? : ' + expJibunAddr + ')';
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
	    //???????????? ????????? ????????? ?????????
	    messages : {
	        me_password: {
	            regex : "8~16??? ?????? ??? ?????????, ??????, ??????????????? ???????????????."
	        },
	        me_password2: {
	            equalTo : "??????????????? ???????????? ????????????."
	        },
	        me_email: {
	            required : "?????? ???????????????.",
	            email : "??????????????? ???????????????."
	        }
	    }, submitHandler: function(form){
					     
		     var year = $('[type=year]').val();
		     var month = $('[name=month]').val();
		     var day = $('[type=day]').val();
		     var birth = year+"???"+month+"???"+day+"???";
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