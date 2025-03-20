<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="login.css">
<title>Insert title here</title>
<style>
	 body {
        background-color: #f4f4f4;
        font-family: Arial, sans-serif;
    }
    .container {
        margin-top: 20px;
     
        background-color: white;
        border-radius: 10px;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    }
    .dashboard-header {
        background: linear-gradient(to right, #007bff, #0056b3);
        color: white;
        padding: 15px;
        border-radius: 10px;
        text-align: center;
        font-size: 24px;
        font-weight: bold;
    }

</style>
</head>
<body>
<jsp:include page="admintop.jsp" />
<div class="container">
        <div class="dashboard-header">Dashboard</div>
        <div class="row">
            <div class="col-md-3">
                <jsp:include page="adminside.jsp"/>
            </div>
            <div class="col-md-8"></div>
        </div>
</div>
</body>
</html>
