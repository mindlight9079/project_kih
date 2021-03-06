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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
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
	   .notice{
    		color: grey; font-size: 15px; text-align : center;
 	   }
    </style>
</head>
<body>
    <div class="side-bars bars">
        <i class="fas fa-times"></i>
        <div class="catagory-list">
            <ul>
                <li class="domestic">????????????</li>
                <li class="foreign">????????????</li>
            </ul>
        </div>
        <div class="subCatagory-list">
	         <ul class="dome-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/???&country=??????/??????">??????/???</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=?????????&country=??????/??????">?????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????/??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=????????????&country=??????/??????">????????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????????????????&country=??????/??????">??????????????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=IT/?????????&country=??????/??????">IT/?????????</a></li>
	         </ul>
	     </div>
	     <div class="subCatagory-list">
	         <ul class="foreign-list">
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/??????&country=??????">??????/??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????/??????&country=??????">??????/??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=??????&country=??????">??????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=?????????&country=??????">?????????</a></li>
	             <li><a href="<%=request.getContextPath()%>/book/catagory?re_catagory=????????????&country=??????">????????????</a></li>         
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
          <li><a href="<%=request.getContextPath()%>/">HOME</a></li>
      </ul>
    </div>
    <div class="container">
    <div class="management">Orders</div>
    <table class="table">
      <tr>
        <th>????????????</th>
        <th>????????????</th>
        <th>????????????</th>
        <th>????????????</th>
        <th>????????????</th>
        <th>????????????</th>
        <th>????????????</th>
        <th>??????????????????</th>
      </tr>
    <c:if test="${orderList.size() == 0}">
		<tr><td colspan="8" class="notice">?????? ????????? ????????????.</td></tr>
    </c:if>
      <c:forEach items="${orderList}" var="order" varStatus="status">
        <tr>
          <td>
	      <input type="hidden" value="${order.or_pay_card}" class="payMethod">
	      <input type="hidden" value="${order.or_num}" class="orderNum">
	      <input type="hidden" value="${order.or_use_point}" class="usePoint">
	      <input type="hidden" value="${order.or_pa_num}" class="pa_num">
	      <input type="hidden" value="${order.or_me_id}" class="id" >
	      <input type="hidden" value="${order.or_green_point}" class="returnPoint">
	     	<c:forEach items="${particulars}" var="parti" varStatus="status">
	     	<c:if test="${parti.pr_or_num == order.or_num}">
		      	<input type="hidden" value="${parti.pr_bk_isbn}" class="isbn">
		      	<input type="hidden" value="${parti.pr_amount}" class="amount">
	      	</c:if>
	      	</c:forEach>
	      <input type="hidden" value="${order.or_payment}" class="payCount">
	      <input type="hidden" value="${order.or_imp_uid}" class="imp">
            <select class="state">
              <option value="finished" <c:if test="${order.or_state == '????????????'}">selected</c:if>>????????????</option>
              <option value="delivering" <c:if test="${order.or_state == '?????????'}">selected</c:if>>?????????</option>
              <option value="deli-complete" <c:if test="${order.or_state == '????????????'}">selected</c:if>>????????????</option>
              <option value="confirm" <c:if test="${order.or_state == '????????????'}">selected</c:if>>????????????</option>
              <option value="cancel" <c:if test="${order.or_state == '????????????'}">selected</c:if>>????????????</option>
            </select>
          </td>
          <td class="orNum">${order.or_num}</td>
          <td>${order.or_methods}</td>
          <td>${order.or_payment}???</td>
          <td>${order.or_use_point}</td>
          <td>${order.or_me_id}</td>
          <td>${order.or_title} <c:if test="${order.or_re_title > 1}">??? ${order.or_re_title -1}???</c:if></td>
          <td>${order.approvedDate}
        </tr>
      </c:forEach>
    </table>
       <ul class="pagination justify-content-center">
	        <c:if test="${pm.prev}">
	            <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/orders?page=${pm.startPage-1}">??????</a></li>
	        </c:if>
	        <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
	            <li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/orders?page=${index}">${index}</a></li>
	        </c:forEach>
	        <c:if test="${pm.next}">
	            <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/orders?page=${pm.endPage+1}">??????</a></li>
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
	            alert('?????? ????????? ?????????????????????.')
	          else
	            alert('?????? ????????? ???????????? ???????????????.')
	        } 
	      })
	      
	  	if($(this).val() == 'cancel' && $(this).parent().find('.payMethod').val() == 'kakao'){
	  		var orderNum = $(this).parent().find('.orderNum').val();
			var tid = $(this).parent().find('.pa_num').val();
			var isbn = [];
			$(this).parent().find('.isbn').each(function(){
				isbn.push($(this).val());
			});
			var point = $(this).parent().find('.usePoint').val();
			var amount = [];
			$(this).parent().find('.amount').each(function(){
				amount.push($(this).val());
			});
			var id = $(this).parent().find('.id').val();
			var returnPoint = $(this).parent().find('.returnPoint').val();
			console.log(returnPoint)
			
			var data = {
					po_point : returnPoint,
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
				traditional : true,
				success: function(data){
					console.log(data)
					if(data == 'OK'){
						alert('?????? ?????? ??????')
						location.href= contextPath+'/admin/user/orders';
					}else{
						alert('?????? ????????? ?????? ?????????????????????.')
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
				isbn.push($(this).val());
			});
			var point = $(this).parent().find('.usePoint').val();
			var amount = [];
			$(this).parent().find('.amount').each(function(){
				amount.push($(this).val());
			});
			var id = $(this).parent().find('.id').val();
			var returnPoint = $(this).parent().find('.returnPoint').val();
			
			   $.ajax({
			        url : contextPath+'/order/inicis/cancel', // ???: http://www.myservice.com/payments/cancel
			        type: "POST",
			        traditional : true,
			        data:{
			        	"po_point" : returnPoint,
			        	"me_id" : id,
			        	"imp_uid": imp ,
			        	"or_payment": payCount, // ????????????
			        	"or_num" : orderNum,
			        	"pr_bk_isbn" : isbn,
			        	"pr_amount" : amount,
			        	"pr_use_point" : point,
			        	"reason": "????????? ?????? ??????" // ????????????
			      },
			    }).done(function(result) { // ?????? ????????? ?????? 
			    	if(result == 'OK'){
				        alert("?????? ??????");
				        location.href=contextPath+'/admin/user/orders';
			    	}
			    }).fail(function(error) { // ?????? ????????? ??????
			      alert("?????? ??????");
			    });
		}
	  	
	  	if($(this).val() == 'confirm'){
	  		var id = $(this).parent().find('.id').val();
	  		var orderNum = $(this).parent().find('.orderNum').val();
	  		var getPoint = $(this).parent().find('.returnPoint').val();
	  		console.log(id)
	  		console.log(orderNum)
	  		console.log(getPoint)
	  		var data = {
	  				po_me_id : id,
	  				or_num : orderNum,
	  				po_point : getPoint
	  		}
	  		$.ajax({
	  			async: false,
	  			url: contextPath+'/member/point',
	  			type : "post",
	  			data :  data,
	  			traditional : true,
	  			success: function(data){
	  				if(data == 'OK'){
	  					alert('?????????????????? ?????????????????????.')
	  					location.href= contextPath+'/admin/user/orders';
	  				}
	  			},
	  			error:function(error){
	  				alert(error);
	  			}
	  		})
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

    