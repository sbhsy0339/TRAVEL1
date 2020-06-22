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

	NUM : ${dto.num}<br>
	Writer : ${dto.writer}<br>
	ReadCnt : ${dto.readcnt}<br>
	Title : ${dto.title}<br>
	Content : ${dto.content}<br>
	
 <a href="updateui.bo?num=${dto.num}">수정</a> | 
 <a href="delete.bo?num=${dto.num}">삭제</a> | 
 <a href="replyui.bo?num=${dto.num}">답글</a> | 
 <a href="list.bo">목록</a>
</body>
</html>