<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
           padding-top: 0px;
           padding-bottom: 0px;
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
            <h2 class="fw-bold mb-0">메뉴 리스트</h2>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" 
             onclick="location.href='${pageContext.request.contextPath}/home.do'"></button>
      </div>
      <div class="modal-body p-4 pt-0">
           <div class="row" style="overflow: auto; height: 750px;">
            <table class="table table-hover">
               <thead>
                  <tr>
                     <th>번호</th>
                     <th>메뉴명</th>
                     <th>가격</th>
                     <th>재고</th>
                     <th>수정</th>
                     <th>삭제</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach var="tmp" items="${list }">
                     <tr>
                        <td>${tmp.pro_num }</td>
                        <td>${tmp.pro_name }</td>
                        <td>${tmp.pro_price }</td>
                        <td>${tmp.remain_stock }</td>
                        <td>
                        <a href="updateForm.do?num=${tmp.pro_num }"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                     </svg>
                     </a>
                  </td>
                  <td><a href="javascript:deleteConfirm(${tmp.pro_num },'${tmp.pro_name }')"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                     <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                     </svg>
                     </a>
                  </td>            
                     </tr>
                  </c:forEach>
               </tbody>
            </table>
         </div>
      </div>
   </div>
</div>
<script>
   function deleteConfirm(pro_num,pro_name){
      const isDelete=confirm("정말로 삭제하시겠습니까?");
      if(isDelete){
         location.href="pro_delete.do?num="+pro_num+"&pro_name="+pro_name;   
      }
   }
</script>
</body>
</html>