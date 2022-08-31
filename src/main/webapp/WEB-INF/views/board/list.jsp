<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- jsp 파일에서 java의 코드를 쓰기 위한 문법 -->
<%@ include file="../layout/header.jsp" %>
<h1>List page</h1>
<hr/>
<table border = "1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
	</tr>

	<c:forEach var="board" items ="${boards}">
		<tr>
			<th><a href = "/board/${board.id}">${board.id}</a></th>
			<th>${board.title}</th>
			<th>${board.content}</th>
		</tr>
	</c:forEach>

</table>
<%@ include file="../layout/footer.jsp" %>