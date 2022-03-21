<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("${param.pro_name} 을(를) 수정 하였습니다.");
	location.href="${pageContext.request.contextPath}/product/updateList.do";
</script>
</body>
</html>