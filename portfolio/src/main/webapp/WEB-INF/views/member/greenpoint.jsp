<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Greenpoint</title>
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
        .table th{
            background-color: #f8f8f8;
        }
        .fa-bars{
            margin-right: 15px; font-size: 25px; cursor: pointer;
        }
        .fa-crown{
        	font-size: 20px;
        }
        .grade{
        	text-align:right;
        }
        .fa-question-circle{
        	margin-left: 5px;
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
        .tablePart{
        	margin-top: 70px;
        }
        .current{
        	font-weight: bold;
        }
        .tooltip-text{
        	width: 200px; height: 180px; border: 1px solid grey;  position: absolute; right: 0;
        	background: #f8f9fa; padding: 10px; z-index: 25;  display: none;
        }
        .tooltip-text p{
        	text-align: left;  font-size: 12px;
        }
	    .notice{
    	color: grey; font-size: 15px; text-align : center;
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
        	<li><a href="<%=request.getContextPath()%>/member/mypage">주문내역</a></li>
            <li class="point"><a href="<%=request.getContextPath()%>/member/greenpoint" class="current">그린포인트</a></li>
            <li class="info"><a href="<%=request.getContextPath()%>/member/memberinfo">회원정보</a></li>
            <li class="out"><a href="<%=request.getContextPath()%>/member/memberout">회원탈퇴</a></li>
        </ul>
        <div class="tablePart">
        	<div class="grade">
		    <i class="fas fa-crown"> ${member.me_grade}</i><i class="fas fa-question-circle"></i>
		    <div class="tooltip-text">
		    	<p>년간 포인트 누적액</p>
		    	<p>NORMAL: 25000포인트 미만</p>
		    	<p>SILVER: 25000포인트 이상</p>
		    	<p>GOLD: 50000포인트 이상</p>
		    	<p>GREEN: 80000포인트 이상</p>
		    </div>
        	</div>
	        <table class="table">
	            <thead>
	               <tr>
	                    <td colspan="4" class="userPoint"> 현재 나의 그린 포인트는? <h3>${member.me_point}</h3></td>
	                </tr>
	              <tr>
	                <th>일자</th>
	                <th>내용</th>
	                <th>주문번호</th>
	                <th>그린포인트</th>
	              </tr>
	            </thead>
	        <c:if test="${pointList.size() == 0}">
				<tr><td colspan="4" class="notice">그린포인트 적립 내역이 없습니다.</td></tr>
        	</c:if>
	            <tbody>
	               <c:forEach items="${pointList}" var="point" varStatus = "status">
	               <c:if test="${point.po_point != 0}">
	                  <tr class="point-box">
	                    <td>${point.poDate}</td>
	                    <td>${point.po_contents}</td>
	                    <td>${point.po_or_num}</td>
	                    <td>${point.po_point}</td>
	                  </tr>
	               </c:if>
	              </c:forEach>
	            </tbody>
	          </table>
	       </div>
             <ul class="pagination justify-content-center">
              <c:if test="${pm.prev}">
                  <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/member/greenpoint?page=${pm.startPage-1}">이전</a></li>
              </c:if>
              <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
                  <li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/member/greenpoint?page=${index}">${index}</a></li>
              </c:forEach>
              <c:if test="${pm.next}">
                  <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/member/greenpoint?page=${pm.endPage+1}">다음</a></li>
              </c:if>
          </ul>
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
    	
	$('.fa-question-circle').hover(function(){
		$('.tooltip-text').show();
	})
	
	$('.tooltip-text').mouseleave(function(){
		$(this).hide();
	})
	
	
	
})
</script>
</body>
</html>