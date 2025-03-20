<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ page import="java.sql.*, java.util.Random" %>  
<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="UTF-8">  
    <title>Security Question</title>  
    <link rel="Stylesheet" href="check.css">  
    <link rel="stylesheet" href="bootstrap.min.css">  
</head>  
<body>  
<%  
    String gmail = (String) session.getAttribute("kmail");  
    String question = "";  
    Connection con = null;  
    PreparedStatement st = null;  
    ResultSet rs = null;  

    try {  
        Class.forName("com.mysql.cj.jdbc.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail", "root", "8888");  

        String checkEmailQuery = "SELECT 1 FROM squestion WHERE email = ?";  
        st = con.prepareStatement(checkEmailQuery);  
        st.setString(1, gmail);  
        rs = st.executeQuery();  

        if (rs.next()) {  
            String query1 = "SELECT ques FROM squestion WHERE email = ? ORDER BY RAND() LIMIT 1";  
            st = con.prepareStatement(query1);  
            st.setString(1, gmail);  
            rs = st.executeQuery();  

            if (rs.next()) {  
                question = rs.getString("ques");  
            } else {  
                out.println("No question found for email: " + gmail);  
            }  
        } else {  
            response.sendRedirect("forget_password.jsp");  
        }  

    } catch (Exception e) {  
        out.println("Error: " + e.getMessage());  
    } 
%>  
    <jsp:include page="top.jsp"/>  
    <div class="container">  
    <div class="dashboard-header">
	  	Change Password
	</div> 
	<br>
        <div class="row justify-content-center">  
            <div class="col-md-6">  
                <form action="recheck.jsp" > 
                    <input type="hidden" name="question" value="<%= question %>">  
                    <input type="hidden" name="email" value="<%= gmail %>">  
                    <h2><%= question %></h2>  
                    <input type="text" name="answer" placeholder="Your Answer" class="form-control" id="answer" required/>  
                    <br>  
                    <h2>Enter New password</h2>  
                    <input type="password" name="password" placeholder="Password" class="form-control" id="password" required/>  
                    <br>  
                    <input type="submit" value="Submit" class="btn btn-success">  
                </form>  
            </div>  
        </div>  
    </div>  
</body>  
</html>  