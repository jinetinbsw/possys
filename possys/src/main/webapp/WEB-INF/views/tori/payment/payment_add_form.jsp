<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Payment_ADD</title>
</head>
<body>
<div class="container">
	<form class="form-inline" method="post" action="">
	<table class="table table-stripped table-hover">
		<tr>
		<td>������ȣ</td>
		<td><input class="form-control" size="auto" name="paymentId"></td>
		</tr>
		<tr>
		<td>���̺����ڵ�</td>
		<td><input class="form-control" size="auto" name="table_order_ID" type="text"></td>
		</tr>
		<tr>
		<td>��ȭ��ȣ</td>
		<td><input class="form-control" size="auto" name="memberPhone" type="text"></td>
		</tr>
		<tr>
		<td>�Ѿ�</td>
		<td><input class="form-control" size="auto" name="paymentTotal" type="text"></td>
		</tr>
		<tr>
		<td>�����ݾ�</td>
		<td><input class="form-control" size="auto" name="paymentPay" type="text"></td>
		</tr>
		<tr>
		<td>�������ϸ���</td>
		<td><input class="form-control" size="auto" name="paymentAddmileage" type="text"></td>
		</tr>
		<tr>
		<td>��븶�ϸ���</td>
		<td><input class="form-control" size="auto" name="paymentUsemileage" type="text"></td>
		</tr>
		<tr>
		<td>��¥</td>
		<td><input class="form-control" size="auto" name="paymentDate" type="date"></td>
		</tr>
		<tr>
		<td>����</td>
		<td><input class="form-control" size="auto" name="paymentCate" type="text"></td>
		</tr>
		<tr>
		<td>����</td>
		<td><input class="form-control" size="auto" name="paymentState" type="text"></td>
		</tr>
	</table>
	<input type="submit" name="paymentAdd" value="����">
	<input type="reset" name="paymentCancel" value="�ǵ���">
	</form>
</div>
</body>
</html>