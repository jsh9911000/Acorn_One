<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- ssss -->
<html>
<head>
<meta charset="UTF-8">
<title>인덱스 페이지 입니다</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>
    	
    	body{
		 HEAD
    	background-image:url(background/back1.jpg);
    	background-repeat:repeat;
    	background-size :auto ;

    	background-image:url(background/back1.jpg);
    	background-repeat:repeat;
	    background-size : auto;
		branch 'master' of https://github.com/jsh9911000/Acorn_One.git
    	}
        body {
        height: 100%;
        }

        body {
        display: flex;
        align-items: center;
        padding-top: 200px;
        padding-bottom: 40px;
        }

        .container {
        width: 100%;
        max-width: 330px;
        padding: 15px;
        margin: auto;
        background-color: rgba(255,255,255,0.5);
        
        }
		button{
			float:left;
		}
    </style>
  
      
    </head>
    <body class="text-center">
        	<c:choose>
				<c:when test="${ empty sessionScope.id}"><!-- 로그인 안된 상태 -->
				<div class="container ">
					 <form action="${pageContext.request.contextPath}/users/login.do" method="post">
			            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="80" fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
			                <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
			                <path d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z"/>
			            </svg>
		            	<h1 class="h3 mb-3 fw-normal text-dark">KIOSK</h1>
			        	<c:choose>
							<c:when test="${ empty param.url }">
								<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
							</c:when>
							<c:otherwise>
								<input type="hidden" name="url" value="${param.url }"/>
							</c:otherwise>
						</c:choose>
			            <div class="form-floating">
			                <input type="text" class="form-control" id="id" name="id" placeholder="ID">
			                <label for="id">ID</label>
			            </div>
			            <div class="form-floating">
			                <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
			                <label for="pwd">Password</label>
			            </div>
			
			            <button class="w-50 btn btn-lg btn-warning" type="button" onclick="location.href='${pageContext.request.contextPath}/signup.do'">회원가입</button>
			            <button class="w-50 btn btn-lg btn-primary" type="submit">로그인</button>
		
		            </form>
				</div>
				</c:when>
				<c:otherwise>
				<div class="container ">
					 
			            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="80" fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
			                <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
			                <path d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z"/>
			            </svg>
		            	<h1 class="h3 mb-3 fw-normal text-dark">KIOSK</h1>
			        	<c:choose>
							<c:when test="${ empty param.url }">
								<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
							</c:when>
							<c:otherwise>
								<input type="hidden" name="url" value="${param.url }"/>
							</c:otherwise>
						</c:choose>
						<a href="">
							<button class="btn btn-lg btn-warning">로그아웃 하기</button>
						</a>
			            
			            <button class="btn btn-lg btn-warning" type="button" onclick="location.href='${pageContext.request.contextPath}/product/list.do'">상품 목록 가기</button>

				</div>
				</c:otherwise>
			</c:choose>
        
        
    </body>
</html>