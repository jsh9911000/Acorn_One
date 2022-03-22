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
	<h1>메뉴 업데이트</h1>
	<table>
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
					<td><a href="javascript:deleteConfirm(${tmp.pro_num },'${tmp.pro_name }')">삭제</a></td>	
							
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="location.href='${pageContext.request.contextPath}/home.do'">홈으로 가기</button>
</div>
<script>
	function deleteConfirm(pro_num,pro_name){
		const isDelete=confirm("정말로 삭제하시겠습니까?");
		if(isDelete){
			
			
			location.href="pro_delete.do?num="+pro_num +"&pro_name="+pro_name;
			
			
		}
	}	
	

</script>
</body>
</html>