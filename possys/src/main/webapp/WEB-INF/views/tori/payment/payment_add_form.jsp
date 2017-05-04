<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Payment_ADD</title>

<script>
$(document).ready(function(){
	$('#paymentAdd').click(function(){
		if($('#paymentId').val.length<4){
			alert('���̵� 4���� �̻� �Է��Ͻÿ�.');
      $('#paymentId').focus();
		}else if($('#table_order_ID').val().length<4){
			alert('���̺��ֹ���ȣ�� 4�ڸ� �̻� �Է��Ͻÿ�.');
      $('#table_order_ID').focus();
		}else if($('#memberPhone').val()==''){
			alert('���� �ڵ�����ȣ�� �Է����ּ���.');
      $('#memberPhone').focus();
		}else if($('#paymentTotal').val()==''){
			alert('�ֹ��Ѿ��� �Է����ּ���.');
      $('#paymentTotal').focus();
		}else if($('#paymentPay').val()==''){
			alert('�ֹ��ݾ��� �Է����ּ���.');
      $('#paymentPay').focus();
		}else if($('#paymentAddmileage').val()==''){
			alert('�߰��ȸ��ϸ����� �Է����ּ���.');
      $('#paymentAddmileage').focus();
		}else if($('#paymentUsemileage').val()==''){
			alert('����Ѹ��ϸ����� ������ �Է����ּ���.');
      $('#paymentUsemileage').focus();
		}else if($('#paymentDate').val()==''){
			alert('�ŷ���¥�� �������� �Է����ּ���.');
      $('#paymentDate').focus();
		}else if($('#paymentCate').val()!="����"|"ī��"){
			alert('�ŷ������� �������� �Է����ּ���.');
      $('#paymentCate').focus();
		}else if($('#paymentState').val()==''){
			alert('�ŷ����´� ����� �Է����ּ���.');
      $('#paymentState').focus();
		}else {
			$('#paymentAdd').submit();
		}
	});
});

</script>
</head>
<body>
<div class="container">
	<form class="form-inline" method="post" action="Payment_list.jsp">
	<table class="table table-stripped table-hover">
		<tr>
		<td>������ȣ</td>
		<td><input class="form-control" size="auto" id="paymentId" name="paymentId"></td>
		</tr>
		<tr>
		<td>���̺����ڵ�</td>
		<td><input class="form-control" size="auto" id="table_order_ID" name="table_order_ID" type="text"></td>
		</tr>
		<tr>
		<td>��ȭ��ȣ</td>
		<td><input class="form-control" size="auto" id="memberPhone" name="memberPhone" type="text"></td>
		</tr>
		<tr>
		<td>�Ѿ�</td>
		<td><input class="form-control" size="auto" id="paymentTotal" name="paymentTotal" type="text"></td>
		</tr>
		<tr>
		<td>�����ݾ�</td>
		<td><input class="form-control" size="auto" id="paymentPay" name="paymentPay" type="text"></td>
		</tr>
		<tr>
		<td>�������ϸ���</td>
		<td><input class="form-control" size="auto" id="paymentAddmileage" name="paymentAddmileage" type="text"></td>
		</tr>
		<tr>
		<td>��븶�ϸ���</td>
		<td><input class="form-control" size="auto" id="paymentUsemileage" name="paymentUsemileage" type="text"></td>
		</tr>
		<tr>
		<td>��¥</td>
		<td><input class="form-control" size="auto" id="paymentDate" name="paymentDate" type="date"></td>
		</tr>
		<tr>
		<td>����</td>
		<td><input class="form-control" size="auto" id="paymentCate" name="paymentCate" type="text"></td>
		</tr>
		<tr>
		<td>����</td>
		<td><input class="form-control" size="auto" id="paymentState" name="paymentState" type="text"></td>
		</tr>
	</table>
	<input type="submit" id="paymentAdd" name="paymentAdd" value="����">
	<input type="reset" id="paymentCancel" name="paymentCancel" value="�ǵ���">
	</form>
</div>
</body>
</html>
