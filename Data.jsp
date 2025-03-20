<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String a[]=new String [3];
	a[0]="Enter Your First Pet Name";
	a[1]="What is your favorite song?";
	a[2]="Who is your favorite teacher?";
	String fname=request.getParameter("firstname");
	String lname=request.getParameter("lastname");
	String gmail=request.getParameter("gmail");
	String password=request.getParameter("pass");
	String Cpassword=request.getParameter("cpass");
	String month=request.getParameter("month");
	String day=request.getParameter("Day");	
	String year=request.getParameter("year");
	String gender=request.getParameter("gender");
	String dt=year+"-"+month+"-"+day;
	String b[]=new String [3];
	b[0]=request.getParameter("security3");
	b[1]=request.getParameter("security2");
	b[2]=request.getParameter("security1");

	
	out.println("First Name : "+fname);
	out.println("Last Name : "+lname);
	out.println("Gmail : "+gmail);
	out.println("password : "+password);
	out.println("Confirm Password: "+Cpassword);
	out.println("Day : "+day+" Month: "+month+" Year: "+year);
	out.println("Gender : "+gender);	

	String query1="insert into data(fname,lastname,email,password,date,Gender,usertype) values('"+fname+"','"+lname+"','"+gmail+"','"+password+"','"+dt+"','"+gender+"','user')";
	out.println(query1);
	 Connection con = null;
	 Statement st = null;
	 Class.forName("com.mysql.cj.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail","root","8888");
	 st = con.createStatement();
	 out.println("database Conneccted ");
	 st.executeUpdate(query1);
	 String query2="";
	
	for(int i=0;i<3;i++){
	query2="insert into squestion(ques,ans,email)values('"+a[i]+"','"+b[i]+"','"+gmail+"')";
	st.executeUpdate(query2);
	}
	response.sendRedirect("index.jsp");
%>

</body>
</html>