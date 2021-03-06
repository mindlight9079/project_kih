<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div class="container">
	<table class="table">
  		<thead>
	      <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	        <th>조회수</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach items="${list}" var="board">
	      <tr>
	        <td>${board.num}</td>
	        <td>
	        	<a href="<%=request.getContextPath()%>/board/detail?num=${board.num}">
	        		<c:if test="${board.groupOrd != 0}">⨽답변:</c:if>
	        		${board.title}
	        	</a>
	        </td>
	        <td>${board.writer}</td>
	        <td>${board.registered}</td>
	        <td>${board.views}</td>
	      </tr>
	    </c:forEach>
	    </tbody>
	  </table>
	  <a href="<%=request.getContextPath()%>/board/register">
	  	<button class="btn btn-outline-success">글쓰기</button>
	  </a>
</div>
</body>
</html>
