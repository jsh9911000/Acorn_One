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
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Foods And Drink</a>
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
            <li><a class="dropdown-item" href="#">로그인</a></li>
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
 <div class="row">
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">짜파게티</h5>
              <p class="card-text">3000</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">떡볶이</h5>
              <p class="card-text">3000</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">스팸마요덮밥</h5>
              <p class="card-text">3500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">참치마요덮밥</h5>
              <p class="card-text">3500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">치킨마요덮밥</h5>
              <p class="card-text">3500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">김치볶음밥</h5>
              <p class="card-text">4500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">제육덮밥</h5>
              <p class="card-text">4500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">오삼불고기덮밥</h5>
              <p class="card-text">5500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">치킨커리볶음밥</h5>
              <p class="card-text">4500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">우동</h5>
              <p class="card-text">3000</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">오므라이스</h5>
              <p class="card-text">4500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
        <div class="col-lg-2 card">
            <img src="image/n1.jpeg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">햄버거</h5>
              <p class="card-text">4500</p>
              <a href="#" class="btn btn-primary">선택</a>
            </div>
        </div>
    </div>
    <div class="row">
        <nav aria-label="Page navigation example" class="center">
            <ul class="pagination ">
              <li class="page-item"><a class="page-link" href="#">Previous</a></li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>
        <div class="col-lg-9" style="border: 1px solid lightgray;">
            <div class="row" style="border: 1px solid lightgray;"><strong>주문 리스트</strong></div>
            <div class="row" style="overflow: auto; height: 125px;">
              
            </div>
        </div>
        <div id="pay" class="col-lg-3">
        <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
        <label class="form-check-label" for="flexCheckDefault">
         현금
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
        <label class="form-check-label" for="flexCheckChecked">
          카드
          
        </label>
      </div>
        </div>
     </div>
</div>
</body>
</html>