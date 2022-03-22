<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
           <!-- <h5 class="modal-title">Modal title</h5> -->
           <h2 class="fw-bold mb-0">상품 등록</h2>
           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" 
           onclick="location.href='${pageContext.request.contextPath}/home.do'"></button>
         </div>
      	<div class="modal-body p-5 pt-0">
	   	<form action="${pageContext.request.contextPath}/product/upload.do" method="post" enctype="multipart/form-data">
	      	<div class="form-floating mb-3">
	         	<input type="text" class="form-control rounded-4" name="pro_name" id="pro_name" placeholder="상품명"/>
	         	<label class="control-label" for="pro_name">상품명</label>
	      	</div>
	      	<div class="form-floating mb-3">
	         	<input type="text"  class="form-control rounded-4" name="pro_price" id="pro_price" placeholder="상품가격"/>
	         	<label class="control-label" for="pro_price">상품가격</label>
	      	</div>
	      	<div class="form-floating mb-3">
	         	<input type="text" class="form-control rounded-4" name="remain_stock" id="remain_stock" placeholder="상품재고"/>
	         	<label class="control-label" for="remain_stock">상품재고</label>
	      	</div>
	      	<div class="form-floating mb-3">
	         	<input type="text" class="form-control rounded-4" name="pro_cate" id="pro_cate" placeholder="상품코드"/>
	         	<label class="control-label" for="pro_cate">상품코드</label>
	         	<small class="text-muted">분식 : 1,식사 : 2, 음료 : 3</small>
	      	</div>
	      	<div>
	      		<label class="control-label" for="image">이미지</label>
	         	<input type="file" class="form-control rounded-4" name="image" id="image"
	            	accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
	            
	            <small class="text-muted">.PNG, .JPG, .JPEG 만 가능</small>
	      	</div>
	      	<button class="block btn btn-lg btn-warning" type="submit">등록하기</button>
	   	</form>
		</div>
	</div>
</div>
</body>
</html>