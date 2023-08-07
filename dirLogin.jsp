<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href = "signin.css" rel = "stylesheet">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
<title>Login</title>
</head>

<body class = "text-center">
<%@ include file = "header.jsp" %>
	<div class = "jumbotron bg-info">
		<div class = "container">
			<br><h1 class = "text-center">게임을 찾아주셔서 감사합니다.
		</div>	
	</div>
	<div  align = "center">
	<div class = "col-lg-3">
		<form class = "form-signin" name = "loginForm" action="j_security_check" method="post">
			<input type = "text" name = "j_username" class = "form-control" >
			<label for="id" class = "sr-only"></label>
			<input type = "password" name = "j_password" class = "form-control"><br>
			<button class = "btn btn-lg btn-primary btn-block" type = "submit">
			로그인</button>
		</form>

	</div>
	</div>
<jsp:include page = "footer.jsp" />
</body>
</html>