<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	padding-bottom: 40px;
}

.block {
	display: block;
	width: 100%;
}
</style>
</head>
</head>
<body>

	<div class="modal-dialog" role="document">
		<div class="modal-content rounded-5 shadow">
			<div class="modal-header p-5 pb-4 border-bottom-0">
				<h2 class="fw-bold mb-0">회원가입 입니다.</h2>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"
					onclick="location.href='${pageContext.request.contextPath}/home.do'"></button>
			</div>

			<div class="modal-body p-5 pt-0">
				<form class=""
					action="${pageContext.request.contextPath}/users/sign.do"
					method="post" id="myForm">
					<div class="form-floating mb-3">
						<input type="text" class="form-control rounded-4" id="id"
							name="id" placeholder="ID"> <label class="control-label"
							for="id">ID</label> <small class="text-muted">영어와 숫자를
							조합하여 5~10글자 내로 입력하세요.</small>
						<div class="invalid-feedback">아이디를 다시 확인하세요.</div>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control rounded-4" id="pwd"
							name="pwd" placeholder="Password"> <label
							class="control-label" for="pwd">Password</label> <small
							class="form-text text-muted">영어소문자와 숫자를 조합하여 10글자 이내로
							입력하세여</small>
						<div class="invalid-feedback">비밀번호를 확인하세요.</div>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control rounded-4" id="pwd2"
							name="pwd2" placeholder="Password"> <label
							class="control-label" for="pwd2">Password 확인</label>
						<div class="invalid-feedback">비밀번호가 같지 않습니다.</div>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control rounded-4" id="name"
							name="name" placeholder="Name"> <label
							class="control-label" for="name">이름</label>
						<div class="invalid-feedback">한국 이름 2~4자리만 가능합니다.</div>
					</div>

					<div class="custom-control custom-radio">
						<legend>성별 정보 선택</legend>
						<label class="custom-control-label"> <input type="radio"
							name="gender" value="man" class="custom-control-input" checked>
							남자
						</label> <label class="custom-control-label"> <input type="radio"
							name="gender" value="woman" class="custom-control-input">
							여자
						</label>
					</div>
					<button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"
						type="submit">회원가입</button>
					<small class="text-muted">By clicking Sign up, you agree to
						the terms of use.</small>
					<hr class="my-4">
					<h2 class="fs-5 fw-bold mb-3">가입 시 로그인 페이지로 이동합니다.</h2>

				</form>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/gura_util.js"></script>
	<script>
		let isIdValid = false;
		let isPwdValid = false;
		let isPwdValid2 = false;
		let isNameValid = false;

		document
				.querySelector("#id")
				.addEventListener(
						"input",
						function() {
							document.querySelector("#id").classList
									.remove("is-valid");
							document.querySelector("#id").classList
									.remove("is-invalid");

							let inputId = this.value;
							console.log(inputId);

							const reg_id = /^(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{5,10}$/;

							if (!reg_id.test(inputId)) {
								isIdValid = false;
								document.querySelector("#id").classList
										.add("is-invalid");
								return;
							}

							ajaxPromise(
									"${pageContext.request.contextPath}/users/checkid.do",
									"get", "inputId=" + inputId)
									.then(function(response) {
										return response.json();
									})
									.then(
											function(data) {
												console.log(data);
												if (data.isExist) {
													isIdValid = false;
													document
															.querySelector("#id").classList
															.add("is-invalid");
												} else {
													isIdValid = true;
													document
															.querySelector("#id").classList
															.add("is-valid");
												}
											});
						});

		function checkPwd() {

			document.querySelector("#pwd").classList.remove("is-valid");
			document.querySelector("#pwd").classList.remove("is-invalid");
			document.querySelector("#pwd2").classList.remove("is-valid");
			document.querySelector("#pwd2").classList.remove("is-invalid");

			const pwd = document.querySelector("#pwd").value;
			const pwd2 = document.querySelector("#pwd2").value;

			const reg_pwd = /^[a-z].{4,9}$/;

			if (!reg_pwd.test(pwd)) {
				isPwdValid = false;
				document.querySelector("#pwd").classList.add("is-invalid");
				return;
			}
			if (pwd != pwd2) {
				isPwdValid = false;
				document.querySelector("#pwd").classList.add("is-invalid");
				isPwdValid2 = false;
				document.querySelector("#pwd2").classList.add("is-invalid");
			} else {
				isPwdValid = true;
				document.querySelector("#pwd").classList.add("is-valid");
				isPwdValid2 = true;
				document.querySelector("#pwd2").classList.add("is-valid");
			}
		}

		document.querySelector("#pwd").addEventListener("input", checkPwd);
		document.querySelector("#pwd2").addEventListener("input", checkPwd);

		function checkName() {
			document.querySelector("#name").classList.remove("is-valid");
			document.querySelector("#name").classList.remove("is-invalid");

			const name = document.querySelector("#name").value;

			const reg_name = /^[가-힣]{2,4}$/;

			if (!reg_name.test(name)) {
				isNameValid = false;
				document.querySelector("#name").classList.add("is-invalid");
				return;
			} else {
				isNameValid = true;
				document.querySelector("#name").classList.add("is-valid");
			}
		}
		document.querySelector("#name").addEventListener("input", checkName);

		document.querySelector("#myForm").addEventListener(
				"submit",
				function(e) {
					let isFormValid = isIdValid && isPwdValid && isPwdValid2
							&& isNameValid;
					if (!isFormValid) {

						e.preventDefault();
					}
				});

		document.querySelector("#pwd").addEventListener("input", function() {
			let inputPwd = this.value;
			console.log(inputPwd);
		});
		document.querySelector("#pwd2").addEventListener("input", function() {
			let inputPwd2 = this.value;
			console.log(inputPwd2);
		});
		document.querySelector("#name").addEventListener("input", function() {
			let inputName = this.value;
			console.log(inputName);
		});

		var checkedGender = document
				.querySelector("input[name='gender']:checked")
		console.log(checkedGender.value)
	</script>

</body>
</html>