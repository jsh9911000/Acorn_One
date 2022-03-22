<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>/views/users/info.jsp</title>
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
        body {
        	background-color: rgba(0,0,0,0.85);
	        padding-top: 200px;
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
    			<h2 class="fw-bold mb-0">가입 정보 입니다.</h2>
    			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" 
              onclick="location.href='${pageContext.request.contextPath}/home.do'"></button>
			</div>
			<div class="modal-body p-5 pt-0">
			<table class="table table-hover">
		      <tr>
		         <th>아이디</th>
		         <td>${id }</td>
		      </tr>
		      <tr>
		         <th>비밀번호</th>
		         <td><button type="button" class="btn btn-outline-warning" onclick="location.href='${pageContext.request.contextPath}/users/pwd_updateform.do'">수정하기</button></td>
		      </tr>
		       <tr>
		         <th>가입일</th>
		         <td>${dto.regdate }</td>
		      </tr>
		      <tr>
		         <th>이름</th>
		         <td>${dto.name }</td>
		      </tr>
		      <tr>
		         <th>성별</th>
		         <td>${dto.gender }</td>
		      </tr>
			  </table>
			<button class="block btn btn-lg rounded-4 btn-danger" type="button" onclick="javascript:deleteConfirm()">탈퇴하기</button>
			</div>
		</div>
	</div>
<script>
   function deleteConfirm(){
      const isDelete=confirm("${id} 님 탈퇴 하시겠습니까?");
      if(isDelete){
         location.href="${pageContext.request.contextPath}/users/private/delete.do";
      }
   }
</script>   
</body>
</html>