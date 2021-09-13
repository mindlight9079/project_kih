<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mypagedetails</title>
<link rel="stylesheet" href="/portfolio/resources/css/common.css">
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script><!-- jQuery CDN --->
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
  .orderNum{
  	margin-bottom: 30px;  color: rgb(0, 104, 136); font-weight: bold;
  }
  .additional{
  	margin-left: 20px; list-style: square;
  }
  .btn-box{
  	text-align:center;
  }

</style>
</head>
<body>
	 <div class="container">
	 <h3 class="orderNum">주문번호 : ${order.or_num}
	  <input type="hidden" value="${order.or_num}" id="or_num">
	  <input type="hidden" value="${order.or_pa_num}" id="pa_num">
	  <input type="hidden" value="${order.or_pay_card}" id="or_pay_card">
      <input type="hidden" value="${order.or_use_point}" class="usePoint">
	  </h3>
      <table class="table">
        <h6>| 주문상품정보</h6>
        <tr>
          <th>상품명</th>
          <th>주문수량</th>
          <th>가격</th>
          <th>그린포인트</th>
        </tr>
        <c:forEach items="${particulars}" var="parti" varStatus="status">
        <input type="hidden" value="${parti.pr_bk_isbn}" class="isbn">
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
          <td>${order.or_name}<input type="hidden" value="${order.or_name}" id="name"></td>
          <th>받으시는 분</th>
          <td>${order.or_receiver}</td>
        </tr>
        <tr>
          <th>전화번호</th>
          <td>${shipping.sh_phone}</td>
          <td colspan="2"></td>
        </tr>
        <tr>
          <th>배송지 주소</th>
          <td colspan="3"> 
            <div>도로명 : ${shipping.sh_doro}</div>
            <div>지번 : ${shipping.sh_jibun}</div>
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
          <td>${order.or_payment}원 <input type="hidden" value="${order.or_payment}" id="payCount"></td>
          <th>그린 포인트 총 적립액</th>
          <td>${order.or_green_point}</td>
        </tr>
        <tr>
          <th>결제하신 금액</th>
          <td colspan="3">
            <span class="orderTotalCount"></span>
            <ul class="additional">
              <li>카드 사용 : ${order.or_payment}원</li>
              <li>그린머니 사용 : ${order.or_use_point}원</li>
            </ul>
          </td>
        </tr>
        <tr>
          <th>결제수단</th>
          <td>${order.or_methods}</td>
          <td colspan="2"></td>
        </tr>
        <tr>
          <th>승인번호</th>
          <td>${order.or_pa_num}<input type="hidden" value="${order.or_pa_num}" id="cardPayNum"></td>
          <th>승인일자</th>
          <td>${order.approvedDate}</td>
        </tr>
      </table>
      <div class="btn-box">
	      <a href="<%=request.getContextPath()%>/member/mypage"><button class="btn btn-info back-btn">목록으로</button></a>
	      <c:if test="${order.or_state == '결제완료'}"> 
	      <button class="btn btn-secondary cancel-btn">결제취소</button>
	      </c:if>
      </div>
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

var contextPath = '<%=request.getContextPath()%>';
$('.cancel-btn').click(function(){
	if(confirm('취소하시겠습니까?') == false){
		return false;
	}	
	if($('#or_pay_card').val() == 'kakao'){
		var orderNum = $('#or_num').val();
		var tid = $('#pa_num').val();
		var isbn = $('.isbn').val();
		var point = $('.usePoint').val();
		var amount = $('.amount').val();
		
		var data = {
				or_num : orderNum,
				pa_num : tid,
				pr_bk_isbn : isbn,
				pr_amount : amount,
				pr_use_point : point
		}
		$.ajax({
			async: false,
			url: contextPath+'/order/kakaopay/cancel',
			type : "post",
			data :  data,
			success: function(data){
				if(data == 'OK'){
					alert('결제 취소 성공')
					location.href= contextPath+'/member/mypage';
				}
			},
			error:function(error){
				alert(error);
			}
		})
	}
	if($('#or_pay_card').val() == 'card'){
		var cardPayNum = $('#cardPayNum').val();
		var payCount = $('#payCount').val();
		var name= $('#name').val();
		   jQuery.ajax({
		        "url": contextPath+'member/mypagedetails', // 예: http://www.myservice.com/payments/cancel
		        "type": "POST",
		        "contentType": "application/json",
		        "data": JSON.stringify({
		        "merchant_uid": cardPayNum, // 예: ORD20180131-0000011
		        "cancel_request_amount": payCount, // 환불금액
		        "reason": "테스트 결제 환불" // 환불사유
		        "refund_holder": name , // [가상계좌 환불시 필수입력] 환불 수령계좌 예금주
		        "refund_bank": "88" // [가상계좌 환불시 필수입력] 환불 수령계좌 은행코드(예: KG이니시스의 경우 신한은행은 88번)
		        "refund_account": "56211105948400" // [가상계좌 환불시 필수입력] 환불 수령계좌 번호
		      }),
		      "dataType": "json"
		    });
	
	}
})
</script>
</html>
