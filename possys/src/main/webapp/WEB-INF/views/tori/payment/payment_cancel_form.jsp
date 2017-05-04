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
<title>Payment_CANCEL</title>
<script>
$(document).ready(function(){
	$('#paymentCancelAdd').click(function(){
		if($('#paymentCancelId').val.length<4){
			alert('���̵� 4���� �̻� �Է��Ͻÿ�.');
      $('#paymentCancelId').focus();
		}else if($('#paymentId').val().length<4){
			alert('�������̵� 4�ڸ� �̻� �Է��Ͻÿ�.');
      $('#paymentId').focus();
		}else if($('#tableOrderId').val()==''){
			alert('���̺��ֹ��ڵ带 �Է����ּ���.');
      $('#tableOrderId').focus();
		}else if($('#memberPhone').val()==''){
			alert('��ȭ��ȣ�� �Է����ּ���.');
      $('#memberPhone').focus();
		}else if($('#paymentCancelTotal').val()==''){
			alert('�ֹ���ұݾ��� �Է����ּ���.');
      $('#paymentCancelTotal').focus();
		}else if($('#paymentCancelPay').val()==''){
			alert('�����ݾ��� �Է����ּ���.');
      $('#paymentCancelPay').focus();
		}else if($('#paymentCancelBackMileage').val()==''){
			alert('ȸ���� ���ϸ����� ������ �Է����ּ���.');
      $('#paymentCancelBackMileage').focus();
		}else if($('#paymentCancelReturnMileage').val()==''){
			alert('ȯ���� ���ϸ����� ������ �Է����ּ���.');
      $('#paymentCancelReturnMileage').focus();
		}else if($('#paymentCancelDate').val()!="����"|"ī��"){
			alert('�ŷ���ҳ�¥�� �������� �Է����ּ���.');
      $('#paymentCancelDate').focus();
		}else if($('#paymentCancelCate').val()==''){
			alert('�ŷ���ұ����� ����� �Է����ּ���.');
      $('#paymentCancelCate').focus();
		}else {
			$('#paymentCancelAdd').submit();
		}
	});
});
</script>
</head>
<body>
	<div class="container">
		<form action="" method="post" class="form-inline">
			<table class="table table-hover table-stripped">
				<tr>
					<td>��������ڵ� :
					</td>
					<td><input type="text" class="form-control" name="paymentCancelId" id="paymentCancelId" size="auto">
					</td>
				</tr>
				<tr>
					<td>������ȣ : 
					</td>
					<td><input type="text" class="form-control" name="paymentId" id="paymentId" size="auto">
					</td>
				</tr>
				<tr>
					<td>���̺����ڵ� : 
					</td>
					<td><input type="text" class="form-control" name="tableOrderId" id="tableOrderId" size="auto">
					</td>
				</tr>
				<tr>
					<td>��ȭ��ȣ : 
					</td>
					<td><input type="text" class="form-control" name="memberPhone" id="memberPhone" size="auto">
					</td>
				</tr>
				<tr>
					<td>�Ѿ� : 
					</td>
					<td><input type="text" class="form-control" name="paymentCancelTotal" id="paymentCancelTotal" size="auto">
					</td>
				</tr>
				<tr>
					<td>�����ݾ� :
					</td>
					<td><input type="text" class="form-control" name="paymentCancelPay" id="paymentCancelPay" size="auto">
					</td>
				</tr>
				<tr>
					<td>ȸ�����ϸ��� : 
					</td>
					<td><input type="text" class="form-control" name="paymentCancelBackMileage" id="paymentCancelBackMileage" size="auto">
					</td>
				</tr>
				<tr>
					<td>ȯ�Ҹ��ϸ��� : 
					</td>
					<td><input type="text" class="form-control" name="paymentCancelReturnMileage" id="paymentCancelReturnMileage" size="auto">
					</td>
				</tr>
				<tr>
					<td>��¥ : 
					</td>
					<td><input type="date" class="form-control" name="paymentCancelDate" id="paymentCancelDate" size="auto">
					</td>
				</tr>
				<tr>
					<td>���� : 
					</td>
					<td><input type="text" class="form-control" name="paymentCancelCate" id="paymentCancelCate" size="auto">
					</td>
				</tr>
				</table>
		<input type="submit" id="paymentCancelAdd" name="paymentCancelAdd" value="����">
		<input type="reset" id="paymentCancel" name="paymentCancel" value="�ǵ���">
		</form>
	
	
	
	</div>
</body>
</html>