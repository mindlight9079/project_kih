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
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
    />
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<style>
    * {
        margin: 0; padding: 0; text-decoration: none; list-style: none; color:black;
    }
    .main{
        position:relative; background-image: url(<%=request.getContextPath()%>/resources/js/water.jpg); background-position: center center; height: 1280px; width: 100%; overflow: hidden;
        
    }
    .homeImg{
        width: 100%; height: 100%;
    }
    .bookstore{
        position: absolute;  top:calc(45% - 768px / 2); left: calc(50% - 1366px / 2);
    }
    .letter{
        color: white; font-size: 35px; position:absolute; top: 65%; text-align: center; width: 100%;
    }
    .menu {
        display: flex; position: absolute; top: 15px; right: 30px; 
    }
    .menu ul li{
        float: left; padding: 10px;  font-size: 20px;  font-family:sans-serif; font-weight: bold;  cursor: pointer;
    }
    .fa-search{
        font-size: 25px; text-align: center; margin-top: 11px; margin-left: 3px; cursor: pointer;
    }
    .fa-bars{
        font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }

    .menu::after{
        content: ''; clear: both; display: block;
    }
    .container{
        width: 100%; height: 900px; position: relative; overflow: hidden;
    }
    .choice{
        font-size: 40px; font-family:Georgia, 'Times New Roman', Times, serif ; margin: 130px 0 0 80px;
        display: flex;
    }
    .line{
        background-color: gray; height: 2px; width:1525px; position:absolute; top:165px; right: 0;
    }
    .choiceImg{
        display:flex; position: absolute; top:180px; left: calc(50% - 1480px / 2);
    }
    .choiceImg img{
        width: 250px; margin: 20px;  margin: 80px 60px;
    }
</style>
</head>
<body>
    <div class="main">
        <img class="bookstore animate__repeat-1	animate__fadeInDown animate__animated" src="<%=request.getContextPath()%>/resources/js/BOOKSTORE.png" alt="greenbookstore">
        <p class="letter">Books makes you valuable</p>
    </div>   
    <i class="fas fa-bars"></i>
    <div class="menu">
        <ul>
            <li><a href="<%=request.getContextPath()%>/member/login">LOGIN</a></li>
            <li><a href="<%=request.getContextPath()%>/member/signup">SIGNUP</a></li>
            <li>ORDERS</li>
            <li><a href="<%=request.getContextPath()%>/member/mypage">MYPAGE</a></li>
            <li>CART</li>
        </ul>
        <i class="fas fa-search"></i>
    </div>
    <div class="container" >
        <div class="choice">
         Green's Choice
         <div class="line"></div>
        </div>
        <div class="choiceImg">
            <img src="소크라테스 익스프레스.jpg" alt="express">
            <img src="소크라테스 익스프레스.jpg" alt="express">
            <img src="소크라테스 익스프레스.jpg" alt="express">
            <img src="소크라테스 익스프레스.jpg" alt="express">
        </div>
    </div>
</body>
</html>