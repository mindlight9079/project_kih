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
					<select class="state">
						<option value="finished" <c:if test="${order.or_state == '결제완료'}">selected</c:if>>결제완료</option>
						<option value="delivering" <c:if test="${order.or_state == '배송중'}">selected</c:if>>배송중</option>
						<option value="deli-complete" <c:if test="${order.or_state == '배송완료'}">selected</c:if>>배송완료</option>
						<option value="confirm" <c:if test="${order.or_state == '구매확정'}">selected</c:if>>구매확정</option>
						<option value="cancel" <c:if test="${order.or_state == '결제취소'}">selected</c:if>>결제취소</option>
					</select>
				</td>
				<td class="orNum">${order.or_num}</td>
				<td>${order.or_methods}</td>
				<td>${order.or_payment}원</td>
				<td>${order.or_use_point}</td>
				<td>${order.or_me_id}</td>
				<td>${order.or_title} <c:if test="${order.or_re_title > 1}">외 ${order.or_re_title -1}권</c:if></td>
				<td>${order.approvedDate}
			</tr>
		</c:forEach>
	</table>
<script>
$(function(){
	var contextPath = '<%=request.getContextPath()%>';
	$('.state').change(function(){
		var orderState = $(this).val();
		var orNum = $(this).parents('tr').find('.orNum').text();
		var data = {
				or_state : orderState,
				or_num : orNum
		}
		$.ajax({
			type: 'post',
			url : contextPath + '/admin/user/orders/mod',
			data : JSON.stringify(data),
			contentType : "application/json; charset=UTF-8",
			success : function(res){
				if(res == 'OK')
					alert('주문 상태가 변경되었습니다.')
				else
					alert('주문 상태가 변경되지 않았습니다.')
			} 
		})
	})
	
})
</script>
</div>
</body>
</html>