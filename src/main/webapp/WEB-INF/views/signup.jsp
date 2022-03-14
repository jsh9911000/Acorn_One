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
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
      
            <div class="modal-body p-5 pt-0">
              <form class="">
                <div class="form-floating mb-3">
                  <input type="ID" class="form-control rounded-4" id="floatingInput" placeholder="ID">
                  <label for="floatingInput">ID</label>
                </div>
                <div class="form-floating mb-3">
                  <input type="password" class="form-control rounded-4" id="floatingPassword" placeholder="Password">
                  <label for="floatingPassword">Password</label>
                </div>
                <div class="form-floating mb-3">
                 <input type="name" class="form-control rounded-4" id="floatingName" placeholder="Name">
                 <label for="floatingName">이름</label>
                </div>
                <div class="form-floating mb-3">
                 <input type="age" class="form-control rounded-4" id="floatingAge" placeholder="Age">
                 <label for="floatingAge">나이</label>
                </div>

                <button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary" type="submit">Sign up</button>
                <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
                <hr class="my-4">
                <h2 class="fs-5 fw-bold mb-3">Or use a third-party</h2>
                <button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-4" type="submit">
                  <svg class="bi me-1" width="16" height="16"><use xlink:href="#twitter"/></svg>
                  Sign up with Twitter
                </button>
                <button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-4" type="submit">
                  <svg class="bi me-1" width="16" height="16"><use xlink:href="#facebook"/></svg>
                  Sign up with Facebook
                </button>
                <button class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-4" type="submit">
                  <svg class="bi me-1" width="16" height="16"><use xlink:href="#github"/></svg>
                  Sign up with GitHub
                </button>
              </form>
            </div>
          </div>
        </div>
</body>
</html>