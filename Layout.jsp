<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String email = (String) session.getAttribute("userEmail");

    if (email != null) {
        session.removeAttribute("userEmail");
        session.removeAttribute("userName");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");

        PreparedStatement deleteStmt = con.prepareStatement("DELETE FROM addtocart WHERE user_email = ?");
        deleteStmt.setString(1, email);
        deleteStmt.executeUpdate();

        response.sendRedirect("index.html");
    } else {
        response.sendRedirect("login.html");
    }
%>
