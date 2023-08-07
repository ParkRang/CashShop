<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "dto.Item" %>
<%@ page import = "dao.ItemRepository" %>
<html>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<head>
<title>구매 완료</title>
<style>
	.aqua{
		background-image : url(image/bubble2.jpg);
		background-size:cover;
		background-position : center center;
	}
</style>

</head>
<body class = "text-center">
<%@ include file = "header.jsp"%>
<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3"><br>상품을 구매하였습니다!<br><br></h1>
	</div>
</section>
<jsp:include page = "footer.jsp" />
</body>
</html>