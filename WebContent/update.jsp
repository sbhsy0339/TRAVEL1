<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>글 수정</h1>
	
	<form action="update.bo" method="post">
		num : <input name="num" readonly value="${dto.num}"><br>
		작성자 <input value="${dto.writer}" name="writer"><br>
		제목 <input value="${dto.title}" name="title"><br>
		내용<br>
		<textarea rows="5" name="content">${dto.content}</textarea>
		<br>
		<input type="submit" value="등록">
		
	</form>
</body>
</html>