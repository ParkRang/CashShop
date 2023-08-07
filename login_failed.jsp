<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>로그인 오류</title>
</head>
<script type="text/javascript">
	function back(){
		alert("아이디, 비밀번호를 확인해 주세요");
		return;	
	}	
</script>
<body>
<%@ include file = "header.jsp" %>
	back();
	<jsp:forward page = "login.jsp" />
<jsp:include page = "footer.jsp" />
</body>
</html>