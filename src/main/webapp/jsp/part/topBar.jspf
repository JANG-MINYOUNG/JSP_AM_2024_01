<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
li, a {
	list-style: none;
	text-decoration: none;
}
</style>
<div>
	<%
	boolean isLogined = (boolean) request.getAttribute("isLogined");
	int loginedMemberId = (int) request.getAttribute("loginedMemberId");
	Map<String, Object> loginedMember = (Map<String, Object>) request.getAttribute("loginedMember");
	%>
	<%
	if (isLogined) {
	%>
	<div><%=loginedMember%></div>
	<div>
		<%-- 		<%=loginedMemberId%> --%>
		<!-- 		번 회원 로그인 중 -->
		<%=loginedMember.get("name")%>
		님 로그인 중 <a href="../member/doLogout">로그아웃</a>
	</div>
	<%
	}
	%>

	<%
	if (!isLogined) {
	%>
	<div>
		<%=loginedMemberId%>
		로그인 중 아님 <a href="../member/login">로그인</a>
	</div>
	<%
	}
	%>
	<div>
		<ul style="display: flex; justify-content: space-around;">
			<li><a href="../home/main">메인페이지로 이동</a></li>
			<li><a href="../article/list">게시글 리스트</a></li>
			<li><a href="../article/write">글쓰기</a></li>
			<li><a href="../member/join">회원가입</a></li>
		</ul>
	</div>

</div>