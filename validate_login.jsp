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
    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");
    out.println(name);
    out.println(pwd);
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail", "root", "8888");
        Statement st = con.createStatement();
        String query = "SELECT * FROM data WHERE email='" + name + "' AND password='" + pwd + "'";
        ResultSet rs = st.executeQuery(query);

        if (rs.next()) {
            String userType = rs.getString("usertype"); 
            session.setAttribute("username", name);
            if ("admin".equals(userType)) {
                response.sendRedirect("adminoption.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }
        } else {
            response.sendRedirect("index.jsp");
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>

</body>
</html>
