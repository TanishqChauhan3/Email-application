<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="login.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="top.jsp"/> 
<div class="container">
<div class="dashboard-header">Mail Service</div>
	<div class="row">
		<div class="col-md-3 link-side" style="background-color:#d0e7ff; color:black;"><a><%= session.getAttribute("username") %></a></div>
		<div class="col-md-9"></div>
	</div>
	<div class="row">
		<div class="col-md-3 link-side"><a href="compose.jsp">Compose</a></div>
		<div class="col-md-9"></div>
	</div>
	<div class="row">
		<div class="col-md-3 link-side"><a href="inbox.jsp">Inbox</a></div>
		<div class="col-md-9"></div>
	</div>
	<div class="row">
		<div class="col-md-3 link-side"><a href="send.jsp">Send</a></div>
		<div class="col-md-9"></div>
	</div>
	<div class="row">
		<div class="col-md-3 link-side"><a href="logout.jsp">Logout</a></div>
		<div class="col-md-9"></div>
	</div>
</div>
</body>
</html>
