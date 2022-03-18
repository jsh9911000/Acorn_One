<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>/views/users/info.jsp</title>
</head>
<body>
<div class="container">
   <h1>가입 정보 입니다.</h1>
   <table>
      <tr>
         <th>아이디</th>
         <td>${id }</td>
      </tr>
      <tr>
         <th>비밀번호</th>
         <td><a href="${pageContext.request.contextPath}/users/pwd_updateform.do">수정하기</a></td>
      </tr>
       <tr>
         <th>가입일</th>
         <td>${dto.regdate }</td>
      </tr>
      <tr>
         <th>이름</th>
         <td>${dto.name }</td>
      </tr>
      <tr>
         <th>성별</th>
         <td>${dto.gender }</td>
      </tr>
   </table>
   <a href="javascript:deleteConfirm()">탈퇴</a>
</div>
<script>
   function deleteConfirm(){
      const isDelete=confirm("${id} 님 탈퇴 하시겠습니까?");
      if(isDelete){
         location.href="${pageContext.request.contextPath}/users/private/delete.do";
      }
   }
</script>   
</body>
</html>