<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTRATION</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/additional-methods.min.js"></script>
<style>
    body{
        background-color: gainsboro;
    }
    .container{
      padding: 30px; margin: 70px auto; width: 700px; background-color: white;
    }
    h1{
        margin-bottom: 25px;
    }
 	textarea[name="re_contents"] {
 		resize:none; height: 400px;
 	}
</style>
</head>
<body>
    <form class="container" method="post" action="<%=request.getContextPath()%>/admin/user/registration">
      <h1>REGISTRATION</h1>
         <div class="form-group">
            <label>ISBN</label>
            <input type="text" class="form-control" name="re_bk_isbn">
         </div>
         <div class="form-group">
            <label>도서명</label>
            <input type="text" class="form-control" name="re_title">
         </div>
         <div class="form-group">
            <label>가격</label>
            <input type="text" class="form-control" name="re_price">
         </div>
         <div class="form-group">
            <label>카테고리</label>
            <input type="text" class="form-control" name="re_catagory">
         </div>
         <div class="form-group">
            <label>책소개</label>
            <textarea class="form-control" name="re_contents"></textarea>
         </div>
         <div class="form-group">
            <label>수량</label>
            <input type="number" min="0" class="form-control" name="re_amount">
         </div>
        <button class="btn btn-primary col-12">등록</button>
    </form>
</body>
</html>