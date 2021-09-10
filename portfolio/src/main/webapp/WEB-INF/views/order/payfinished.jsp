<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
<link rel="stylesheet" href="/portfolio/resources/css/common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .container{
            width: 500px; height: 500px; margin: 120px auto; text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h4>카카오 페이 결제 후</h4>
        <h4>확인 버튼을 눌러주세요.</h4>
            <input type="button" value="확인" onclick="tt()" class="btn btn-info">
            <input type="hidden" value="${partner_order_id}" id="partner_order_id">
    </div>
</body>
<script>
function tt(){
	$("#partner_order_id",opener.document).val($('#partner_order_id').val());
	$("#a",opener.document).submit();
	window.close();
}
</script>
</html>