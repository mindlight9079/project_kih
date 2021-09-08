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
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    *{
      margin: 0; padding: 0; border-radius: 5px; color:black; text-decoration:none;
    }
    a{
      color: black; text-decoration: none;
    }
    body{
      background-color: gainsboro;
    }
    .container{
      background-color: rgb(0, 104, 136); width: 70%; height: 50px; margin: 0 auto;
      margin-top: 50px; position:relative;
    }
    .fa-home{
      position:absolute; right: 20px; font-size: 25px; top:13px; color: white; cursor: pointer;
    }
    .container h2 {
      color: white; line-height: 50px; margin-left: 10px; 
    }
    .grade-box, .nav-bottom{
      width: 200px; height: 150px; border: 1px solid rgb(0, 104, 136); margin-top: 10px;
      background-color: white; font-weight: bold;
    }
    .nav{
      width: 200px;
    }
    .grade{
      text-align: center; margin-top: 10px; font-weight: bold; line-height: 50px;
    }
    .normal{
      background-color: rgb(0, 104, 136); width: 50px; height: 50px; 
      border-radius: 50%; margin: 0 auto; color: white;
    }
    .nav-list{
    	position: absolute; top: 230px;
    }
    .nav-bottom li{
      margin-left: 30px; line-height: 50px;
    }
    .inner-container {
      display: flex; overflow: hidden;
    }
    .list{
      margin-left: 20px; width:calc(100% - 220px); margin-top: 20px;
    }
    .table{
      width: 850px;
    }
    .userPoint{
    	text-align : center;
    }
    .userPoint h3 {
    	color:  rgb(0, 104, 136);
    }
  </style>
</head>
<body>
    <div class="container">
      <h2>마이페이지</h2>
      <a href="<%=request.getContextPath()%>"><i class="fas fa-home"></i></a>
        <div class="inner-container">
          <div class="nav">
            <div class="grade-box">   
                <div class="grade">나의 등급 : <div class="normal">${member.me_grade}</div></div>   
            </div>
            <div class="nav-list">
              <ul class="nav-bottom">
                  <li class="order">주문내역</li>
                  <li class="point"><a href="<%=request.getContextPath()%>/member/greenpoint">그린포인트</a></li>
                  <li class="info"><a href="<%=request.getContextPath()%>/member/memberinfo">회원정보</a></li>
              </ul> 
            </div>  
          </div>
          <div class="list">
            <h5> - 그린포인트내역</h5>
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
      </div>
    </div>  
</body>
<script>
$(function(){
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
</html>
