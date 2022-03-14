<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

        <div class="modal-dialog" role="document">
          <div class="modal-content rounded-5 shadow">
            <div class="modal-header p-5 pb-4 border-bottom-0">
              <!-- <h5 class="modal-title">Modal title</h5> -->
              <h2 class="fw-bold mb-0">Sign up for free</h2>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" 
              onclick="location.href='${pageContext.request.contextPath}/home.do'"></button>
            </div>
      
            <div class="modal-body p-5 pt-0">
              <form class="">
                <div class="form-floating mb-3">
                  <input type="ID" class="form-control rounded-4" id="floatingInput" placeholder="ID">
                  <label for="floatingInput">ID</label>
                  <small class="text-muted">중복 확인 관련 뭔가 넣어야됨.</small>
                </div>
                <div class="form-floating mb-3">
                  <input type="password" class="form-control rounded-4" id="floatingPassword" placeholder="Password">
                  <label for="floatingPassword">Password</label>
                </div>
                <div class="form-floating mb-3">
                  <input type="password2" class="form-control rounded-4" id="floatingPassword2" placeholder="Password">
                  <label for="floatingPassword2">Password</label>
                </div>
                <div class="form-floating mb-3">
                 <input type="name" class="form-control rounded-4" id="floatingName" placeholder="Name">
                 <label for="floatingName">이름</label>
                </div>
                <div class="form-floating mb-3">
                 <input type="age" class="form-control rounded-4" id="floatingAge" placeholder="Age">
                 <label for="floatingAge">나이</label>
                 <small class="text-muted">숫자로만 작성할 수 있게 만들자!</small>
                </div>
				<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio1">남자</label>
				</div>
				<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio2">여자</label>
				</div>
                <button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary" type="submit">회원가입</button>
                <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
                <hr class="my-4">
                <h2 class="fs-5 fw-bold mb-3">가입이 완료되면 로그인 페이지로 이동합니다.</h2>
                
              </form>
            </div>
          </div>
        </div>
</body>
</html>