<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Side</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    .sidebar {
        padding: 20px;
        background-color: #f8f9fa; 
        border-radius: 10px;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
    }
    .admin-menu {
        padding: 12px;
        border-radius: 5px;
        text-align: center;
        margin-bottom: 10px;
        font-size: 18px;
        font-weight: bold;
        background-color: #007bff;
        color: white;
        transition: 0.3s;
    }
    .admin-menu:hover {
        background-color: #0056b3;
        text-decoration: none;
        color: white;
    }
</style>
</head>
<body>
    <div class="sidebar">
        <a href="adminedit.jsp" class="admin-menu d-block">Edit</a>
        <a href="admindelete.jsp" class="admin-menu d-block">Delete</a>
        <a href="signin.jsp" class="admin-menu d-block">Add User</a>
        <a href="logout.jsp" class="admin-menu d-block">Logout</a>
    </div>
</body>
</html>
