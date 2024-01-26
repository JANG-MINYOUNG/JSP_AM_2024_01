<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.lang.Math"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
int cPage = (int) request.getAttribute("page");
int totalPage = (int) request.getAttribute("totalPage");
int itemsInAPage = (int) request.getAttribute("itemsInAPage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 목록</title>
</head>
<body>

	<style type="text/css">
body {
	text-align: center;
}

.list_table {
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 50px;
	height: 300px;
}

.list_table tr {
	height: 28px;
}

.page_box {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	display: inline-block;
}

.page {
	width: 800px;
	font-size: 1.2rem;
	background-color: #afafaf;
	display: flex;
	justify-content: space-between;
	font-size: 1.2rem;
}

.page>a {
	color: black;
	text-decoration: none;
}

.page>a.cPage {
	color: red;
	text-decoration: underline;
}
</style>
	<%@ include file="../part/topBar.jspf"%>

	<h2>게시물 목록</h2>

	<table class="list_table"
		style="border-collapse: collapse; border-color: green" border="1px">
		<thead>
			<tr>
				<th>번호</th>
				<th>작성날짜</th>
				<th>제목</th>
				<th>작성자</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Map<String, Object> articleRow : articleRows) {
			%>
			<tr style="text-align: center;">
				<td><%=articleRow.get("id")%></td>
				<td><%=articleRow.get("regDate")%></td>
				<td><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("title")%></a></td>
				<td><%=articleRow.get("writer")%></td>
				<td><a href="modify?id=<%=articleRow.get("id")%>">수정</a></td>
				<td><a href="doDelete?id=<%=articleRow.get("id")%>">del</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>


	<div class="page_box page_v1">
		<div class="page">
			<%
			if (cPage > 1) {
			%>
			<a href="list?page=1">◀◀</a>
			<%
			}
			int pageSize = 5;
			int from = cPage - pageSize;

			if (from < 1) {
			from = 1;
			}
			int end = cPage + pageSize;
			if (end > totalPage) {
			end = totalPage;
			}

			for (int i = from; i <= end; i++) {
			%>
			<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>"><%=i%></a>
			<%
			}

			if (cPage < totalPage) {
			%>
			<a href="list?page=<%=totalPage%>">▶▶</a>
			<%
			}
			%>
		</div>
	</div>

	<div class="page_box page_v2" style="margin-top: 50px">
		<div class="page">
			<%
			if (cPage > 1) {
			%>
			<a href="list?page=1">◀◀</a>
			<%
			}

			int pageSize_v2 = 10; //한 화면에 보여줄 페이지 갯수 -> 10개
			int pageGroup = (int) Math.ceil((double) cPage / pageSize_v2); // 한번에 보여줄 페이지의 그룹
			int from_v2 = ((pageGroup - 1) * pageSize_v2) + 1; // 한번에 보여줄 때의 첫번째 페이지 번호
			int end_v2 = pageGroup * pageSize_v2; // 한번에 보여줄 때의 마지막 페이지 번호

			if (pageGroup * pageSize_v2 > totalPage) {
			end_v2 = totalPage;
			}

			if (from_v2 < 1) {
			from_v2 = 1;
			}

			if (end_v2 > totalPage) {
			end_v2 = totalPage;
			}

			int beforeBtn = cPage - pageSize_v2;

			if (beforeBtn < 1) {
			beforeBtn = 1;
			}
			%>
			<a href="list?page=<%=beforeBtn%>">◁</a>
			<%
			for (int i = from_v2; i <= end_v2; i++) {
			%>
			<a class="<%=cPage == i ? "cPage" : ""%>" href="list?page=<%=i%>"><%=i%></a>
			<%
			}
			int afterBtn = cPage + pageSize_v2;
			if (afterBtn > totalPage) {
			afterBtn = totalPage;
			}
			%>
			<a href="list?page=<%=afterBtn%>">▷</a>
			<%
			if (cPage < totalPage) {
			%>
			<a href="list?page=<%=totalPage%>">▶▶</a>
			<%
			}
			%>
		</div>
	</div>



</body>
</html>