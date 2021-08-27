<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CATAGORY</title>
<script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        padding:0; margin: 0; list-style: none;
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
        color: white; margin-bottom: 20px; cursor: pointer; font-size: 20px;
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
    .foreign-list{
        display: none;
    }
    .fa-times{
        color: white; font-size: 30px; position: absolute; top: 20px; right: 20px; 
    }


    h1{
        font-weight: bold;
    }
    .viewList{
        width: 500px; height: 50px; background-color:#f8f8f8; display: flex; font-size: 17px;
        line-height: 50px; font-weight: 600;
    }
    .viewList li{
        margin:0 30px 0 15px;
    }
    input[name="checkList"]{
        width: 20px; height: 20px;
    }
    .searchImg{
        width: 200px; height: 315px;
    }
    .cataTitle{
        font-weight: bold; margin-bottom: 20px;
    }
    .cataContents{
        width: 650px;
    }
    .cataPrice{
        font-size: 25px; font-weight:600;
    }
    .preview{
        max-height: 200px; overflow: hidden; margin-top: 20px;
        display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical;
    }
    input[name="cataAmount"]{
        width: 80px; margin-right: 35px; height: 40px;
    }
    .cataBottom{
        display: flex; margin-top: 40px; line-height: 40px;
    }
    .cataBottom *{
        margin-right: 5px;
    }
    .search-result {
        font-size: 18px; font-weight: bold;
    }
    .authorIntro td div{
       overflow: hidden; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;
    }
    .author-name{
        font-weight: bold;
    }
    .author-box{
        border-top: 1px solid #dee2e6; border-bottom: 1px solid #dee2e6;
    }
    .author-box th{
        width: 100px; background-color:#f8f8f8;
    }

</style>
<body>
    <div class="side-bars">
        <i class="fas fa-times"></i>
        <div class="catagory-list">
            <ul>
                <li class="domestic">국내도서</li>
                <li class="foreign">외국도서</li>
            </ul>
        </div>
        <div class="subCatagory-list">
            <ul class="dome-list">
                <li>소설/시</li>
                <li>에세이</li>
                <li>인문</li>
                <li>역사</li>
                <li>예술</li>
                <li>종교</li>
                <li>사회</li>
                <li>과학</li>
                <li>자기계발</li>
                <li>국어와외국어</li>
                <li>IT/모바일</li>
            </ul>
        </div>
        <div class="subCatagory-list">
            <ul class="foreign-list">
                <li>문학</li>
                <li>소설</li>
                <li>경제/경영</li>
                <li>인문/사회</li>
                <li>예술</li>
                <li>컴퓨터</li>
                <li>자연과학</li>
            </ul>
        </div>
    </div>
    <i class="fas fa-bars"></i>
    <div class="container">
        <div class="search-result" >| 검색결과</div>
        <ul class="viewList">
            <li>기본순</li>
            <li>인기순</li>
            <li>높은가격순</li>
            <li>낮은가격순</li>
        </ul>
        <table class="table">
        <c:forEach items="${bookSearch}" var="book" varStatus="status">
            <tr>
                <td>
                    <img src="<%=request.getContextPath()%>/img${book.bk_mainImg}" alt="searchImg" class="searchImg">
                </td>
                <td class="cataContents">
                    <h3 class="cataTitle">${book.bk_title}</h3> <span>${book.bk_subtitle}</span>
                    <div>
                        ${book.bk_au_writer} 저/손현선 역 | ${book.bk_publish} | ${book.date}
                    </div>
                    <span class="pricePart">
                        <span> 판매가&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;</span><span class="cataPrice"> &nbsp;${book.bk_price}원</span>
                    </span>
                    <div class="preview">
                       ${book.bk_contents}
                    </div>
                    <div class="cataBottom">
                        수량 &nbsp;&nbsp; <input type="number" name="cataAmount"  min="0" value="1"> <br>
                        <button type="button" class="btn btn-info">장바구니</button> <br>
                        <button type="button" class="btn btn-secondary" >바로구매</button>
                    </div>
                </td>
                <td>
                    <input type="checkbox" name="checkList">
                </td>
            </tr>
        </c:forEach>
        </table>
        <table class="table author-box">
            <tr class="author-name">
                <th>작가  </th>
                <td>알베르 카뮈</td>
            </tr>
            <tr class="masterpiece">
                <th>대표작  </th>
                <td>이방인</td>
            </tr>
            <tr class="authorIntro">
                <th>작가소개  </th>
                <td>
                    <div>그 모든 것에 항거하며 인간의 부조리와 자유로운 인생을 깊이 고민한 작가이자 철학자. 1913년 프랑스 식민지였던 알제리 몽드비에서 가난한 노동자의 둘째 아들로 태어났다. 알사스 출신의 농업 노동자였던 아버지가 1차 세계대전 중 전사하고, 청각 장애인 어머니와 할머니와 함께 가난 속에서 자란 카뮈는 유년 시절의 기억과 가난, 알제리의 빛나는 자연과 알제 서민가의 일상은 카뮈 작품의 뿌리에 내밀하게 엉기어 있다. 구역의 공립 학교에서 L. 제르맹이라는 훌륭한 스승을 만났다. “나는 자유를 빈곤 속에서 배웠다.”라고 하기도 했는데, 알제리에서 보낸 유년기는 그가 작가적 양분을 공급받는 데 영향을 미쳤을 것이라 여겨진다. 그의 도움으로 장학금을 받고 1923년 프랑스 중등학교 리세에 입학했고, 이후 알제리 대학에 입학했으나 1930년 폐결핵으로 자퇴를 했다. 결핵 발병으로 누구보다 좋아했던 축구를 포기했다.</div>
                </td>
            </tr>
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
    </script>
</body>
</html>