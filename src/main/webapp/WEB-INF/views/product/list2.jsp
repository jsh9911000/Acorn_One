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
     <div class="row">
         <div class="col-lg-8">
             <h3 class="h3 mb-3 fw-normal"><strong>주문 리스트</strong></h3>
             <div class="row" style="overflow: auto; height: 800px;">
               
				<table>
					<thead>
						<tr>
							<th>주문자</th>
							<th>음식</th>
							<th>가격</th>
							<th>삭제</th>
						
			
						</tr>
					</thead>
					<tbody>
					
					<c:set var="total" value="0"/>
			
					<c:forEach var="tmp" items="${list2 }">
						
						<tr>
							<td>${tmp.u_name }</td>
							<td>${tmp.p_name }</td>
							<td>${tmp.p_price }</td>
						
							
							<td>
								<form action="delete2.do">
									
									<input type="hidden" name="b_num" value="${tmp.b_num }" readonly="readonly"><br>
									
									<input type="submit" value="삭제">
								</form> 
							</td>
							
						</tr>
						<c:set var="total" value="${total +tmp.p_price}"/>
					</c:forEach>
					<tr>
						<td><c:out value="총금액 : ${total }원"/></td>
					</tr>				
	
					</tbody>
	
				</table>
                </div>
           </div>
           <div align="right" class="col-lg-4">

	         	<button type="button" class="btn btn-primary btn-xl" onclick="javascript:clearConfirm()">삭제</button>       
          </div>
        </div>
       </div>
       <script>
		function clearConfirm(){
			const isDelete=confirm("삭제 하시겠습니까?");
			if(isDelete){
				location.href="${pageContext.request.contextPath}/product/clear.do";
				
			}
		}
		</script>    
</body>
</html>