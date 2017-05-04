<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>start</title>
</head>
<body>
<div class="container">
<center>
<a href="${pageContext.request.contextPath}/payment/payment_form">
	
		<button class="btn btn-info btn-lg">결제업무</button>
		</a>
<a href="${pageContext.request.contextPath}/staff/staff_insert_form">
		<button class="btn btn-info btn-lg">직원업무</button>
</a>	
</center>
</div>

</body>
</html>