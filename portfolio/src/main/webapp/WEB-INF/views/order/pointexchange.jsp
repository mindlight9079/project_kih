<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pointexchange</title>
<link rel="stylesheet" href="/portfolio/resources/css/common.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
  <div>1000단위로 사용 가능합니다.</div>
  <div>사용 가능 포인트 : <span id="ablePoint"></span></div>
  <input type="text" class="pointExchange">
  <button type="button" class="exchange btn btn-secondary">확인</button>
</body>
<script>
$(function(){
		var able = parseInt($("#hasPoint", opener.document).text());
		var total = parseInt($("#totalPrice", opener.document).text())
		$('#ablePoint').text(able);
		$('.exchange').click(function(){
		var value = parseInt($('.pointExchange').val());
		console.log(value)
		if(able < value){
			alert('사용 가능한 포인트를 초과하였습니다.')
			return false;
		}
		if(total < value){
			alert('사용 가능한 범위를 초과하였습니다.')
			return false;
		}
		if((value % 1000) != 0){
			alert('1000 단위로 입력 가능합니다.');
			return false;
		}
		$("#charge", opener.document).val(value);
		$("#charge", opener.document).focus();
		self.close()

	})
})
</script>
</html>