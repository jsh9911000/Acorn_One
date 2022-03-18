<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
<div class="container">
	<h1>알림</h1>
    <c:choose>
		<c:when test="${not empty sessionScope.id }">
			<script>
					alert("로그인 되었습니다.");
					location.href="${requestScope.url }";
			</script>
		</c:when>
		<c:otherwise>
			<script>
					alert("아이디 혹은 비밀 번호가 틀려요");
					location.href="${pageContext.request.contextPath}/";
				</script>
		</c:otherwise>
	</c:choose>
</div>	
</body>
</html>