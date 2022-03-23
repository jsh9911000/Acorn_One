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
	padding-top: 40px;
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
				<h2 class="fw-bold mb-0">주문 리스트</h2>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"
					onclick="location.href='${pageContext.request.contextPath}/home.do'"></button>
			</div>
			<div class="modal-body p-5 pt-0">
				<div class="row" style="overflow: auto; height: 800px;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>주문자</th>
								<th>성별</th>
								<th>음식</th>
								<th>가격</th>
								<th>삭제</th>


							</tr>
						</thead>
						<tbody>

							<c:set var="total" value="0" />

							<c:forEach var="tmp" items="${list2 }">

								<tr>
									<td>${tmp.u_name }</td>
									<td>${tmp.gender }</td>
									<td>${tmp.p_name }</td>
									<td>${tmp.p_price }</td>



									<td>
										<form action="delete2.do">

											<input type="hidden" name="b_num" value="${tmp.b_num }"
												readonly="readonly"> <input type="submit" value="삭제">
										</form>
									</td>

								</tr>
								<c:set var="total" value="${total +tmp.p_price}" />

							</c:forEach>

						</tbody>

					</table>
				</div>

				<h3>
					<c:out value="총금액 : ${total }원" />
				</h3>
				<button type="button" class="btn btn-danger"
					onclick="javascript:clearConfirm()">전체 삭제</button>
				<button type="button" class="btn btn-warning"
					onclick="location.href='${pageContext.request.contextPath}/product/upload_form.do'">상품
					등록</button>
			</div>
		</div>
	</div>
	<script>
		function clearConfirm() {
			const isDelete = confirm("삭제 하시겠습니까?");
			if (isDelete) {
				location.href = "${pageContext.request.contextPath}/product/clear.do";

			}
		}
	</script>
</body>
</html>