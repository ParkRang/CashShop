<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "dto.Item" %>
<%@ page import = "dao.ItemRepository" %>
<%@ page import = "java.sql.*" %>
<html>
<head>
<title>캐쉬 충전</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<%@ include file = "header.jsp" %>
<%@ include file = "dbconn.jsp" %>
<div class = "container" align= "center">
<%
	Integer a;
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("sessionId");
	//String id = request.getParameter("id");

	ResultSet rs = null;
	Statement stmt = null;
	
	try {
		String sql = "select id, cash from client where id = '" + id + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			String rId = rs.getString("id");
			if(id.equals(rId)){
				String cash = rs.getString("cash");
				a = Integer.parseInt(cash);
				a = a + 10000;
				cash = Integer.toString(a);
				sql = "update client set cash = '" + cash + "' where id = '" + id + "'";
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				out.println("충전 완료"+rs.getString(cash));
				}
			}
		} catch(SQLException ex) {
			out.println("충전 완료!");
		}finally{
			if(rs!=null)
				rs.close();
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
			
		}
				
	
%>
<p><a href = "main.jsp">메인으로 가기</a>
</div>
<%@ include file = "footer.jsp" %>
</body>
</html>