<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<style>
        body {
        	background-color: #212529;
	        padding-top: 200px;
	        padding-bottom: 40px;
        }
</style>
</head>
<body>
	<script>
		alert("상품 등록에 성공했습니다.");
		location.href = "${pageContext.request.contextPath}/product/updateList.do";
	</script>
</body>
</html>