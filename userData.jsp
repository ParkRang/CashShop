<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.net.URLDecoder" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>유저 정보</title>
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
		<h1 class = "display-3 text-white"><br>유저 정보<br><br></h1>
	</div>
</section>
<hr>
	<div class = "container bg-primary text-white"><br><br>
			<div class ="row">
				<div class = "col-md-6">
<%
	request.setCharacterEncoding("UTF-8");
	
	String user_nick = (String)session.getAttribute("sessionNick");
	String user_id = (String)session.getAttribute("sessionId");
	out.println("아이디 : " + user_id + "<br>");
	out.println("닉네임 : " + user_nick);

	Cookie[] cookies = request.getCookies();
	String cId = "";
	String cUser = "";
	
	if(cookies != null){
		for(int i = 0; i<cookies.length; i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("cId"))
				cId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if(n.equals("cUser"))
				cUser = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
			<div class = "container col-8 bg-warning" align = "center">
				<div class ="text-center">
					<h4>구매 기록</h4>
				</div>
				<div class = col-4 align = "center">
					<p><h6><%= cId +  "  /  " + cUser %></h6>
				</div>
			</div>
		</div>
	</div>
<br><br></div>
<jsp:include page = "footer.jsp" />
</body>
</html>