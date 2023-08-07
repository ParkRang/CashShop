<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "dto.Item" %>
<%@ page import = "dao.ItemRepository" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<title>구매 페이지</title>
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
		<h1 class = "display-3 text-white"><br>구매하려는 상품의 정보를 확인하세요<br><br></h1>
	</div>
</section>
	<%
		String id = request.getParameter("id");
		ItemRepository dao = ItemRepository.getInstance();
		Item item = dao.getItemById(id);
		
		Cookie[] cookies = request.getCookies();
		for(int i =0; i<cookies.length; i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}

	%>
<hr>
	<div class = "container">
		<div class ="row">
			<div class = "col-md-6">
			<br><br>
				<h3><%=item.getiName() %></h3>
				<p><%=item.getDescription() %>
				<p><b>분류</b> : <%=item.getCategory() %>
				<p><%=item.getDay() %>까지 구매가능!!!
				<p><a href="./processItem.jsp?id=<%=item.getItemId() %>" class = "btn btn-info">구매 &raquo;</a>
				<a href = "./items.jsp" class = "btn btn-secondary">아이템 목록 &raquo;</a>
			</div>
			<div class = "col-md-5">
			<img src = "./image/<%=item.getFilename() %>" style="width: 100%">
			</div>
		</div>
	</div>
	
<jsp:include page = "footer.jsp" />
</body>
</html>