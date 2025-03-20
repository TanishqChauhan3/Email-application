<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
<link rel="stylesheet" href="inbox.css">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="top.jsp" />
<div class="container">
	<div class="dashboard-header">
	  	Sent
	</div>
    <div class="row">  
    	<div class="col-md-3"> 	
			<jsp:include page="sidebar.jsp" />     		
    	</div>
        <div class="col-md-8" style="margin-top:20px;margin-left:30px;">
        	<table style="font-size:20px;">
        		<tr> 
	        		<th> Reciver  </th>
	        		<th> Subject </th>
	        		<th> Massage </th>
        		</tr> 
        		<%
        		try{
        			String rec=session.getAttribute("username").toString();
        			Class.forName("com.mysql.cj.jdbc.Driver");
        			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","8888");
        			Statement st = con.createStatement();
        			String query="SELECT * FROM composed WHERE sender='"+rec+"'";
        			ResultSet rs=st.executeQuery(query);
        			
        			while(rs.next()) {
        			    out.print("<tr>");
        			    out.print("<td>" + rs.getString("receiver") + "</td>");
        			    out.print("<td>" + rs.getString("subject").substring(0, 5).concat("...") + "</td>");
        			    out.print("<td>" + rs.getString("msg").substring(0, 5).concat("...") + "</td>");
        			    out.print("<td><a href=\"view.jsp?val=" + rs.getString("id") + "\">View</a></td>");
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