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

<c:choose>

<c:when test="${empty login}">
<a href="loginui.bo">로그인</a>
</c:when>

<c:otherwise>
<a href="logout.bo">로그아웃</a>
</c:otherwise>

</c:choose>

<a href="minsertui.bo">회원 가입</a> <a href="list.bo">게시판</a>
	<h1>회원 목록</h1>

	<c:forEach items="${list}" var="dto">
		<a href="mselectById.bo?id=${dto.id}">${dto.id} : ${dto.name}</a>
		<br>
	</c:forEach>
	


	
</body>
</html>