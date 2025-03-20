<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="sign-in.css">
<title>Update Email</title>
</head>
<body>
<jsp:include page="top.jsp"/>
<form action="editupdate.jsp">
<div class="container">
	<%
		try{
			String value=request.getParameter("val");
			value=value.trim();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root", "8888"); 
			Statement st = con.createStatement();
		 	String query ="select * from data where email='"+value+"'"; 
		 	ResultSet rs=st.executeQuery(query);
		 	if(rs.next())
		 	{
		 		String fullDate = rs.getString("date"); 
				String[] dateParts = fullDate.split("-"); 
				String year = dateParts[0];  
				String month = dateParts[1];  
				String day = dateParts[2];  
		%>
	<div class="row">
		<div class="col-xs-12">Name</div>
	</div>
	<div class=row>
		<div class="col-xs-12">
			<input type="hidden" value=<%=rs.getString("email")%> name="email" />
			<input type="text" value=<%=rs.getString("fname") %> placeholder="First" id="First" name="firstname"/>
			<input type="text" value=<%=rs.getString("lastname") %> placeholder="Last" id="Last" name="lastname"/>
		</div>
	</div>
	<div class="row">
	<div class="col-xs-12">
	 password
	</div>
	</div>
	<div class="row">
	<div class="col-xs-12">
		<input type="text" value=<%=rs.getString("password") %> name="pass" id="pass">
	</div>
	</div>
	<div class="row">
	<div class="col-xs-12 second">
		Birthday
	</div>
	</div>
	<div class="row">
	<div class="col-xs-12">
		<select id="Month" name="month">
				<option value="1" <%= month.equals("01") ? "selected" : "" %>>January</option>
				<option value="2" <%= month.equals("02") ? "selected" : "" %>>February</option>
				<option value="3" <%= month.equals("03") ? "selected" : "" %>>March</option>
				<option value="4" <%= month.equals("04") ? "selected" : "" %>>April</option>
				<option value="5" <%= month.equals("05") ? "selected" : "" %>>May</option>
				<option value="6" <%= month.equals("06") ? "selected" : "" %>>June</option>
				<option value="7" <%= month.equals("07") ? "selected" : "" %>>July</option>
				<option value="8" <%= month.equals("08") ? "selected" : "" %>>August</option>
				<option value="9" <%= month.equals("09") ? "selected" : "" %>>September</option>
				<option value="10" <%= month.equals("10") ? "selected" : "" %>>October</option>
				<option value="11" <%= month.equals("11") ? "selected" : "" %>>November</option>
				<option value="12" <%= month.equals("12") ? "selected" : "" %>>December</option>
			</select>
            <input type="text" placeholder="Day" id="Day" name="Day" value=<%=day%>>
            <input type="text" placeholder="Year" id="year" name="year" value=<%=year%>>
	</div>
	</div>
	<div class="row">
	<div class="col-xs-12 second">
		Gender
	</div>
	</div>
	<div class="row">
	<div class="col-xs-12">
		<select id="gender" name="gender">
	<option value="Male" <%= rs.getString("Gender").equals("Male") ? "selected" : "" %>>Male</option>
    <option value="Female" <%= rs.getString("Gender").equals("Female") ? "selected" : "" %>>Female</option>
    <option value="Other" <%= rs.getString("Gender").equals("Other") ? "selected" : "" %>>Other</option>
	</select>
	</div>
	</div>
	<br>
	<input class="btn btn-success" type="submit" value="Submit"/>
	<% 	}
		}catch(Exception e){}
	%>
</div>
</form>
</body>
</html>