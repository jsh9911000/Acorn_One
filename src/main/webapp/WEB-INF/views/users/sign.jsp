<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/member/sign.jsp</title>
</head>
<body>
	<div class="container">
		<script>
			alert("회원가입이 완료되었습니다.");
			location.href="${pageContext.request.contextPath}/home.do";
		</script>
	</div>
</body>
</html>