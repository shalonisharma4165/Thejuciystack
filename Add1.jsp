<%@page import="java.sql.*"%>
<%
    response.setContentType("text/html");
    String email = request.getParameter("email");
    String phoneNumber = request.getParameter("phno");
    String birthDate = request.getParameter("bdate");
    String gender = request.getParameter("gender");
    String streetAddress = request.getParameter("street_address");
    String streetAddressLine2 = request.getParameter("street_address_line2");
    String country = request.getParameter("country");
    String city = request.getParameter("city");
    String region = request.getParameter("region");
    String postalCode = request.getParameter("postal_code");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");

    PreparedStatement pst = con.prepareStatement("INSERT INTO userinfo (email, phone_number, birth_date, gender, street_address, street_address_line2, country, city, region, postal_code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    pst.setString(1, email);
    pst.setString(2, phoneNumber);
    pst.setString(3, birthDate);
    pst.setString(4, gender);
    pst.setString(5, streetAddress);
    pst.setString(6, streetAddressLine2);
    pst.setString(7, country);
    pst.setString(8, city);
    pst.setString(9, region);
    pst.setString(10, postalCode);

    int rowsInserted = pst.executeUpdate();

    if (rowsInserted > 0) {
        response.sendRedirect("UHome.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
