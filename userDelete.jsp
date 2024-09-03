<%@page import="java.sql.*"%>
<%
    response.setContentType("text/html");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");
    PreparedStatement deletereg = con.prepareStatement("DELETE FROM registration WHERE Email=?");
    deletereg.setString(1, email);
    int deleteResultreg = deletereg.executeUpdate();
    
    PreparedStatement deleteinfo = con.prepareStatement("DELETE FROM userinfo WHERE email=?");
    deleteinfo.setString(1, email);
    int deleteResultinfo = deleteinfo.executeUpdate();
    
    PreparedStatement deleteod = con.prepareStatement("DELETE FROM orders WHERE user_email=?");
    deleteod.setString(1, email);
    int deleteResultod = deleteod.executeUpdate();

    if (deleteResultreg > 0) {
        response.sendRedirect("AHome.jsp");
    } else {
        response.sendRedirect("ALogout.jsp");
    }

%>
