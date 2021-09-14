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
    <link rel="stylesheet" href="/portfolio/resources/css/common.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
    <style>
        *{
            margin: 0; padding: 0; list-style: none; text-decoration: none; color: black;
        }
        body{
        	background-image: url(<%=request.getContextPath()%>/resources/js/whitewater.jpg); 
        }
        a{
        	color: black;
        }
        a:hover{
        	color: rgb(0, 104, 136);
        }
        .container{
            width: 70%;  margin: 120px auto; position: relative;
        }
        .management{
            font-size: 40px; text-align: center; font-weight: bold;
            font-style: italic; letter-spacing: 0; color: #000;
        } 
        .table th{
            background-color: #f8f8f8;
        }
        .fa-bars{
            margin-right: 15px; font-size: 25px; cursor: pointer;
        }
        .nav{
            width: 750px; margin: 0 auto;
        }
        .nav li{
            width: 150px; border-right: 1px solid black; text-align: center;
            float: left;  margin-top: 40px;
        }
        .nav li:last-child{
            border: none;
        }
        .nav::after{
            content: ''; display: block; clear: both;
        }
        .table{
        	margin-top: 70px;
        }

        
	    .menu {
	        display: flex; position: absolute; top: 15px; right: 30px; z-index: 12;
	    }
	    .menu ul li{
	        float: left; padding: 10px;  font-size: 20px;  font-family:sans-serif; font-weight: bold;  cursor: pointer;
	    }
	    .menu ul li a{
	     	font-size: 18px; font-weight: bold;  
	     }
	  	.menu ul::after{
	        content: ''; clear: both; display: block;
	    }
	    .menu a{
	    	color: black;
	    }

	    a:hover, .menu a:hover {
	    	color: rgb(0, 104, 136);
	    }
	    .fa-bars{
	      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
	    }
	    .container{
	        margin-top: 120px; overflow: hidden;
	    }    
	    .side-bars{
	        width: 400px; height: 1280px; background-color: black; position: absolute; z-index: 10;
	        opacity: 80%; display: none; top:0px;
	    }
	    .side-bars li{
	       color: white; margin-bottom: 20px; margin-left: 20px; cursor: pointer; font-size: 18px;
	    }
	    .catagory-list{
	        position: absolute; top: 150px; left: 20px;
	    }
	    .subCatagory-list{
	        position: absolute; top: 150px; left: 200px;
	    }
	    .dome-list{
	        display: none;
	    }
	    .dome-list *, .foreign-list *{
	    	color: white; font-size: 18px;
	    }
	    .foreign-list{
	        display: none;
	    }
	    .fa-times{
	        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px; 
	    }
	    .current{
	    	font-weight: bold;
	    }
        .search{
            margin: 70px;
        }
		.regi-btn{
			text-align: right;
		}
    </style>
</head>
<body>
    <div class="side-bars bars">
        <i class="fas fa-times"></i>
        <div class="catagory-list">
            <ul>
                <li class="domestic">국내도서</li>
                <li class="foreign">외국도서</li>
            </ul>
        </div>
        <div class="subCatagory-list">
	         <ul class="dome-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설/시&country=국내/해외">소설/시</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=에세이&country=국내/해외">에세이</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문&country=국내/해외">인문</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=역사&country=국내/해외">역사</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술&country=국내/해외">예술</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=종교&country=국내/해외">종교</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=사회&country=국내/해외">사회</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=과학&country=국내/해외">과학</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자기계발&country=국내/해외">자기계발</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=국어와외국어&country=국내/해외">국어와외국어</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/모바일&country=국내/해외">IT/모바일</a></li>
	         </ul>
	     </div>
	     <div class="subCatagory-list">
	         <ul class="foreign-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=문학&country=외국">문학</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=소설&country=외국">소설</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=경제/경영&country=외국">경제/경영</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=인문/사회&country=외국">인문/사회</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=예술&country=외국">예술</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=컴퓨터&country=외국">컴퓨터</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=자연과학&country=외국">자연과학</a></li>         
	         </ul>
        </div>
    </div>
    <i class="fas fa-bars"></i>
     <div class="menu">
      <ul>
        <c:if test="${user == null}">
          <li><a href="<%=request.getContextPath()%>/member/login">LOGIN</a></li>
          <li><a href="<%=request.getContextPath()%>/member/signup">SIGNUP</a></li>
          </c:if>
          <c:if test="${user != null}">
          <li><a href="<%=request.getContextPath()%>/member/logout">LOGOUT</a></li>
          </c:if>
          <c:if test="${user.me_grade != 'ADMIN'}">
            <li><a href="<%=request.getContextPath()%>/member/mypage">MYPAGE</a></li>
           <li><a href="<%=request.getContextPath()%>/order/cart">CART</a></li>
          </c:if>
          <c:if test="${user.me_grade == 'ADMIN'}">
           <li><a href="<%=request.getContextPath()%>/admin/user/publisherlist">MANAGEMENT</a></li>
           <li><a href="<%=request.getContextPath()%>/admin/user/orders">ORDERS</a></li>
          </c:if>
          <li><a href="<%=request.getContextPath()%>">HOME</a></li>
      </ul>
    </div>
    <div class="container">
    <div class="management">Orders</div>
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
	      <input type="hidden" value="${order.or_pay_card}" class="payMethod">
	      <input type="hidden" value="${order.or_num}" class="orderNum">
	      <input type="hidden" value="${order.or_use_point}" class="usePoint">
	      <input type="hidden" value="${order.or_pa_num}" class="pa_num">
	      <input type="hidden" value="${order.or_me_id}" class="id" >
	     	<c:forEach items="${particulars}" var="parti" varStatus="status">
	     	<c:if test="${parti.pr_or_num == order.or_num}">
		      	<input type="hidden" value="${parti.pr_bk_isbn}" class="isbn">
		      	<input type="hidden" value="${parti.pr_amount}" class="amount">
	      	</c:if>
	      	</c:forEach>
	      <input type="hidden" value="${order.or_payment}" class="payCount">
	      <input type="hidden" value="${order.or_imp_uid}" class="imp">
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
       <ul class="pagination justify-content-center">
	        <c:if test="${pm.prev}">
	            <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/orders?page=${pm.startPage-1}">이전</a></li>
	        </c:if>
	        <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
	            <li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/orders?page=${index}">${index}</a></li>
	        </c:forEach>
	        <c:if test="${pm.next}">
	            <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/orders?page=${pm.endPage+1}">다음</a></li>
	        </c:if>
       </ul>
    </div>
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
	    	async: false,
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
	      
	  	if($(this).val() == 'cancel' && $(this).parent().find('.payMethod').val() == 'kakao'){
	  		var orderNum = $(this).parent().find('.orderNum').val();
			var tid = $(this).parent().find('.pa_num').val();
			var isbn = [];
			$(this).parent().find('.isbn').each(function(){
				isbn.push($(this).parent().find('.isbn').val());
			});
			var point = $(this).parent().find('.usePoint').val();
			var amount = [];
			$(this).parent().find('.amount').each(function(){
				amount.push($(this).parent().find('.amount').val());
			});
			var id = $(this).parent().find('.id').val();
			
			var data = {
					or_num : orderNum,
					pa_num : tid,
					pr_bk_isbn : isbn,
					pr_amount : amount,
					pr_use_point : point,
					me_id : id
			}
			$.ajax({
				async: false,
				url: contextPath+'/order/kakaopay/cancel',
				type : "post",
				data :  data,
				success: function(data){
					if(data == 'OK'){
						alert('결제 취소 성공')
						location.href= contextPath+'/admin/user/orders';
					}
				},
				error:function(error){
					alert(error);
				}
			})
	  	}
	  	if($(this).val() == 'cancel' && $(this).parent().find('.payMethod').val() == 'card'){
			var payCount = $(this).parent().find('.payCount').val();
			var imp = $(this).parent().find('.imp').val();
			var orderNum = $(this).parent().find('.orderNum').val();
			var isbn = [];
			$(this).parent().find('.isbn').each(function(){
				isbn.push($(this).parent().find('.isbn').val());
			});
			var point = $(this).parent().find('.usePoint').val();
			var amount = [];
			$(this).parent().find('.amount').each(function(){
				amount.push($(this).parent().find('.amount').val());
			});
			var id = $(this).parent().find('.id').val();
			
			   $.ajax({
			        url : contextPath+'/order/inicis/cancel', // 예: http://www.myservice.com/payments/cancel
			        type: "POST",
			        traditional : true,
			        data:{
			        	"me_id" : id,
			        	"imp_uid": imp ,
			        	"or_payment": payCount, // 환불금액
			        	"or_num" : orderNum,
			        	"pr_bk_isbn" : isbn,
			        	"pr_amount" : amount,
			        	"pr_use_point" : point,
			        	"reason": "테스트 결제 환불" // 환불사유
			      },
			    }).done(function(result) { // 환불 성공시 로직 
			    	if(result == 'OK'){
				        alert("환불 성공");
				        location.href=contextPath+'/admin/user/orders';
			    	}
			    }).fail(function(error) { // 환불 실패시 로직
			      alert("환불 실패");
			    });
		}
    })

	
    $('.fa-bars').click(function(){
        $('.side-bars').show();
    })
    $('.fa-times').click(function(){
        $('.side-bars').hide();
    })

    $('.domestic').hover(function(){
        $('.foreign-list').hide();
        $('.dome-list').show();
    })
    $('.foreign').hover(function(){
        $('.dome-list').hide();
        $('.foreign-list').show();
    })
    var prevScrollTop = 0;
    var nowScrollTop = 0;
    function wheelDelta(){
        return prevScrollTop - nowScrollTop > 0 ? 'up' : 'down';
    };
    $(window).on('scroll', function(){
        nowScrollTop = $(this).scrollTop();
            if(wheelDelta() == 'down'){
                $('.bars').fadeOut();
            }     
        prevScrollTop = nowScrollTop;
    });   
	
})
</script>
</body>
</html>

    