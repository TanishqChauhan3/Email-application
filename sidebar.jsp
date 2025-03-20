<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="sidebar.css">
<title>Insert title here</title>
</head>
<body>
  <div class="container" style="border:0px">
  <form action="input.jsp">
    <div class="row">
      <div class="col-md link-side" style="background-color: #d0e7ff; ; color:black;"><a> <%= session.getAttribute("username") %></a></div>
    </div>
    <div class="row">
      <div class="col-md link-side"><a href="compose.jsp">Compose</a></div>
    </div>
    <div class="row">
      <div class="col-md link-side"><a href="inbox.jsp">Inbox</a></div>
    </div>
    <div class="row">
      <div class="col-md link-side"><a href="send.jsp">Sent</a></div>
    </div>
    <div class="row">
      <div class="col-md link-side"><a href="logout.jsp">Logout</a></div>
    </div>
  </form>
</div>  
</body>
</html>