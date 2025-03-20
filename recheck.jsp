<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ page import="java.sql.*" %>  
<!DOCTYPE html>  
<html>  
<head>  
<meta charset="UTF-8">  
<title>Insert title here</title>  
<script>  
function showAlert(message) {  
  alert(message);  
}  
</script>  
</head>  
<body>  
<%  
    String gmail = request.getParameter("email");  
    String question = request.getParameter("question");  
    String ans = request.getParameter("answer");   
    String pwd = request.getParameter("password");  
   
    Connection con = null;  
    Statement st = null;  
    ResultSet rs = null;  

    try {  
        Class.forName("com.mysql.cj.jdbc.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail", "root", "8888");  
        st = con.createStatement();  

        String query = "SELECT ans FROM squestion WHERE email='"+ gmail +"' AND ques='"+ question +"'";  
        rs = st.executeQuery(query);  

        if (rs.next()) {  
        	String dbAns = rs.getString("ans");  
        	   
            if (dbAns.equals(ans)) {  
                String query1 = "UPDATE data SET password='" + pwd + "' WHERE email='" + gmail + "'";  
                st.executeUpdate(query1);  
                response.sendRedirect("index.jsp");  
            } else {  
            	%>  
            	<script>  
            		showAlert("Wrong answer to security question.");  
            		window.location.href = "check.jsp"; 
            	</script>  
            	<%  
            }  
        } else {  
         	%>  
        	<script>  
        		showAlert("Email or Question not found.");  
        		window.location.href = "check.jsp"; 
        	</script>  
        	<%  
        }  
    } catch (Exception e) {  
       out.println(e.getMessage());  
    } 
%>  
</body>  
</html>  