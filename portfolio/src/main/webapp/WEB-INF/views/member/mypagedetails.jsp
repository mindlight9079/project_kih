<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MYPAGEDETAILS</title>
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
  *{
    margin: 0; padding: 0; text-decoration: none; color:black;
  }
  .container{
    margin-top: 120px; margin-bottom: 120px;
  }
  .table th, .total, .prod1, .prod2{
        background-color: #f8f8f8;;
  }
  .line-white{
    border-bottom:  2px solid white;
  }
  .table{
    margin-bottom: 70px;
  }
  .back-btn{
    margin-left: calc(50% - 38px);
  }
  .orderNum{
  	margin-bottom: 30px;  color: rgb(0, 104, 136); font-weight: bold;
  }
  .additional{
  	margin-left: 20px; list-style: square;
  }

</style>
</head>
<body>
	 <div class="container">
	 <h3 class="orderNum">주문번호 : ${order.or_num}</h3>
      <table class="table">
        <h6>| 주문상품정보</h6>
        <tr>
          <th>상품명</th>
          <th>주문수량</th>
          <th>가격</th>
          <th>그린포인트</th>
        </tr>
        <c:forEach items="${particulars}" var="parti" varStatus="status">
        <tr class="line-white">
          <td>${parti.pr_title}</td>
          <td>${parti.pr_amount}<input type="hidden" value="${parti.pr_amount}" class="amount"></td>
          <td>${parti.pr_price} 원<input type="hidden" value="${parti.pr_price}" class="price"></td>
          <td>${parti.eachPoint}</td>
        </tr>
        </c:forEach>
        <tr class="total">
          <td></td>
          <td>합계</td>
          <td class="totalCount"></td>
          <td>${order.or_green_point}</td>
        </tr>
        <tr class="prod1">
          <td colspan="2" ></td>
          <td>
            <div>상품 총 금액: <span class="totalCount"></span></div>
            <div>총 배송비 : ${order.or_deliver} <input type="hidden" value=" ${order.or_deliver}" class="deliver"></div>
          </td>
          <td>
            기본 적립 그린 포인트 : ${order.or_green_point}
          </td>
        </tr>
        <tr class="prod2">
        <td colspan="2"></td>
          <td>
            주문 총 금액 : <span class="orderTotalCount"></span>
          </td>
          <td>${order.or_green_point}</td>
        </tr>
      </table>

      <h6>| 주문, 배송 정보</h6>
      <table class="table">
        <tr>
          <th>도착예정일</th>
          <td>그린배송 : ${order.deliDate} 도착예정</td>
          <td colspan="2"></td>
        </tr>
        <tr>
          <th>포인트적립예상일</th>
          <td>구매확정 후 익일적립</td>
          <td colspan="2"></td>
        </tr>
        <tr>
          <th>주문번호</th>
          <td>${order.or_num}</td>
          <th>주문일자</th>
          <td>${order.orDate}</td>
        </tr>
        <tr>
          <th>주문하신 분</th>
          <td>경인혜</td>
          <th>받으시는 분</th>
          <td>경인혜</td>
        </tr>
        <tr>
          <th>전화번호</th>
          <td>01012345678</td>
          <td colspan="2"></td>
        </tr>
        <tr>
          <th>배송지 주소</th>
          <td colspan="3"> 
            <div>도로명 :충청북도 청주시 서원구 수곡동</div>
            <div>지번 : 충청북도 청주시 서원구 청남로</div>
          </td>
        </tr>
      </table>

      <h6>| 결제정보</h6>
      <table class="table">
        <tr>
          <th>총 주문 금액</th>
          <td colspan="3" class="orderTotalCount"></td>
        </tr>
        <tr>
          <th>실 결제금액</th>
          <td>${order.or_payment}원</td>
          <th>그린 포인트 총 적립액</th>
          <td>${order.or_green_point}</td>
        </tr>
        <tr>
          <th>결제하신 금액</th>
          <td colspan="3">
            <span class="orderTotalCount"></span>
            <ul class="additional">
              <li>카드 사용 : ${order.or_payment}</li>
              <li>그린머니 사용 : 원</li>
            </ul>
          </td>
        </tr>
        <tr>
          <th>결제수단</th>
          <td>신용카드 : 국민카드 일시불</td>
          <td colspan="2"></td>
        </tr>
        <tr>
          <th>승인번호</th>
          <td>0123456</td>
          <th>승인일자</th>
          <td>2021.09.03</td>
        </tr>
      </table>
      <button class="btn btn-info back-btn">목록으로</button>
   </div>
</body>
<script>
var totalCount = 0;	
$('.price').each(function(){
		var qty = $(this).parent().prev().find('.amount').val();
		totalCount += parseInt($(this).val())*qty;
})
$('.totalCount').text(totalCount+"원");

var deliver = parseInt($('.deliver').val());
$('.orderTotalCount').text(totalCount+deliver+"원");
</script>
</html>
