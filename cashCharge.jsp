<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<html>
<head>
<title>캐쉬 충전</title>
<style>
	.aqua{
		background-image : url(image/bubble2.jpg);
		background-size:cover;
		background-position : center center;
	}
</style>
</head>
<script type="text/javascript">
	function check(){
		var regExpInt = /^[0-9]*$/;
		var form = document.charge;
		
		var code1 = form.code1.value;
		var code2 = form.code2.value;
		var code3 = form.code3.value;
		var code4 = form.code4.value;
		
		if(!regExpInt.test(code1)){
			alert("숫자만 입력할 수 있습니다!");
			return;
		}
		if(!regExpInt.test(code2)){
			alert("숫자만 입력할 수 있습니다!");
			return;
		}
		if(!regExpInt.test(code3)){
			alert("숫자만 입력할 수 있습니다!");
			return;
		}
		if(!regExpInt.test(code4)){
			alert("숫자만 입력할 수 있습니다!");
			return;
		}
		form.submit();
	}
</script>
<body class = "text-center">
<%@ include file = "header.jsp" %>
	<%@ include file = "dbconn.jsp" %>
	<section class = "aqua">
		<div class = "container">
			<h1 class = "display-3 text-white"><br>캐쉬 충전<br><br></h1>
		</div>
	</section> 
	<hr>
<div class = "container bg-primary text-white" align = "center"><br><br>
	<div class = "col-md-10">
		<h3>상품권 번호를 등록하세요</h3>
		<form action = "processCashCharge.jsp" name = "charge" method = "post">
			<!--<p>아이디 : <input type = "text" name = "id">-->
			<p><input type = "text" name = "code1" size = "4" maxlength = "4">-
			<input type = "text" name = "code2" size = "4" maxlength = "4">-
			<input type = "text" name = "code3" size = "4" maxlength = "4">-
			<input type = "text" name = "code4" size = "6" maxlength = "6">
			<p><input type = "submit" value = "등록" onclick = "check()">
		</form>
	</div>
<br><br></div>
<jsp:include page = "footer.jsp" />
</body>
</html>