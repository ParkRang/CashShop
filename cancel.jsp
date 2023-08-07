<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>거래 불가</title>
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
		<h1 class = "display-3 text-white"><br>구매 페이지<br><br></h1>
	</div>
</section>
<hr>
	<div class = "container bg-primary text-white"><br><br>
			<div class ="row">
				<div class = "col-md-6">
					<p><h3><%="게임 내 재화 및 캐쉬가 부족합니다."%></h3>
					<p><a href = "main.jsp">메인으로 가기</a>
				</div>
			</div>
		<br><br></div>
<jsp:include page = "footer.jsp" />
</body>
</html>