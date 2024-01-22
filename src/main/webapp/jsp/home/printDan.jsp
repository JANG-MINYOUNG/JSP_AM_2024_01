<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
int dan = Integer.parseInt(request.getParameter("dan"));
int limit = Integer.parseInt(request.getParameter("limit"));
String color = request.getParameter("color");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>±¸±¸´Ü Ãâ·Â</title>
</head>
<body>

	<h3>
		==<%=dan%>단==
	</h3>
	<%
	for (int i = 1; i <= limit; i++) {
	%>
	<div style="color:<%= color%>;"><%=dan%>
		*
		<%=i%>
		=
		<%=dan * i%></div>
	<%
	}
	%>
</body>
</html>