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

   ID: ${dto.id}<br>
   Name: ${dto.name}<br>
   Age: ${dto.age}<br>
   
   <a href="mupdateui.bo?id=${dto.id}">수정</a> | <a href="mdelete.bo?id=${dto.id}">삭제</a> | <a href="mselect.bo">목록</a>

</body>
</html>