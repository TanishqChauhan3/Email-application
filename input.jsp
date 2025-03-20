<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="back.js"></script>
</head>
<body>
<%
	String To=request.getParameter("To");
	To=To.trim();
	String sub=request.getParameter("subject");
	String message=request.getParameter("message");
	String send=session.getAttribute("username").toString();
	out.println("To : "+To);
	out.println("Subject : "+sub);
	out.println("Message : "+message);
	out.println("Sender : "+send);
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","8888");
		Statement st = con.createStatement();
		String query="SELECT * FROM data WHERE email ='"+To+"'";
		ResultSet rs=st.executeQuery(query);
		
		if(rs.next())
		{
		query = "insert into composed(receiver,sender,subject,msg) values('"+To+"','"+send+"','"+sub+"','"+message+"')";
		 int rowsInserted = st.executeUpdate(query);

	        if (rowsInserted > 0) {
	            out.println("Message sent successfully!");
	            response.sendRedirect("send.jsp");
	        } else {
	            out.println("Failed to send message.");
	            response.sendRedirect("compose.jsp");
	        }
	    } else {
	    	response.sendRedirect("compose.jsp");
	    } 
	}
	catch(Exception e){ out.println(e.getMessage());}
%>
</body>
</html>