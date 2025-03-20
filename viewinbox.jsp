<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="view.css">
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="container">
<br>
<div class="row">
<div class="col-md-3"> 	
			<jsp:include page="sidebar.jsp" />     		
</div>
<div class="col-md-8">
<table>
<%
try
{ 
	String value=request.getParameter("val");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root", "8888"); 
	Statement st = con.createStatement();
	 String query ="Select sender,subject,msg from composed where id="+value+""; 
	 ResultSet rs=st.executeQuery(query);
	 while(rs.next())
	 {
		     out.print("<tr>");
		 	 out.print("<th>"+"From: "+"</th>");
		     out.print("<td>"+rs.getString("sender")+"</td>");
			 out.print("</tr>");
			 out.print("<tr>");
			 out.print("<th>"+"Subject: "+"</th>");
		     out.print("<td>"+rs.getString("subject")+"</td>");
			 out.print("</tr>");
			 out.print("<tr>");
			 out.print("<th>"+"Message: "+"</th>");
		     out.print("<td><p>"+rs.getString("msg")+"</p></td>");
			 out.print("</tr>");
	 }
}catch(Exception e){out.println(e.getMessage());}
%>
</table>
</div>
</div>
<br>
</div>
</body>
</html>