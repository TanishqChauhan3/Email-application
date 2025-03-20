<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="back.js"></script>
</head>
<body>
<%
    try {
    	String email=request.getParameter("email");
    	String fname=request.getParameter("firstname");
    	String lname=request.getParameter("lastname");
    	String password=request.getParameter("pass");
    	String month=request.getParameter("month");
    	String day=request.getParameter("Day");	
    	String year=request.getParameter("year");
    	String gender=request.getParameter("gender");
    	String dt=year+"-"+month+"-"+day;
    	
    	out.println("Email iD : "+email);
    	out.println("First Name : "+fname);
    	out.println("Last Name : "+lname);
    	out.println("password : "+password);
    	out.println("Day : "+day+" Month: "+month+" Year: "+year);
    	out.println("Gender : "+gender);	
    	
    
    	String query="Update data set fname='"+fname+"',lastname='"+lname+"',password='"+password+"',date='"+dt+"',Gender='"+gender+"' where email='"+email+"'";
    	out.println(query);
    	
        Connection con = null;
    	Statement st = null;
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","8888");
    	st = con.createStatement();
    	st.executeUpdate(query);
    	
    	response.sendRedirect("adminedit.jsp");
         
    } catch (Exception e) {
    	out.println(e.getMessage());
    }
%>
</body>
</html>