<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Author Details</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    .container{
        padding: 30px; margin: 120px auto; width: 600px;
    }
    h1{
        font-size: 40px; text-align: center; font-weight: bold;
        font-style: italic; letter-spacing: 0; color: #000; margin-bottom : 40px;
    }
    textarea[name="au_contents"]{
 		resize:none; height: 400px;
 	}
</style>
</head>
<body>
  <form class="container" method="post" action="<%=request.getContextPath()%>/admin/user/authordetails">
    <h1>Author Details</h1>
       <div class="form-group">
          <label>작가번호</label>
          <input type="text" class="form-control" value="${author.au_num}" name="au_num">
       </div>
       <div class="form-group">
          <label>저자</label>
          <input type="text" class="form-control" value="${author.au_writer}" name="au_writer">
       </div>
       <div class="form-group">
          <label>대표작</label>
          <input type="text" class="form-control" value="${author.au_title}" name="au_title">
       </div>
       <div class="form-group">
          <label>작가소개</label>
          <textarea class="form-control" name="au_contents">${author.au_contents}</textarea>
       </div>
        <div class="form-group">
          <label>생년월일</label>
          <input type="text" class="form-control" value="${author.au_birth}" name="au_birth">
       </div>
      <button class="btn btn-info col-12">수정</button>
  </form>
</body>
</html>