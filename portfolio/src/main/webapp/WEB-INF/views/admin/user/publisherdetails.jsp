<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Publisher Details</title>
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
</style>
</head>
<body>
  <form class="container" method="post" action="<%=request.getContextPath()%>/admin/user/publisherdetails">
    <h1>Publisher Details</h1>
      <div class="form-group">
          <label>출판사번호</label>
          <input type="text" class="form-control" value="${publisher.pu_num}" name="pu_num">
       </div>
       <div class="form-group">
          <label>출판사명</label>
          <input type="text" class="form-control" value="${publisher.pu_name}" name="pu_name">
       </div>
       <div class="form-group">
          <label>전화번호</label>
          <input type="text" class="form-control" value="${publisher.pu_phone}" name="pu_phone">
       </div>
       <div class="form-group">
          <label>대표자명</label>
          <input type="text" class="form-control" value="${publisher.pu_ceo}" name="pu_ceo">
       </div>
      <button class="btn btn-info col-12">수정</button>
  </form>
</body>
</html>