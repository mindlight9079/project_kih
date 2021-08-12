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
      margin-top: 50px;

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
      width: 900px;
    }
  </style>
</head>
<body>
    <div class="container">
      <h2>마이페이지</h2>
        <div class="inner-container">
          <div class="nav">
            <div class="grade-box">   
                <div class="grade">나의 등급 : <div class="normal">일반</div></div>   
            </div>
              <ul class="nav-bottom">
                  <li class="order">주문내역</li>
                  <li class="point"><a href="<%=request.getContextPath()%>/member/greenpoint">그린포인트</a></li>
                  <li class="info"><a href="<%=request.getContextPath()%>/member/memberinfo">회원정보</a></li>
              </ul>      
          </div>
          <div class="list">
            <h5> - 그린포인트내역</h5>
            <table class="table">
              <thead>
                <tr>
                  <th>일자</th>
                  <th>내용</th>
                  <th>주문번호</th>
                  <th>그린포인트</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>2021.07.27</td>
                  <td>주문에 의한 그린포인트 부여</td>
                  <td>Y0210236502</td>
                  <td>900원</td>
                </tr>
                <tr>
                  <td>2021.07.27</td>
                  <td>주문에 의한 그린포인트 부여</td>
                  <td>Y0210236502</td>
                  <td>900원</td>
                </tr>
                <tr>
                  <td>2021.07.27</td>
                  <td>주문에 의한 그린포인트 부여</td>
                  <td>Y0210236502</td>
                  <td>900원</td>
                </tr>
              </tbody>
            </table>
          </div>
      </div>
    </div>  
</body>
</html>