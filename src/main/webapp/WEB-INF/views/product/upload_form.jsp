<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	   	<h1>이미지 업로드 폼</h1>
	   	<form action="${pageContext.request.contextPath}/product/upload.do" method="post" enctype="multipart/form-data">
	      	<div>
	         	<label for="pro_name">상품명</label>
	         	<input type="text" name="pro_name" id="pro_name"/>
	      	</div>
	      	<div>
	         	<label for="pro_price">상품가격</label>
	         	<input type="text" name="pro_price" id="pro_price"/>
	      	</div>
	      	<div>
	         	<label for="remain_stock">상품재고</label>
	         	<input type="text" name="remain_stock" id="remain_stock"/>
	      	</div>
	      	<div>
	         	<label for="image">이미지</label>
	         	<input type="file" name="image" id="image"
	            	accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
	      	</div>
	      	<button type="submit">업로드</button>
	   	</form>
	</div>
</body>
</html>