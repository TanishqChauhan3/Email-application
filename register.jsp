<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
td{
 border:2px solid Grey;
 padding:5px;
}

a{
text-decoration:none !important;
}

.container{
border-radius:10px;
width:100%;
height:auto;
padding:20px;
text-align: center;
}

table{
margin: 0 auto;
}
</style>
</head>
<body>
    <jsp:include page="admintop.jsp" />
    <div class="container">
    <div class="row justify-content-center">
            <div class="col-md-12"><H1>Dashboard</H1></div>
    </div>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <table style="font-size:20px;">
                    <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail", "root", "8888");
                        Statement st = con.createStatement();
                        String query = "SELECT email from data";
                        ResultSet rs = st.executeQuery(query);
                        while (rs.next()) {
                            out.print("<tr>");
                            out.print("<td>" + rs.getString("email") + "</td>");
                    %>
                            <td>    
                                <a href="delete.jsp?val=<%=rs.getString("email") %>">Delete</a> 
                                / 
                                <a href="edit.jsp?val=<%=rs.getString("email") %>">Edit</a>
                            </td>
                            <%
                            out.print("<tr>");
                        }
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                    %>
                </table>
            </div>
        </div>
        <br>
    </div>
</body>
</html>
