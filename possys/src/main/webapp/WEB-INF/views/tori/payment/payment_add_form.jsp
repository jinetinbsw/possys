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
			alert('아이디를 4글자 이상 입력하시오.');
      $('#paymentId').focus();
		}else if($('#table_order_ID').val().length<4){
			alert('테이블주문번호를 4자리 이상 입력하시오.');
      $('#table_order_ID').focus();
		}else if($('#memberPhone').val()==''){
			alert('고객의 핸드폰번호를 입력해주세요.');
      $('#memberPhone').focus();
		}else if($('#paymentTotal').val()==''){
			alert('주문총액을 입력해주세요.');
      $('#paymentTotal').focus();
		}else if($('#paymentPay').val()==''){
			alert('주문금액을 입력해주세요.');
      $('#paymentPay').focus();
		}else if($('#paymentAddmileage').val()==''){
			alert('추가된마일리지를 입력해주세요.');
      $('#paymentAddmileage').focus();
		}else if($('#paymentUsemileage').val()==''){
			alert('사용한마일리지는 얼마인지 입력해주세요.');
      $('#paymentUsemileage').focus();
		}else if($('#paymentDate').val()==''){
			alert('거래날짜는 언제인지 입력해주세요.');
      $('#paymentDate').focus();
		}else if($('#paymentCate').val()!="현금"|"카드"){
			alert('거래구분은 무엇인지 입력해주세요.');
      $('#paymentCate').focus();
		}else if($('#paymentState').val()==''){
			alert('거래상태는 어떠한지 입력해주세요.');
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
		<td>결제번호</td>
		<td><input class="form-control" size="auto" id="paymentId" name="paymentId"></td>
		</tr>
		<tr>
		<td>테이블사용코드</td>
		<td><input class="form-control" size="auto" id="table_order_ID" name="table_order_ID" type="text"></td>
		</tr>
		<tr>
		<td>전화번호</td>
		<td><input class="form-control" size="auto" id="memberPhone" name="memberPhone" type="text"></td>
		</tr>
		<tr>
		<td>총액</td>
		<td><input class="form-control" size="auto" id="paymentTotal" name="paymentTotal" type="text"></td>
		</tr>
		<tr>
		<td>결제금액</td>
		<td><input class="form-control" size="auto" id="paymentPay" name="paymentPay" type="text"></td>
		</tr>
		<tr>
		<td>적립마일리지</td>
		<td><input class="form-control" size="auto" id="paymentAddmileage" name="paymentAddmileage" type="text"></td>
		</tr>
		<tr>
		<td>사용마일리지</td>
		<td><input class="form-control" size="auto" id="paymentUsemileage" name="paymentUsemileage" type="text"></td>
		</tr>
		<tr>
		<td>날짜</td>
		<td><input class="form-control" size="auto" id="paymentDate" name="paymentDate" type="date"></td>
		</tr>
		<tr>
		<td>구분</td>
		<td><input class="form-control" size="auto" id="paymentCate" name="paymentCate" type="text"></td>
		</tr>
		<tr>
		<td>상태</td>
		<td><input class="form-control" size="auto" id="paymentState" name="paymentState" type="text"></td>
		</tr>
	</table>
	<input type="submit" id="paymentAdd" name="paymentAdd" value="제출">
	<input type="reset" id="paymentCancel" name="paymentCancel" value="되돌림">
	</form>
</div>
</body>
</html>
