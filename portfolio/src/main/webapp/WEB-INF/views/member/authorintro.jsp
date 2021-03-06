<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AuthorIntro</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        padding:0; margin: 0; list-style: none; color:black;
    }
	a:hover{
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

    .table{
        width: 1110px; overflow: hidden;
    }
    h1{
        font-weight: bold;
    }
    .table th{
        background-color: #f8f8f8;;
    }
    .authorImg{
        width: 120px; height: 170px;
    }
    .authorWork{
        text-align: center; width: 1010px;
    }
    .work{
       float: left; width: calc(100% / 4); margin-top: 20px;
    }

    .authorWork::after{
        display: block; content: ''; clear: both;
    }

</style>
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
    <div class="container">
        <table class="table">
            <h1> | ${author.bs_name}</h1>
            <tr>
                <th>?????????</th>
                <td class="authorWork">
                	<c:forEach items="${bookList}" var="book" varStatus="status">
                    <div class="work">
                  	  <a class="contents" href="<%=request.getContextPath()%>/book/details?re_bk_isbn=${book.bk_isbn}">
                        <img src="<%=request.getContextPath()%>/img${book.bk_mainImg}" alt="authorImg" class="authorImg"> <br>
                        <span>${book.bk_title}</span>
                   	  </a>
                    </div> 
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th>
                    ??????
                </th>
                <td>
                    ${author.bs_birth}
                </td>
            </tr>
            <tr>
                <th>
                    ????????????
                </th>
                <td>
                  ${author.bs_contents}
                </td>
            </tr>
        </table>
        </table>
    </div>
<script>
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
</script>
</body>
</html>