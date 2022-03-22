<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
      alert("${param.id }회원님 가입 되었습니다.")
      location.href="${pageContext.request.contextPath}/home.do"
   </script>
</body>
</html>