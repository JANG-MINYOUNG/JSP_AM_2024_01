<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성 페이지</title>
</head>
<body>

	<h2>게시물 작성</h2>

	<form method="POST" action="doWrite">
		<div>
			제목 : <input type="text" placeholder="제목을 입력해주세요" name="title" />
		</div>
		<div>
			내용 :
			<textarea type="text" placeholder="내용을 입력해주세요" name="body"></textarea>
		</div>
		<button type="submit">작성</button>
	</form>


	<div>
		<a style="color: green" href="list">리스트로 돌아가기</a>
	</div>

</body>
</html>