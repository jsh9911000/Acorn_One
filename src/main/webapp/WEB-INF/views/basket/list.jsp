<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table>
		<thead>
			<tr>
			
				<th>물건</th>
			

			</tr>
		</thead>
		<tbody>
		<c:forEach var="tmp" items="${basketList }">
			<tr>
				
				<td>${tmp.name }</td>
				
			</tr>
		</c:forEach>
		</tbody>
	</table>

</div>
</body>
</html>