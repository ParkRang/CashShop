<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import = "dto.Item" %>
<%@ page import = "dao.ItemRepository" %>
<html>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<head>
<title>아이템</title>
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
		<h1 class = "display-3 text-white"><br>아이템 목록<br><br></h1>
	</div>
</section>
<%
	ItemRepository dao = ItemRepository.getInstance();
	ArrayList<Item> listOfItems = dao.getAllItems();
%>
<hr>
<div class = "container"><br><br>
	<div class = "row" align = "center">
		<%
			for(int i = 0; i <listOfItems.size(); i++){
				Item item = listOfItems.get(i);
		%>
	<div class = "card-header-tab col-xl-4">
		<div class = "card-body card mb-3 bg-warning">
			<h3><%=item.getiName() %></h3>
			<p><%=item.getDescription() %>
			<p><%if(item.getPrice()!=0)
				out.print(item.getPrice()+"원");
				else
				out.print(item.getdiaPrice()+" 다이아");%>
			<p><a href="./item.jsp?id=<%=item.getItemId() %>"><button class = "btn btn-lg btn-primary btn-block" type = "submit">
			구매</button>	</a>
		</div>
	</div>
		<%
			}
		%>
	<br><br></div>
</div>
<jsp:include page = "footer.jsp" />
</body>
</html>