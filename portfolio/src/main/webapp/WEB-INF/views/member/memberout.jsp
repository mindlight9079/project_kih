<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Memberout</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
    <style>
        *{
            margin: 0; padding: 0; list-style: none; text-decoration: none; color: black;
        }
        body{
        	background-image: url(<%=request.getContextPath()%>/resources/js/whitewater.jpg); 
        }
        .container{
            width: 70%;  margin: 120px auto; position: relative;
        }
        .mypage{
            font-size: 40px; text-align: center; font-weight: bold;
            font-style: italic; letter-spacing: 0; color: #000;
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
        .nav li:last-child{
        	border: none;
        }
        .nav a{
        	 color: black;
        }
        .current{
        	font-weight: bold;
        }

		.deletePart{
			width: 75%; margin: 70px auto;
		}
		.error{
			font-size: 15px; color: red; margin-top: -3px; margin-bottom: 7px;
		}
		.btn-part{
			text-align:center;
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
             <li><a href="<%=request.getContextPath()%>/">HOME</a></li>
            </c:if>
            <c:if test="${user.me_grade == 'ADMIN'}">
             <li><a href="<%=request.getContextPath()%>/admin/user/publisherlist">MANAGEMENT</a></li>
            </c:if>
        </ul>
      </div>


      <div class="container">
        <div class="mypage">MyPage</div>
        <ul class="nav">
        	<li><a href="<%=request.getContextPath()%>/member/mypage">????????????</a></li>
            <li class="point"><a href="<%=request.getContextPath()%>/member/greenpoint">???????????????</a></li>
            <li class="info"><a href="<%=request.getContextPath()%>/member/memberinfo">????????????</a></li>
            <li class="out"><a href="<%=request.getContextPath()%>/member/memberout" class="current">????????????</a></li>
        </ul>
        <form action="<%=request.getContextPath()%>/member/memberout" method="post" class="deletePart">
            <div class="form-group">
                <label class="control-label" for="userId">?????????</label>
                <input class="form-control" type="text" id="userId" name="me_id" value="${user.me_id}" readonly="readonly"/>
            </div>
            <div class="form-group">
                <label class="control-label" for="userPass">????????????</label>
                <input class="form-control" type="password" id="userPass" name="me_password" />
            </div>
	         <div class="error">
	            <c:if test="${msg == false}">
	                ??????????????? ?????? ????????????.
	            </c:if>
	        </div>	
            <div class="form-group">
                <label class="control-label" for="userName">??????</label>
                <input class="form-control" type="text" id="userName" name="me_name" value="${user.me_name}" readonly="readonly"/>
            </div>
            <div class="form-group btn-part">
                <button class="btn btn-info" type="submit" id="submit">????????????</button>
                <button class="cancle btn btn-secondary" type="button">??????</button>
            </div>
        </form>
    </div>

<script>
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
    	

	$(".cancle").on("click", function(){
		location.href = '<%=request.getContextPath()%>';
	})
	$("#submit").on("click", function(){
		if($("#userPass").val()==""){
			alert("??????????????? ??????????????????.");
			$("#userPass").focus();
			return false;
		}
	})
	
})
</script>
</body>
</html>