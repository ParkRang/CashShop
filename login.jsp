<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href = "signin.css" rel = "stylesheet">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
<title>Login</title>
<style>
	.aqua{
		background-image : url(image/bubble2.jpg);
		background-size:cover;
		background-position : center center;
	}
</style>
</head>

<body class = "text-center">
<%@ include file = "header.jsp" %>
<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3 text-white"><br>게임을 찾아주셔서 감사합니다.<br><br></h1>
	</div>
</section>
	<div  align = "center"><br><br>
	<div class = "col-lg-3">
		<form class = "form-signin" name = "loginForm" action="login_process.jsp" method="post">
			<input type = "text" name = "id" class = "form-control" >
			<label for="id" class = "sr-only"></label>
			<input type = "password" name = "password" class = "form-control"><br>
			<button class = "btn btn-lg btn-primary btn-block" type = "submit">
			로그인</button>
		</form>
		<a href = "createId.jsp">회원가입</a>
	</div>
	<br><br></div>
<jsp:include page = "footer.jsp" />
	<h6><a href = "dirLogin.jsp">관리자 로그인</a></h6>
</body>
</html>