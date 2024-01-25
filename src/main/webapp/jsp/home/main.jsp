<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
boolean isLogined = (boolean) request.getAttribute("isLogined");
int loginedMemberId = (int) request.getAttribute("loginedMemberId");
Map<String, Object> loginedMember = (Map<String, Object>) request.getAttribute("loginedMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<body>
	<div><%=loginedMemberId%>번, 회원 로그인 중
	</div>
	<div><%=loginedMember%></div>
	<h1>MAIN</h1>
	<%
	if (isLogined) {
	%>
	<div>
		<a href="../member/doLogout">로그아웃</a>
	</div>
	<%
	}
	%>

	<%
	if (!isLogined) {
	%>
	<div>
		<a href="../member/login">로그인</a>
	</div>
	<%
	}
	%>
	<ul>
		<li><a href="../article/list">리스트로 이동</a></li>
		<li><a href="../member/join">회원가입으로 이동</a></li>
		<li><a href="../member/login">로그인으로 이동</a></li>
	</ul>
</body>
</html>