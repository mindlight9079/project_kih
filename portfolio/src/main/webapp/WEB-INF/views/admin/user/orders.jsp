<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	.container{
		margin-top: 120px;
	}
	th{
		background-color: #f8f8f8Confirmation of purchase
	}
</style>
</head>
<body>
<div class="container">
	<table class="table">
		<tr>
			<th>결제상태</th>
			<th>결제번호</th>
			<th>결제수단</th>
			<th>결제금액</th>
			<th>할인합계</th>
			<th>주문자명</th>
			<th>주문상품</th>
			<th>결제승인일자</th>
		</tr>
		<c:forEach items="${orderList}" var="order" varStatus="status">
			<tr>
				<td>
					<select>
						<option value="finished" selected>결제완료</option>
						<option value="delivering">배송중</option>
						<option value="deli-complete">배송완료</option>
						<option value="confirm">구매확정</option>
					</select>
				</td>
				<td>${order.or_num}</td>
				<td>${order.or_methods}</td>
				<td>${order.or_payment}</td>
				<td>${order.or_use_point}</td>
				<td>${order.or_me_id}</td>
				<td>${order.or_title} 외 ${order.or_re_title -1}</td>
				<td>${order.approvedDate}
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>