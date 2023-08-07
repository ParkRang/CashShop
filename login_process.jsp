<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>로그인</title>
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
<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3 text-white"><br>로그인됨<br><br></h1>
	</div>
</section>
<hr>
<div class = "container" align = "center" >
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("password");

	ResultSet rs = null;
	Statement stmt = null;
	
	try{
		String sql = "select * from client";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			String rId = rs.getString("id");
			String rName = rs.getString("name");
			String rPw = rs.getString("passwd");
			String rNick = rs.getString("nick");
			String rCash = rs.getString("cash");
			String rDia = rs.getString("dia");
			String rRandom = rs.getString("randomBox");
			
			if(id.equals(rId) && pass.equals(rPw)){
						
				session.setAttribute("sessionNick", rNick);
				session.setAttribute("sessionId", rId);
				out.println(rNick + "님 환영합니다.");
	
				
				
			}
		}
	}catch(SQLException ex){
		out.println("아이디와 비밀번호를 다시 확인하여 주세요");	
	}finally{
		if(rs!=null)
			rs.close();
		if(stmt != null)
			stmt.close();
		if(conn!=null)
			conn.close();
	}
%>
<a href = "main.jsp">메인으로 가기</a>
</div>
<jsp:include page = "footer.jsp" />
</body>
</html>