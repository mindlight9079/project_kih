<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authorlist</title>
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
    <div class="management">Management</div>
        <ul class="nav">
            <li><a href="<%=request.getContextPath()%>/admin/user/publisherlist">??????????????????</a></li>
            <li><a href="<%=request.getContextPath()%>/admin/user/booklist">????????????</a></li>
            <li><a href="<%=request.getContextPath()%>/admin/user/authorlist" class="current">???????????????</a></li>
            <li><a href="<%=request.getContextPath()%>/admin/user/bookslist">???????????????</a></li>
            <li><a href="<%=request.getContextPath()%>/admin/user/registrationlist">??????????????????</a></li>
        </ul>

        <div class="search">
            <form class="input-group float-right mb-3" action="<%=request.getContextPath()%>/admin/user/authorlist">
               <select class="form-control mr-2" name="type">
                   <option value="0" <c:if test="${pm.criteria.type == 0 }">selected</c:if>>??????</option>
                   <option value="1" <c:if test="${pm.criteria.type == 1 }">selected</c:if>>??????+??????</option>
                   <option value="2" <c:if test="${pm.criteria.type == 2 }">selected</c:if>>??????</option>
               </select>
               <input type="text" class="form-control mr-2" name="search" value="<c:out value="${pm.criteria.search}"/>">
               <button class="btn btn-outline-secondary">??????</button>
             </form>
        </div>   
           <table class="table table-bordered">
              <thead>
               <tr>
                   <th>????????????</th>
                <th>??????</th>
                <th>?????????</th>
                <th>????????????</th>
               </tr>
             </thead>
             <tbody>
             <c:forEach items="${author}" var="author" varStatus="status">
               <tr>
                 <td>${author.au_num}</td>
                 <td><a href="<%=request.getContextPath()%>/admin/user/authordetails?au_num=${author.au_num}">${author.au_writer}</a></td>
                 <td>${author.au_title}</td>
                 <td>${author.au_birth}</td>
               </tr>
              </c:forEach>
             </tbody>
           </table>
          <div class="regi-btn">
			<button class="btn btn-outline-secondary"><a href="<%=request.getContextPath()%>/admin/user/author">????????????</a></button>
      	  </div>            
               <ul class="pagination justify-content-center">
                   <c:if test="${pm.prev}">
                       <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/authorlist?page=${pm.startPage-1}&type=${pm.criteria.type}&search=${pm.criteria.search}">??????</a></li>
                   </c:if>
                   <c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="index">
                       <li class="page-item <c:if test="${pm.criteria.page == index }">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/authorlist?page=${index}&type=${pm.criteria.type}&search=${pm.criteria.search}">${index}</a></li>
                   </c:forEach>
                   <c:if test="${pm.next}">
                       <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/admin/user/authorlist?page=${pm.endPage+1}&type=${pm.criteria.type}&search=${pm.criteria.search}">??????</a></li>
                   </c:if>
               </ul>
    </div>
<script>
$(function(){
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

    