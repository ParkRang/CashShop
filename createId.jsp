<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link href = "signin.css" rel = "stylesheet">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

<title>회원가입</title>
<style>
	.aqua{
		background-image : url(image/bubble2.jpg);
		background-size:cover;
		background-position : center center;
	}
</style>
</head>
<body>
<body class = "text-center">
<%@ include file = "header.jsp" %>
<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3 text-white"><br>회원가입 페이지<br><br></h1>
	</div>
</section>
	<div  align = "center"><br><br>
		<div class = "col-lg-3">
		<form class = "form-signin" method = "post" action = "createId_process.jsp">
			<p>아이디 : <input type = "text" name = "id" class = "form-control">
			<label for="id" class = "sr-only"></label>
			<p>비밀번호 : <input type = "password" name = "passwd" class = "form-control">
			<p>이름 : <input type = "text" name = "name" class = "form-control">
			<p>닉네임 : <input type = "text" name = "nick" class = "form-control">
			<p><button class = "btn btn-lg btn-primary btn-block" type = "submit">
			회원가입</button>
		</form>
		</div>
	<br><br></div>
<jsp:include page = "footer.jsp" />
<h6><a href = "dirLogin.jsp">관리자 로그인</a></h6>
</body>
</html>