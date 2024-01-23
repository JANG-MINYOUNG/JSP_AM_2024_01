<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 작성</title>
</head>
<body>

	<h2>게시물</h2>
	
	<form>
     <table>
     	<tr>
     		<td>이름</td>
     		<td><input type="text" name="writer"></td>	
     	</tr>
     	<tr>
     		<td>제목</td>
    		<td> <input type="text" placeholder="제목"></td>
     	</tr>
     		<td>내용</td>
    		<td> <textarea rows="10" cols="20" name="content"></textarea></td>
     	</tr>
     </table>
	</form>
	
	<div><a style="color:green" href="list">submit</a></div>
	<div><a style="color:green" href="list">리스트로 돌아가기</a></div>

</body>
</html>