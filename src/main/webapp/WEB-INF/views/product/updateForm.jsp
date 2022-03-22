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
	<p>
		${dto.pro_num} dto
		<br />
		${param.num }  param
	</p>
	<form action="update.do" method="post">
		<input type="hidden" id="pro_num" value="${dto.pro_num }" />
		<input type="hidden" name="pro_num" value="${dto.pro_num }" />
		<input type="hidden" id="pro_num" value="${tmp.dto.pro_num }" />		
		<div>
			<label for="name">메뉴명</label>
			<input type="text" id="name" value="${dto.pro_name }"/>
		</div>
		<div>
			<label for="price">가격</label>
			<input type="text" id="price" value="${dto.pro_price }"/>
		</div>
		<div>
			<label for="stock">재고</label>
			<input type="text" id="stock" value="${dto.remain_stock }"/>
		</div>
		<button>수정 완료</button>
		<button type="reset" onclick="location.href='${pageContext.request.contextPath}/product/updateList.do'" >취소</button>
	</form>
</div>
</body>
</html>