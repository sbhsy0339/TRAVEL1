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
<h1>답글 쓰기</h1>
<% String num = request.getParameter("num"); %>

<form action="reply.bo" method="post">
<input type="hidden" name="num" value="${param.num}">
Writer: <input name="writer"><br>
Title: <input name="title"><br>
content<br>
<textarea rows="5" name="content"></textarea>
<br>
<input type="submit" value="댓글달기">
</form>
</body>
</html>