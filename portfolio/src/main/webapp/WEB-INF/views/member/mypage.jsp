<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/portfolio/resources/css/common.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
    <style>
        *{
            margin: 0; padding: 0; list-style: none; text-decoration: none; color: black;
        }
        a{
        	color: black;
        }
        a:hover{
        	color: rgb(0, 104, 136);
        }
        .container{
            width: 70%;  margin: 120px auto; position: relative;
        }
        .mypage{
            font-size: 40px; border-bottom: 2px solid black;
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
        .orderInfo{
            margin-top: 70px;
        }
        .fa-home{
            position:absolute; font-size : 35px; right: 20px; top:17px; color: black; cursor: pointer;
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
        <h3 class="orderInfo">| 주문내역</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th class="orderDate">주문일자</th>
                    <th>주문번호</th>
                    <th>주문내역</th>
                    <th class="orderState">주문상태</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${orderList}" var="order" varStatus="status">
            <tr>
                <td>${order.orDate}</td>
                <td><a href="<%=request.getContextPath()%>/member/mypagedetails?or_num=${order.or_num}">${order.or_num}</a></td>
                <td>
                    ${order.or_title}
                    <c:if test="${order.or_re_title > 1}">
                        외 ${order.or_re_title -1} 권
                        </c:if>
                    </td>
                    <td>${order.or_state}</td>
                </tr>                
            </c:forEach>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <c:if test="${pm.prev}">
                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/member/mypage?page=${pm.startPage-1}">이전</a></li>
            </c:if>
            <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
                <li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/member/mypage?page=${index}">${index}</a></li>
            </c:forEach>
            <c:if test="${pm.next}">
                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/member/mypage?page=${pm.endPage+1}">다음</a></li>
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
})
</script>
</body>
</html>
