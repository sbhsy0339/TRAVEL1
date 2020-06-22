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

 <h1>회원 가입</h1>
 <form action="minsert.bo" method="post" onsubmit="return formCheck();" >
 아이디 : <input name="id" id="id"><br>
 이름 : <input name="name" id="name"><br>
 나이 :  <input name="age" id="age" type = "number"><br>
 비밀번호 : <input name="pw" id="pw" type="password"><br>
 <input type="submit" value = "가입">
 </form>
 
 <script>
function formCheck() {
var id = document.forms[0].id.value;     
var name = document.forms[0].name.value;
var age = document.forms[0].age.value; 
var pw = document.forms[0].pw.value; 

if (id == null || id == ""){     
    alert('아이디를 입력하세요');           
    document.forms[0].id.focus();    
    return false;                      
}
if (name == null ||  name  == ""){   
    alert('이름을 입력하세요'); 
    document.forms[0].name.focus();            
    return false;               
}
 
if (age == null ||  age == ""){
    alert('나이를 입력하세요'); 
    document.forms[0].age.focus();
    return false;
}

if (pw == null ||  pw == ""){
    alert('비밀번호를 입력하세요'); 
    document.forms[0].pw.focus();
    return false;
}
}

</script>
</body>
</html>