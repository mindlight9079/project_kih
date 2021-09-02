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
</head>
<body>
    <div class="ment">주문결제가 완료되었습니다.</div>
    <div class="payNum">주문번호</div>
     <input type="button" value="확인" onclick="tt()">
     <input type="text" value="${partner_order_id}" id="partner_order_id">
</body>
<script>
function tt(){
	$("#partner_order_id",opener.document).val($('#partner_order_id').val());
	$("#a",opener.document).submit();
	window.close()
}
</script>
</html>