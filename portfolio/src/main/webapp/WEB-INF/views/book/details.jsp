<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DETAILS</title>
  <script src="https://kit.fontawesome.com/be5943d19e.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    *{
      margin: 0; padding: 0;
    }
    body{
      background-color: white; position: relative;
    }
    .fa-bars{
      font-size: 35px; position: absolute; top:20px; left:15px; cursor: pointer;
    }
    .container{
      padding: 50px; padding-top: 150px; background-color: white;  position:relative;
    }
    .book-top{
      display: flex; overflow: hidden; margin-left: 40px;
    }
    .bookImg{
      width: 380px;
    }
    .bookImg img{
      width: 330px;
    }
    .title{
      width: 580px;
    }
    .height-line{
      width: 1px; height: 580px; background-color: gainsboro; margin-left:50px;
    }
    .title h1{
      margin-left: 50px;
    }
    .title p{
      color: gray; margin-top: 10px; margin-left: 50px; font-size: 18x;
    }
    .width-line{
      background-color: gainsboro; margin-top: 30px; height: 1px; width: 100%; 
    }
    .title-bottom{
      margin: 50px;
    }
    .title-bottom *{
      padding: 10px;
    }
    .title-bottom h2{
      display: inline;
    }
    .order-line{
      display: flex; margin-left: 50px; line-height: 40px; padding: 10px; 
    }
    .order-line * {
      margin-right: 15px;
    }
    .amount input{
      width: 100px; height: 30px;
    }
    .cart, .buy{
      width: 70px; height: 40px;
    }
    .middle-line{
      width: 1040px; height:2px; color: gainsboro;
    }
    .book-bottom{
      padding: 10px 30px;
    }
    .table-box{
      margin-top: 30px;
    }
    hr{
      margin-top: -0.7px;
    }
    .table-box th{
      background-color: gainsboro; text-align: center;
    }
    .catagory, .introduce{
      margin-top: 30px;
    }
    .writer{
      margin-top: 60px;
    }
    .introduce h4, .writer h4{
      margin-bottom: 30px;
    }
    .catagory h6, .introduce h4, .writer h4{
      font-weight: bold;
    }
    .catagory p{
      font-size: 14px;
    }
    .sub{
      margin-top: 40px;
    }
  </style>
</head>
<body>
  <i class="fas fa-bars"></i>
  <div class="container">
    <div class="book-top">
      <div class="bookImg">
       <img src="소크라테스 익스프레스.jpg" alt="express">
     </div>
     <div class="height-line"></div>
     <div class="title">
        <h1>소크라테스 익스프레스</h1>
        <p> 철학이 우리 인생에 스며드는 순간</p>
        <div class="width-line"></div>
        <div class="title-bottom">
            <div>에릭 와이너 저/김하현 역 | 어크러스 | 2021년 4월 28일</div>
            <div>
              판매가 | <h2>18,000원</h2>
            </div>
            <div>그린 포인트 | 900원(5% 적립)</div>
            <div>배송일정 | 서울시특별구 종로구 세정대로 기준</div>
            <div>배송비 | 무료</div>
        </div>
        <div class="order-line">
          <div class="amount">
            수량 <input type="number">
          </div>
          <button class="cart">장바구니</button>
          <button class="buy">바로구매</button>
        </div>
      </div>
    </div>
    <hr>
    <div class="book-bottom">
      <div class="table-box">
          <table class="table table-bordered table-sm">
            <tbody>
              <tr>
                <th>ISBN</th>
                <td>Lastname</td>
                <td>Email</td>
              </tr>
              <tr>
                <th>쪽수</th>
                <td>Doe</td>
                <td>john@example.com</td>
              </tr>
              <tr>
                <th>출간일</th>
                <td>Moe</td>
                <td>mary@example.com</td>
              </tr>
            </tbody>
          </table>
        </div>     
        <div class="book-contents">
          <div class="catagory">
              <h6>카테고리 분류</h6>
              <p>해외도서 > 인문/교양</p>
          </div>
          <div class="introduce">
            <h4>책소개</h4>
            <p>쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는

              같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지
              
              미인을 구하기 위하여서 그리하였는가? 아니다 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 현저하게 일월과 같은 예가 되려니와 그와 같지 못하다 할지라도 창공에 반짝이는 뭇 별과 같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에</p>
          </div>
          <div class="writer">
              <h4>저자소개</h4>
              <div class="main">
                <p>저자 | 홍길동</p>
                <p> 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나</p>
              </div>
              <div class="sub">
                <p>역자 | 임꺽정</p>
                <p>청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나</p>
              </div>
          </div>
        </div>
    </div>
  </div>
</body>
</html>