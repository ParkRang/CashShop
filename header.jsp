<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="main.jsp">메인</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="cashCharge.jsp">CASH 충전<span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="items.jsp">상점</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="inventory.jsp">보유 아이템</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="userData.jsp">유저 정보</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
      </li>
            <li class="nav-item">
        <a class="nav-link" href="logout.jsp">Logout</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addItem.jsp">아이템 등록</a>
      </li>
    </ul>
  </div>
</nav>
</body>
</html>