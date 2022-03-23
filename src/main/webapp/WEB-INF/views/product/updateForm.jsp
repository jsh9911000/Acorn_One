<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body>

	<div class="modal-dialog" role="document">
		<div class="modal-content rounded-5 shadow">
			<div class="modal-header p-5 pb-4 border-bottom-0">
				<h2 class="fw-bold mb-0">상품 수정</h2>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"
					onclick="location.href='${pageContext.request.contextPath}/product/updateList.do'"></button>
			</div>
			<div class="modal-body p-5 pt-0">
				<form action="update.do" method="post">
					<div class="form-floating mb-3">
						<input type="text" class="form-control rounded-4" name="pro_num"
							id="pro_num" value="${dto.pro_num }" readonly /> <label
							class="control-label" for="pro_num">메뉴번호</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control rounded-4" name="pro_name"
							id="pro_name" value="${dto.pro_name }" readonly /> <label
							class="control-label" for="pro_name">메뉴명</label>
					</div>
					<div class="form-floating mb-3">

						<input type="text" class="form-control rounded-4" name="pro_price"
							id="pro_price" value="${dto.pro_price }" /> <label
							class="control-label" for="pro_price">가격</label>
					</div>
					<div class="form-floating mb-3">

						<input type="text" class="form-control rounded-4"
							name="remain_stock" id="remain_stock"
							value="${dto.remain_stock }" /> <label class="control-label"
							for="remain_stock">재고</label>
					</div>
					<button class="block btn btn-lg btn-warning">수정 완료</button>
					<button type="reset" class="block btn btn-lg btn-danger"
						onclick="location.href='${pageContext.request.contextPath}/product/updateList.do'">취소</button>
				</form>
			</div>
		</div>

	</div>
</body>
</html>