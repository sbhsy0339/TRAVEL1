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

<h1>게시물 목록</h1>
<a href="insertui.bo">글쓰기</a> <a href="mselect.bo">메인</a>
<table border="1">
            <thead>
            <tr>
                <th>num</th>
				<th>title</th>
				<th>writer</th>
				<th>writeday</th>
				<th>readcnt</th>
			
			</tr>
			</thead>
			
			<tbody>
			 <c:forEach items="${list}" var="dto">
			  <tr>
			    <td>${dto.num}</td>
			    
			    <td width="300px">
			   <c:forEach begin="1" end="${dto.repIndent}">
						&nbsp;&nbsp;
					</c:forEach>
					<a href="read.bo?num=${dto.num}">${dto.title}</a>
					</td>
					
					<td>${dto.writer}</td>
					<td>${dto.writeday}</td>
					<td>${dto.readcnt}</td>
			
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<a href="list.bo?curPage=${(to.curPage-1) > 0 ? (to.curPage-1) : 1}">&laquo;</a>&nbsp;&nbsp;

	<c:forEach begin="${to.beginPageNum}" end="${to.stopPageNum}" var="idx">
	
	<c:if test="${to.curPage == idx}">
	<a style="font-size: 20px;" href="list.bo?curPage=${idx}">${idx}</a>&nbsp;&nbsp;
	</c:if>
	<c:if test="${to.curPage != idx}">
	<a href="list.bo?curPage=${idx}">${idx}</a>&nbsp;&nbsp;
	</c:if>
	</c:forEach>
    <a href="list.bo?curPage=${(to.curPage+1) < to.totalPage ? (to.curPage+1) : to.totalPage }">&raquo;</a>
</body>
</html>