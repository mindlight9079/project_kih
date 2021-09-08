<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GREENPOINT</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
    <style>
        *{
            margin: 0; padding: 0; list-style: none; text-decoration: none; color: black;
        }
        .container{
            width: 70%;  margin: 120px auto; position: relative;
        }
        .mypage{
            font-size: 40px; font-family: Georgia, 'Times New Roman', Times, serif; border-bottom: 2px solid black;
        }
        .table th{
            background-color: #f8f8f8;
        }
        .fa-bars{
            margin-right: 15px; font-size: 25px; cursor: pointer;
        }
        .nav-btn{
            display: none;
        }
        .nav{
            width: 150px; height: 150px; background-color: black; position: absolute; top: 62px;
            opacity: 95%; cursor: pointer; font-size: 20px; display: none;
        }
        .nav a{
            color: white;
        }
        .nav ul{
            text-align: center; margin: 20px auto;
        }
        .nav li{
           margin-bottom: 10px;
        }
        .nav a:hover{
            color: rgb(0, 104, 136); text-decoration: none;
        }
        .fa-home{
            position:absolute; font-size : 35px; right: 20px; top:17px; color: black; cursor: pointer;
        }
        .gradeBox{
        	display: flex;           margin-top: 70px;
        }
        .fa-crown{
        	font-size: 20px;
        }

    </style>
</head>
<body>
    <div class="container">
    <div class="mypage"><i class="fas fa-bars"></i><i class="fas fa-bars nav-btn"></i>MyPage <a href="<%=request.getContextPath()%>"><i class="fas fa-home"></i></a></div>
    <div class="nav">
        <ul>
        	<li><a href="<%=request.getContextPath()%>/member/mypage">주문내역</a></li>
            <li class="point"><a href="<%=request.getContextPath()%>/member/greenpoint">그린포인트</a></li>
            <li class="info"><a href="<%=request.getContextPath()%>/member/memberinfo">회원정보</a></li>
        </ul>
    </div>
    	<div class="gradeBox">
        <h3 class="greenInfo">| 그린포인트</h3> 
        <i class="fas fa-crown"> ${member.me_grade}</i>
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
            <tbody>
               <c:forEach items="${greenPoint}" var="green" varStatus = "status">
                   <c:if test="${green.or_state == '구매확정'}">
                  <tr class="point-box">
                    <td>${green.orDate}</td>
                    <td class="greenContents"></td>
                    <td>${green.or_num}</td>
                    <td class="gr_point">${green.or_green_point}</td>
                  </tr>
                  </c:if>
                  <c:if test="${green.or_use_point > 0}">
                  <tr class="point-box">
                    <td>${green.orDate}</td>
                    <td class="greenContents"></td>
                    <td>${green.or_num}</td>
                    <td class="gr_point">-${green.or_use_point}</td>
                  </tr>
                  </c:if>
              </c:forEach>
            </tbody>
          </table>
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
        $('.nav').show();
        $(this).hide();
        $('.nav-btn').show();
    })
    $('.nav-btn').click(function(){
        $('.nav').hide();
        $('.fa-bars').show();
        $('.nav-btn').hide();
    })
	$('.point-box').each(function(){
		var point = $(this).find('.gr_point').text();
		if(point >= 0){
			$(this).find('.greenContents').text("주문에 의한 그린포인트 부여");
		} else if(point < 0){
			$(this).find('.greenContents').text("그린 포인트를 그린 머니로 전환");
		}
	})
})
</script>
</body>
</html>