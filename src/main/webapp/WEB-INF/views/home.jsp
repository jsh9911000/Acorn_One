<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스 페이지 입니다</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style>
body {
	background-color: #212529;
	padding-top: 100px;
}

.block {
	display: block;
	width: 100%;
}
</style>


</head>
<body class="text-center">

	<c:choose>
		<c:when test="${ empty sessionScope.id}">

			<div class="modal-dialog" role="document">
				<div class="modal-content rounded-5 shadow">
					<div class="modal-header p-5 pb-4 border-bottom-0">
						<svg xmlns="http://www.w3.org/2000/svg" width="100" height="80"
							fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
                       <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                       <path
								d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z" />
                </svg>
						<h1 class="fw-bold mb-0">KIOSK</h1>
					</div>
					<div class="modal-body p-5 pt-0">


						<form action="${pageContext.request.contextPath}/users/login.do"
							method="post">
							<c:choose>
								<c:when test="${ empty param.url }">
									<input type="hidden" name="url"
										value="${pageContext.request.contextPath}/" />
								</c:when>
								<c:otherwise>
									<input type="hidden" name="url" value="${param.url }" />
								</c:otherwise>
							</c:choose>
							<div class="form-floating">
								<input type="text" class="form-control" id="id" name="id"
									placeholder="ID"> <label for="id">ID</label>
							</div>
							<div class="form-floating">
								<input type="password" class="form-control" id="pwd" name="pwd"
									placeholder="Password"> <label for="pwd">Password</label>
							</div>
							<button style="float: left" class="w-50 btn btn-lg btn-secondary"
								type="button"
								onclick="location.href='${pageContext.request.contextPath}/users/signup_form.do'">회원가입</button>
							<button style="float: left" class="w-50 btn btn-lg btn-warning"
								type="submit">로그인</button>

						</form>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="modal-dialog" role="document">
				<div class="modal-content rounded-5 shadow">
					<div class="modal-header p-5 pb-4 border-bottom-0">
						<svg xmlns="http://www.w3.org/2000/svg" width="100" height="80"
							fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
                    <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                    <path
								d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z" />
                 </svg>
						<h1 class="fw-bold mb-0">KIOSK</h1>
					</div>
					<div class="modal-body p-5 pt-0">
						<form>
							<c:choose>
								<c:when test="${ empty param.url }">
									<input type="hidden" name="url"
										value="${pageContext.request.contextPath}/" />
								</c:when>
								<c:otherwise>
									<input type="hidden" name="url" value="${param.url }" />
								</c:otherwise>
							</c:choose>
							<div class="form-floating">
								<h2>
									<strong>${sessionScope.id }</strong>님
								</h2>
								<h3>즐거운 하루 되세요!</h3>
							</div>
							<button class="block btn btn-lg btn-outline-danger" type="button"
								onclick="location.href='${pageContext.request.contextPath}/users/logout.do'">로그아웃
								하기</button>
							<button class="block btn btn-lg btn-outline-warning"
								type="button"
								onclick="location.href='${pageContext.request.contextPath}/product/list.do'">상품
								목록 가기</button>
							<c:if test="${sessionScope.id eq'master1'}">
								<button class="block btn btn-lg btn-outline-secondary"
									type="button"
									onclick="location.href='${pageContext.request.contextPath}/product/list2.do'">주문
									리스트</button>
								<button class="block btn btn-lg btn-outline-secondary"
									type="button"
									onclick="location.href='${pageContext.request.contextPath}/product/upload_form.do'">상품
									등록</button>
								<button class="block btn btn-lg btn-outline-secondary"
									type="button"
									onclick="location.href='${pageContext.request.contextPath}/product/updateList.do'">메뉴
									리스트</button>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>