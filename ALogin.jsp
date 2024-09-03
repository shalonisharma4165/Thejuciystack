<%@page import="java.sql.*" %>
<%
    response.setContentType("text/html");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");

    PreparedStatement pst = con.prepareStatement("select * from admin  where Email=? and Pwd=?");
    pst.setString(1, email);
    pst.setString(2, password);

    ResultSet rs = pst.executeQuery();
    if (rs.next()) {
        session.setAttribute("admin",rs.getString(1));
        session.setAttribute("adminEmail",rs.getString(2));
        response.sendRedirect("AHome.jsp");
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("ALogin.html");
        out.print("Email or password is incorrect ");
        rd.include(request, response);
    }

%>
