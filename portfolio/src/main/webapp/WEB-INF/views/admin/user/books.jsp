<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BOOKS</title>
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
    .box1, .box2{
        background-color: white; padding: 30px; margin-bottom: 10px; box-shadow: 1px 2px 2px gray;
    }
    .address .form-control{
        margin-bottom: 5px;
    }
    #jumin1, #jumin2{
        display: inline;
    }
    .birth .form-control{
        display: inline;
    }
</style>
</head>
<body>
    <form class="container">
      <h1>BOOKS</h1>
         <div class="form-group">
            <label>저서번호</label>
            <input type="text" class="form-control" name="bs_num">
         </div>
         <div class="form-group">
            <label>ISBN</label>
            <input type="password" class="form-control" name="bs_bk_isbn">
         </div>
         <div class="form-group">
            <label>작가번호</label>
            <input type="password" class="form-control" name="bs_au_num">
         </div>
         <div class="form-group">
            <label>역할</label>
            <input type="password" class="form-control" name="bs_part">
         </div>
        <button class="btn btn-primary col-12">등록</button>
    </form>
</body>
</html>