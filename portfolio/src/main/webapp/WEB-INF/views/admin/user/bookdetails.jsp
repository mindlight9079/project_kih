<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BOOKDETAILS</title>
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
</style>
</head>
<body>
    <form class="container" method="post" action="<%=request.getContextPath()%>/admin/user/bookdetails" enctype="multipart/form-data">
      <h1>BOOK DETAILS</h1>
         <div class="form-group">
            <label>ISBN</label>
            <input type="text" class="form-control" value="${book.bk_isbn}" name="bk_isbn">
         </div>
         <div class="form-group">
            <label>도서명</label>
            <input type="text" class="form-control" value="${book.bk_title}" name="bk_title">
         </div>
         <div class="form-group">
            <label>부도서명</label>
            <input type="text" class="form-control" value="${book.bk_subtitle}" name="bk_subtitle">
         </div>
         <div class="form-group">
            <label>국가분류</label>
            <input type="text" class="form-control" value="${book.bk_country}" name="bk_country">
         </div>
         <div class="form-group">
            <label>저자</label>
            <input type="text" class="form-control" value="${book.bk_au_writer}" name="bk_au_writer">
         </div>
         <div class="form-group">
            <label>출판사명</label>
            <input type="text" class="form-control" value="${book.bk_publish}" name="bk_publish">
         </div>
         <div class="form-group">
            <label>쪽수</label>
            <input type="text" class="form-control" value="${book.bk_page}" name="bk_page">
         </div>
         <div class="form-group">
            <label>출간일</label>
            <input type="text" class="form-control" value="${book.date}" name="bk_publish_date">
         </div>
         <div class="form-group">
            <label>메인이미지</label>
           	<input type="file" class="form-control" name="file" id="image" accept="image/*" onchange="setThumbnail(event);" value="${book.bk_mainImg}">
 	        <div id="image_container"></div>
         </div>
         <div class="form-group">
            <label>출판사번호</label>
            <input type="text" class="form-control" value="${book.bk_pu_num}" name="bk_pu_num">
         </div>
        <button class="btn btn-primary col-12">수정</button>
    </form>
<script type="text/javascript">
	function setThumbnail(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("class", "col-lg-6");
			document.querySelector("div#image_container").appendChild(img);
		};
		
		reader.readAsDataURL(event.target.files[0]);
	}
</script>
</body>
</html>