<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<head>
   <title>order</title>
</head>
     <style>
        .btn-xl {
            padding: 40px 40px;
            font-size: 20px;
            border-radius: 10px;
            width:50%;
        }
        .card{
            margin-top: 5px;
            margin-right: 5px;
        }
        .row{
        	margin-top: 10px;
        }
        p{
        	display: inline-block;
        }
     </style>
     
     <body>
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
       <div class="container-fluid">
       <svg xmlns="http://www.w3.org/2000/svg" width="50" height="40" fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
                     <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                     <path d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z"/>
                 </svg>
         <a class="navbar-brand" href="#">KIOSK</a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    마이페이지
                </a>
               <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                 <li><a class="dropdown-item" href="#">회원가입</a></li>
                 <li><a class="dropdown-item"href="/users/logout.jsp" href="#">로그아웃</a></li>
               </ul>
             </li>
              <li class="nav-item"> 
               <a class="nav-link active" aria-current="page" href="#">전체메뉴</a>
             </li>
            <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="#">식사</a>
             </li>
            <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="#">분식</a>
             </li>
             <li class="nav-item">
               <a class="nav-link active" aria-current="page" href="#">음료</a>
             </li>
           </ul>
         </div>
       </div>
     </nav>
    <div class="container">
      <div class="card-group">
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/zza.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="text" name="p_name" value="짜파게티1" readonly="readonly"><br>
						<input type="hidden" name="p_price" value="3000" readonly="readonly"><br>
						<p class="card-text">3,000원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 

				  
				  </div>
				</div>
             </div>
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/dduk.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">떡볶이</h5>
				    <p class="card-text">3,000원</p>
				    <a href="#" class="btn btn-primary">선택</a>
				  </div>
				</div>
             </div>
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/spam.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">스팸마요덮밥</h5>
				    <p class="card-text" >3,500원</p>
				    <a href="#" class="btn btn-primary">선택</a>
				  </div>
				</div>
             </div>
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/tuna.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">참치마요덮밥</h5>
				    <p class="card-text">3,500원</p>
				    <a href="#" class="btn btn-primary">선택</a>
				  </div>
				</div>
             </div>
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/chicken.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">치킨마요덮밥</h5>
				    <p class="card-text">3,500원</p>
				    <a href="#" class="btn btn-primary">선택</a>
				  </div>
				</div>
             </div>
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/kimchi.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">김치볶음밥</h5>
				    <p class="card-text">4,500원</p>
				    <a href="#" class="btn btn-primary">선택</a>
				  </div>
				</div>
             </div>
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/no6.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">제육덮밥</h5>
				    <p class="card-text">4,500원</p>
				    <a href="#" class="btn btn-primary">선택</a>
				  </div>
				</div>
             </div>
             <div class="col-lg-3">
                 <div class="card">
				  <img src="../food/five3.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				    <h5 class="card-title">오삼불고기덮밥</h5>
				    <p class="card-text">5,500원</p>
				    <a href="#" class="btn btn-primary">선택</a>
				  </div>
				</div>
             </div>
         </div>
         <div class="row">
             <div class="col-lg-8">
                 <h3 class="h3 mb-3 fw-normal"><strong>주문 리스트</strong></h3>
                 <div class="row" style="overflow: auto; height: 125px;">
                
					<table>
						<thead>
							<tr>
							
								<th>음식</th>
								<th>가격</th>
								<th>삭제</th>
							
				
							</tr>
						</thead>
						<tbody>
						<c:forEach var="tmp" items="${list }">
							<tr>
								
								<td>${tmp.p_name }</td>
								<td>${tmp.p_price }</td>
								<td>
									<form action="delete.do">
										
										<input type="hidden" name="b_num" value="${tmp.b_num }" readonly="readonly"><br>
										
										<input type="submit" value="삭제">
									</form> 
								</td>
								
							</tr>
						</c:forEach>
						</tbody>
					</table>
                 </div>
            </div>
            <div align="right" class="col-lg-4">
	            <div class="custom-control custom-radio">
				  <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked>
				  <label class="custom-control-label" for="customRadio1">현금</label>
				</div>
				<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio2">카드</label>
				</div>
	          	<button type="button" class="btn btn-primary btn-xl" onclick="javascript:payConfirm()">결제</button>       
           </div>
         </div>
        </div>
        <script>
			function payConfirm(){
				const isDelete=confirm("결제 하시겠습니까?");
				if(isDelete){
					location.href="${pageContext.request.contextPath}/product/pay.do";
				}
			}
</script> 
     </body>
     </html>