<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ǰ�����</title>
</head>
<body>
<h1>������ �Է���</h1>
	<form id="addform" action="${pageContext.request.contextPath}/food_add_form" method="post">
		
		<div>��ǰ�� : <input name ="food_name" id ="food_name" type ="text"/></div>
		<div>�԰� : <input name ="food_size" id ="food_size" type ="text"/></div>
		<div>���� : <input name ="food_unit" id ="food_unit" type ="text"/></div>
		<div>������� : <input name ="food_shelflife" id ="food_shelflife" type ="text"/></div>
		<div>����� : <input name ="staff_id" id ="staff_id" type ="text"/></div>
		
		

<br>
		<div>
			<input type="submit" id="addfood" value="���">
			<input type="reset" id="reset" value="�ʱ�ȭ">
			<a href="#">���</a>
		</div>
	</form>
</body>
</html>