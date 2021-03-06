<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Address</title>
 	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
       h5{
        font-size: 20px; text-align: center; font-weight: bold;
        font-style: italic; letter-spacing: 0; color: #000; margin: 20px 0; 
   		}
        .container{
            margin-top: 30px;
        }
        th{
            background-color: #f8f8f8;
        }
        table td:hover{
        	cursor: pointer; text-decoration: underline; color: rgb(0, 104, 136); 
        }
        .width{
        	width: 115px;
        }
        .phoneWidth{
        	width: 150px;
        }
        .notice{
    		color: grey; font-size: 15px; text-align : center;
   		}
    </style>
</head>
<body>
    <div class="container">
    <h5>최근배송지</h5>
        <table class="table">
            <tr>
                <th class="width">수령자</th>
                <th>배송지</th>
                <th class="phoneWidth">휴대전화</th>
            </tr>
            <c:if test="${shipping.size() == 0}">
				<tr><td colspan="3" class="notice">최근 배송지 내역이 없습니다.</td></tr>
        	</c:if>
            <c:forEach items="${shipping}" var="ship" varStatus="status">
	            <tr class="addr">
	                <td>${ship.sh_name}<input type="hidden" value="${ship.sh_name}" id="sh_name"></td>
	                <td>
	                   <div>도로명 : ${ship.sh_doro} <input type="hidden" value=" ${ship.sh_doro}" id="sh_doro"></div>
	                   <div>지번 : ${ship.sh_jibun} <input type="hidden" value="${ship.sh_jibun}" id="sh_jibun"></div>
	                </td>
	                <td>
	                    ${ship.sh_phone}  <input type="hidden" value="${ship.sh_phone}" id="sh_phone">
	                </td>
	            </tr>	
            </c:forEach>
        </table>
    </div>
<script>
	$('.addr').click(function(){
		var name = $(this).find('#sh_name').val();
		var doro = $(this).find('#sh_doro').val();
		var jibun = $(this).find('#sh_jibun').val();
		var phone = $(this).find('#sh_phone').val();

		$(".name", opener.document).val(name);
		$(".doroAddr", opener.document).val(doro);
		$(".jibunAddr", opener.document).val(jibun);
		$(".phone", opener.document).val(phone);
		$(".doroAddr", opener.document).focus();
		window.close();
	})
</script>
</body>
</html>