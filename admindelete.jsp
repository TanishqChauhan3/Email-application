<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
    }
    td, th {
        padding: 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    a {
        color: #007bff;
        font-weight: bold;
    }
    a:hover {
        color: #0056b3;
        text-decoration: underline;
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
            <div class="col-md-9">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail", "root", "8888");
                            Statement st = con.createStatement();
                            String query = "SELECT email FROM data";
                            ResultSet rs = st.executeQuery(query);
                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getString("email") %></td>
                            <td>
                                <a href="delete.jsp?val=<%=rs.getString("email") %>" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                        <%
                            }
                        } catch (Exception e) {
                            out.println(e.getMessage());
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
