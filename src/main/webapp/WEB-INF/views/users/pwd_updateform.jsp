<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/pwd_updateform.jsp</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
   <div class="modal-dialog" role="document">
       <div class="modal-content rounded-5 shadow">
          <div class="modal-header p-5 pb-4 border-bottom-0">
             <h2 class="fw-bold mb-0">비밀번호 수정</h2>
             <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" 
              onclick="location.href='${pageContext.request.contextPath}/product/list.do'"></button>
         </div>
         <div class="modal-body p-5 pt-0">
         <form action="${pageContext.request.contextPath}/users/pwd_update.do">
            <div class="form-floating mb-3">
                 <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password">
                <label for="pwd">기존 비밀번호</label>
            </div>
            <div class="form-floating">
              <input type="password" class="form-control" name="newPwd" id="newPwd" placeholder="New Password">
              <label for="newPwd">새 비밀번호</label>
            </div>
            <br />
            <div class="form-floating">
              <input type="password" class="form-control" id="newPwd" placeholder="New Password">
              <label for="newPwd2">새 비밀번호 확인</label>
            </div>
            <br />
         <button class="w-100 mb-2 btn btn-lg rounded-4 btn-danger" type="submit">수정하기</button>
         </form>
         </div>
      </div>
   </div>
<script>
   document.querySelector("#myForm").addEventListener("submit", function(e){
      let pwd1=document.querySelector("#newPwd").value;
      let pwd2=document.querySelector("#newPwd2").value;
      if(pwd1 != pwd2){
         alert("비밀번호를 확인 하세요!");
         e.preventDefault();
      }
   });
</script>
</body>
</html>