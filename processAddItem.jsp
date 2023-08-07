<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "com.oreilly.servlet.*" %>
<%@ page import = "com.oreilly.servlet.multipart.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "dto.Item" %>
<%@ page import = "dao.ItemRepository" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>아이템 등록</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\Users\\User\\eclipse-workspace\\CashShop\\WebContent\\image";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
			new DefaultFileRenamePolicy());
	
	String itemId = multi.getParameter("itemId");
	String iName = multi.getParameter("iName");
	String price = multi.getParameter("price");
	String diaPrice = multi.getParameter("diaPrice");
	String category = multi.getParameter("category");
	String description = multi.getParameter("description");
	String day = multi.getParameter("day");
	
	Integer p;
	if(price.isEmpty())
		p = 0;
	else
		p = Integer.valueOf(price);

	Integer dP;
	if(diaPrice.isEmpty())
		dP = 0;
	else
		dP = Integer.valueOf(diaPrice);
	
	long stock;
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	ItemRepository dao = ItemRepository.getInstance();
	Item newItem = new Item();
	newItem.setItemId(itemId);
	newItem.setiName(iName);
	newItem.setPrice(p);
	newItem.setdiaPrice(dP);	
	newItem.setDescription(description);
	newItem.setCategory(category);
	newItem.setDay(day);
	newItem.setFilename(filename);
	
	dao.addItem(newItem);
	
	response.sendRedirect("items.jsp");
%>
</body>
</html>