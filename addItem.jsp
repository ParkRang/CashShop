<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<title>아이템 목록 추가</title>
<style>
	.aqua{
		background-image : url(image/bubble2.jpg);
		background-size:cover;
		background-position : center center;
	}
</style>
</head>
<body>
<fmt:setLocale value = '<%=request.getParameter("language") %>'/>
<fmt:bundle basename = "bundle.message">
<%@ include file = "header.jsp" %>
	<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3 text-white"><br><fmt:message key = "title"/><br><br></h1>
	</div>
</section>
<hr>
	<div class = "container bg-warning"><br><br>
	<div class = "text-right">
		<a href = "?language=ko" >Korean</a>|<a href="?language=en" >English</a>
	</div>
		<form name = "newItem" action = "./processAddItem.jsp" class = "form-horizontal" method = "post"
		enctype = "multipart/form-data">
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "itemId" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "itemId" class = "form-control">
				</div>			
			</div>
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "iName" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "iName" class = "form-control">
				</div>			
			</div>
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "price" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "price" class = "form-control">
				</div>			
			</div>
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "diaPrice" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "diaPrice" class = "form-control">
				</div>			
			</div>
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "description" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "description" class = "form-control">
				</div>			
			</div>
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "category" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "category" class = "form-control">
				</div>			
			</div>
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "day" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "day" class = "form-control">
				</div>			
			</div>
			<div class ="form-group row">
				<label class = "col-md-2"><fmt:message key = "amount" /></label>
				<div class = "col-sm-3">
					<input type = "text" name = "amount" class = "form-control">
				</div>			
			</div>
			<div class = "form-group row">
				<label class = "col-sm-2"><fmt:message key = "image" /></label>
				<div class = "col-sm-5">
					<input type = "file" name = "itemImage" class = "form-control">
				</div>
			</div>
		</form>
	<br><br></div>
	</fmt:bundle>
<jsp:include page = "footer.jsp" />
</body>
</html>