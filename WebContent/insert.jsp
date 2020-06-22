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
<h1>글쓰기</h1> <a href="mselect.bo">메인</a>


<form action="insert.bo" method="post" onsubmit="return formCheck();">
작성자 <input name="writer" id="writer"><br>
제목 <input name="title" id="title"><br>
내용<br>
<textarea rows="5" name="content" id="content"></textarea>
<input type="submit" value="등록">

</form>
<script>
function formCheck() {
var title = document.forms[0].title.value;     
var writer = document.forms[0].writer.value;
var content = document.forms[0].content.value; 


if (title == null || title == ""){     
    alert('제목을 입력하세요');           
    document.forms[0].title.focus();    
    return false;                      
}
if (writer == null ||  writer  == ""){   
    alert('작성자를 입력하세요'); 
    document.forms[0].writer.focus();            
    return false;               
}
 
if (content == null ||  content == ""){
    alert('내용을 입력하세요'); 
    document.forms[0].content.focus();
    return false;
}

}

</script>
</body>
</html>