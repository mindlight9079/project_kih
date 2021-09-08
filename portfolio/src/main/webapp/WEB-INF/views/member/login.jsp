<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
<link rel="stylesheet" href="/portfolio/resources/css/common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    body{
        background-color: gainsboro;
    }
    .container{
        padding: 30px; margin: 70px auto; width: 600px;
    h1{
        margin-bottom: 25px;
    }
</style>
</head>
<body>
    <form class="container" method="post" action="<%=request.getContextPath()%>/member/login">
        <h1>로그인</h1>
        <div class="form-group">
        <label>아이디</label>
        <input type="text" class="form-control" placeholder="아이디" id="id" name="me_id">
        </div>
        <div class="form-group">
        <label>비밀번호</label>
        <input type="password" class="form-control" placeholder="비밀번호" id="pw" name="me_password">
        </div>
        <div class="form-group form-check">
        <label class="form-check-label">
            <input class="form-check-input" name="useCookie" type="checkbox"> 자동로그인
        </label>
        </div>
        <button class="btn btn-primary col-12">로그인</button>
    </form>
</body>
</html>