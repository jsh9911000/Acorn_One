<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<style>
        body {
        	background-color: #212529;
	        padding-top: 200px;
	        padding-bottom: 40px;
        }
</style>
</head>
<body>
<div class="modal-dialog" role="document">
       <div class="modal-content rounded-5 shadow">
          <div class="modal-header p-5 pb-4 border-bottom-0">
             <h2 class="fw-bold mb-0">회원 탈퇴</h2>
         </div>
         <div class="modal-body p-5 pt-0">
			<strong>${requestScope.id }</strong> 님 탈퇴 처리 되었습니다.
			<button class="block btn btn-lg btn-outline-danger" type="button" onclick="location.href='${pageContext.request.contextPath}/home.do'">홈으로 가기</button>
		</div>
	</div>
</div>
</body>
</html>