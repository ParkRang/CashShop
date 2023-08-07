<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "dto.Item" %>
<%@ page import = "dao.ItemRepository" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.net.URLEncoder" %>
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
<%@ include file = "dbconn.jsp" %>
<section class = "aqua">
	<div class = "container">
		<h1 class = "display-3 text-white"><br>구매 페이지<br><br></h1>
	</div>
</section>
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	ItemRepository dao = ItemRepository.getInstance();
	Item item = dao.getItemById(id);
	
	Integer c = item.getPrice();
	Integer d = item.getdiaPrice();
	Integer cRes; Integer dRes;
	Integer am = item.getAmount();
	Integer ams = 0;
	String category = item.getCategory();
	String cate="";
	if(category.equals("다이아")){
		cate = "dia";
	} else if(category.equals("랜덤")){
		cate = "randomBox";
	}
	
	String userId = (String)session.getAttribute("sessionId");
	
	ResultSet rs = null;
	Statement stmt = null;
	try{
		String sql = "select id, cash, dia, randomBox from client where id = '" + userId + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			String rId = rs.getString("id");
			if(userId.equals(rId)){
				String cash = rs.getString("cash");
				String dia = rs.getString("dia");
				String randomBox = rs.getString("randomBox");
				
				cRes = Integer.parseInt(cash)-c;
				dRes = Integer.parseInt(dia)-d;
				
				if(cRes<0 || dRes<0){
					response.sendRedirect("cancel.jsp");
				} else {
					if(category.equals("다이아")){
						ams = Integer.parseInt(dia);
						ams = ams + am;
						String res = Integer.toString(ams);
						sql = "update client set dia = '"+res+"' where id = '" + userId + "'";
						stmt = conn.createStatement();
						stmt.executeUpdate(sql);
						cash = Integer.toString(cRes);
						sql = "update client set cash = '"+cash + "' where id = '" + userId + "'";
						stmt = conn.createStatement();
						stmt.executeUpdate(sql);
						Cookie cId = new Cookie("cId", URLEncoder.encode(id, "utf-8"));
						Cookie cUser = new Cookie("cUser", URLEncoder.encode(userId, "utf-8"));
						response.addCookie(cId);
						response.addCookie(cUser);
	%>
<hr>
	<div class = "container bg-primary text-white"><br><br>
			<div class ="row">
				<div class = "col-md-6">
					<p><h3><%=item.getiName() + "상품을 구매하였습니다."%></h3>
				</div>
			</div>
		<br><br></div>
	<%						
							
					} else if(category.equals("랜덤")){
						ams = Integer.parseInt(randomBox);
						ams = ams + am;
						String res = Integer.toString(ams);
						sql = "update client set randomBox = '"+res + "' where id = '" + userId + "'";
						stmt = conn.createStatement();
						stmt.executeUpdate(sql);
						dia = Integer.toString(dRes);
						sql = "update client set dia = '"+dia + "' where id = '" + userId + "'";
						stmt = conn.createStatement();
						stmt.executeUpdate(sql);
						Cookie cId = new Cookie("cId", URLEncoder.encode(id, "utf-8"));
						Cookie cUser = new Cookie("cUser", URLEncoder.encode(userId, "utf-8"));
						response.addCookie(cId);
						response.addCookie(cUser);
						
	%>
<hr>
	<div class = "container bg-primary text-white"><br><br>
			<div class ="row">
				<div class = "col-md-6">
					<p><h3><%="[ " +item.getiName() + " ] 상품을 구매하였습니다."%></h3>
				</div>
			</div>
		<br><br></div>
	<%
					} else{
	%>
<hr>
	<div class = "container bg-primary text-white"><br><br>
			<div class ="row">
				<div class = "col-md-6">
					<p><h3><%="준비중인 상품입니다."%></h3>
				</div>
			</div>
		<br><br></div>
	<%					
					}			
				}
			}
		}
	} catch(SQLException ex){
		out.println("구매");
	} finally{
		if(rs!=null)
			rs.close();
		if(stmt!=null)
			stmt.close();
		if(conn!=null)
			conn.close();
	}
	%>
<jsp:include page = "footer.jsp" />
</body>
</html>