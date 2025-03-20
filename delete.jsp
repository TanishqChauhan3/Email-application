<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>
</head>
<body>
<%
Connection con = null;
PreparedStatement ps1 = null, ps2 = null, ps3 = null;

try {
    String value = request.getParameter("val");

    // Debugging: Check if email value is received
    out.println("Deleting email: " + value);

    if (value == null || value.trim().isEmpty()) {
        out.println("<script>alert('Invalid email provided.'); window.location='admindelete.jsp';</script>");
        return;
    }

    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gmail", "root", "8888");

    // 1. Delete from composed where email is receiver
    ps1 = con.prepareStatement("DELETE FROM composed WHERE receiver = ?");
    ps1.setString(1, value);
    ps1.executeUpdate();

    // 2. Delete from squestion where email is referenced
    ps2 = con.prepareStatement("DELETE FROM squestion WHERE email = ?");
    ps2.setString(1, value);
    ps2.executeUpdate();

    // 3. Delete from data
    ps3 = con.prepareStatement("DELETE FROM data WHERE email = ?");
    ps3.setString(1, value);
    int rowsAffected = ps3.executeUpdate();

    if (rowsAffected > 0) {
        response.sendRedirect("admindelete.jsp"); // Successful deletion
    } else {
        out.println("<script>alert('No user found with this email.'); window.location='admindelete.jsp';</script>");
    }

} catch (Exception e) {
    e.printStackTrace(); // Debugging
    out.println("<script>alert('Error occurred: " + e.getMessage() + "'); window.location='admindelete.jsp';</script>");
} finally {
    try { if (ps1 != null) ps1.close(); } catch (SQLException e) { e.printStackTrace(); }
    try { if (ps2 != null) ps2.close(); } catch (SQLException e) { e.printStackTrace(); }
    try { if (ps3 != null) ps3.close(); } catch (SQLException e) { e.printStackTrace(); }
    try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
}
%>
</body>
</html>
