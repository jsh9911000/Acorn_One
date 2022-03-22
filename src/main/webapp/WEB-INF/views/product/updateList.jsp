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
               <h2 class="fw-bold mb-0">메뉴 리스트</h2>
               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" 
             onclick="location.href='${pageContext.request.contextPath}/home.do'"></button>
        </div>
        <div class="modal-body p-5 pt-0">
           <div class="row" style="overflow: auto; height: 800px;">
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
                                <td><a href="updateForm.do?num=${tmp.pro_num }">수정</a></td>
                                <td><a href="javascript:deleteConfirm(${tmp.pro_num })">삭제</a></td>                
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
    function deleteConfirm(pro_num){
        const isDelete=confirm("정말로 삭제하시겠습니까?");
        if(isDelete){
            location.href="pro_delete.do?num="+pro_num;    
        }
    }
</script>
</body>
</html>