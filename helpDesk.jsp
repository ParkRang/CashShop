<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<title>고객 센터</title>
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
		<h3 class = "display-3 text-white"><br>고객님께 최선의 서비스를 드리기 위해 노력하겠습니다.<br><br></h3>
	</div>
</section>
<hr>
	<div class = "container bg-primary text-white"><br><br><br><br>
	</div>
<jsp:include page = "footer.jsp" />
</body>
</html>