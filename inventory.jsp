<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>보유 아이템</title>
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
<%@ include file = "dbconn.jsp" %>
<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3 text-white"><br>인벤토리<br><br></h1>
	</div>
</section>
<hr>
	<div class = "container bg-primary text-white">
<% 
	ResultSet rs = null;
	Statement stmt = null;
	String userId = (String)session.getAttribute("sessionId");
	try{
		String sql = "select * from client where id = '" + userId + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			String id = rs.getString("id");
			String nick = rs.getString("nick");
			String cash = rs.getString("cash");
			String dia = rs.getString("dia");
			String randomBox = rs.getString("randomBox");
			out.println(nick + " 님이 보유한 아이템 : <br>" + "캐쉬 : "+ cash+"<br>");%>
		<div class = "row">
			<div class = col-md-4>
				<img src="./image/dia.jpg" style = "width:100%">
				 <p><h4>다이아 : <%= dia +" 개<br>"%></h4>
			</div>
			<div class = col-md-4>
				<img src="./image/box.jpg" style = "width:100%">
				 <p><h4>랜덤박스 : <%= randomBox +" 개<br>"%></h4>
			</div>
		</div>	
		<%}
	}catch(SQLException ex){
		out.println("연결 실패");
	}finally{
		if(rs!=null)
			rs.close();
		if(stmt!=null)
			stmt.close();
		if(conn!=null)
			conn.close();
	}
	
%>
</div>
	<div>
		
	</div>
<jsp:include page = "footer.jsp" />
</body>
</html>