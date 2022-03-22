<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>선택된 제품 수정 페이지</h1>
	<form action="update.do" method="post">
		<input type="hidden" name="pro_num" value="${param.num }" />
		<div>
			<label for="pro_name">메뉴명</label>
			<input type="text" id="pro_name" name="pro_name" value="${dto.pro_name }"/>
		</div>
		<div>
			<label for="pro_price">가격</label>
			<input type="text" id="pro_price" name="pro_price" value="${dto.pro_price }"/>
		</div>
		<div>
			<label for="remain_stock">재고</label>
			<input type="text" id="remain_stock" name="remain_stock" value="${dto.remain_stock }"/>
		</div>
		<button>수정 완료</button>
		<button type="reset" onclick="location.href='${pageContext.request.contextPath}/product/updateList.do'" >취소</button>
	</form>
</div>
</body>
</html>