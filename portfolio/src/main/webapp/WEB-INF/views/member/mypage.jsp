<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MYPAGE</title>
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    *{
      margin: 0; padding: 0; border-radius: 5px;
    }
    a{
     color: black; text-decoration:none;
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
    .grade-box{
    	position:relative;
    }
    .nav-list{
    	position: absolute; top: 230px;
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
    .nav-bottom li{
      margin-left: 30px; line-height: 50px; cursor: pointer;
    }
    .inner-container {
      display: flex; overflow: hidden;
    }
    .list{
      margin-left: 20px; width:calc(100% - 220px); margin-top: 20px;
    }
    .table-bordered{
      width: 850px;
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
                <div class="grade">나의 등급 : <div class="normal">일반</div></div>   
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
            <h5> - 주문내역</h5>
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>주문일자</th>
                  <th>주문번호</th>
                  <th>주문내역</th>
                  <th>주문상태</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                 <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                 <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                 <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                 <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                <tr>
                  <td>2021.07.25</td>
                  <td>Y0210236502</td>
                  <td>자바로 배우는 핵심 구조</td>
                  <td>배송완료</td>
                </tr>
                
              </tbody>
            </table>
          </div>
      </div>
    </div>  
</body>
<script>
</script>
</html>
