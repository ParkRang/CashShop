<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<title>Database SQL</title>
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
<%@ include file = "dbconn.jsp" %>
<hr>
	<div class = "container bg-primary text-white"><br><br>
			<div class ="row">
				<div class = "col-md-6">
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String nick = request.getParameter("nick");
	String cash = "0";
	String dia = "0";
	String randomBox = "0";
	Statement stmt = null;
	
	try{
		String sql = "INSERT INTO client(id, name, passwd, nick, cash, dia, randomBox) VALUES('" + id + "','" + name + "','" 
		+ passwd + "','" + nick + "','" + 0 + "','" + 0 + "','" + 0 +"')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("회원가입에 성공하였습니다.");

		
	} catch (SQLException ex) {
		out.println("회원 가입에 실패하였습니다.");
		out.println("SQLException : "+ ex.getMessage());
	} finally {
		if(stmt != null)
			stmt.close();
		if(conn != null)
			conn.close();
	}
%>
<a href = "main.jsp">메인으로 가기</a>
		</div>
	</div>
<br><br></div>		
<jsp:include page = "footer.jsp" />
</body>
</html>