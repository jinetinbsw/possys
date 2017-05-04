<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ���</title>
</head>
<body>
<h1>������ ���</h1>
<div>��ü ������ �� : ${foodcount}</div>
	<table border=1>
		<thead>
			<th>������ �ڵ�</th>
			<th>��ǰ��</th>
			<th>�԰�</th>
			<th>����</th>
			<th>�������</th>
			<th>�����</th>
			<th>�������</th>			
		</thead>
		<tbody>
			<c:forEach var="f" items="${list}">
			<tr>
				<td>${f.food_id}</td>
				<td>${f.food_name}</td>
				<td>${f.food_size}</td>
				<td>${f.food_unit}</td>
				<td>${f.food_shelflife}</td>
				<td>${f.staff_id}</td>
				<td>${f.food_date}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<ul>
		<c:if test="${currentPage > 1}">
			<li><a href="${pageContext.request.contextPath}/foodlist?currentPage=${currentPage-1}">����</a></li>
		</c:if>
		<c:if test="${currentPage < lastPage}">
			<li><a href="${pageContext.request.contextPath}/foodlist?currentPage=${currentPage+1}">����</a></li>
		</c:if>
	</ul>
	<div>
		<a href="${pageContext.request.contextPath}/food_add_form"><button>������ �߰�</button></a>
	</div>
</body>
</html>