<%@ page language="java" contentType="text/html; charset=utf-8"%>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<html>
<head>
<title>Game Shop</title>
<style>
	.aqua{
		background-image : url(image/bubble2.jpg);
		background-size:cover;
		background-position : center center;
	}
</style>
</head>
<body>
<%@ include file = "header.jsp" %>
<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3 text-white"><br>게임 웹 상점<br><br></h1>
	</div>
</section>
<hr>
	<div class = "container bg-primary text-white"><br><br>
	<div class = "col-md-6" align = "center">
		<h3>환영합니다.</h3>
	</div>
	<div class ="col-md-6" align = "center">
		<p><h5>최근 소식</h5>
		<p><h5>팁 게시판</h5>
		<p><h5>유저 콘텐츠</h5>
		<p><h5>업데이트 내역</h5>
	</div>
	<%
	String user_nick = (String)session.getAttribute("sessionNick");
	String user_id = (String)session.getAttribute("sessionId");
	%>
<br><br></div>
	
<jsp:include page = "footer.jsp" />
</body>
</html>