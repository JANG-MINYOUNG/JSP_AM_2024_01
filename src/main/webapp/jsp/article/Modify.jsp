<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정 페이지</title>
</head>
<body>

	<h2>게시물 수정</h2>

	<h3><%=articleRow.get("id")%>번 게시물 수정
	</h3>
	<div>
		번호 :
		<%=articleRow.get("id")%></div>
	<div>
		날짜 :
		<%=articleRow.get("regDate")%></div>
	<form method="POST" action="doModify">
		<input type="hidden" value="<%=articleRow.get("id")%>" name="id" />
		<div>
			제목 : <input type="text" name="title"
				value="<%=articleRow.get("title")%>"/ >
		</div>
		<div>
			내용 :
			<textarea type="text" name="body"><%=articleRow.get("body")%></textarea>
		</div>
		<button type="submit">수정</button>
	</form>


	<div>
		<a style="color: green" href="list">리스트로 돌아가기</a>
	</div>

</body>
</html>