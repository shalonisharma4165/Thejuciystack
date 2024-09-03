<%@ page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
    response.setContentType("text/html");
    String userEmail = (String) session.getAttribute("userEmail");
    double totalPrice = Double.parseDouble(request.getParameter("total"));
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Date date = new Date();
    String orderDate = dateFormat.format(date);

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");

    PreparedStatement insertStmt = con.prepareStatement("INSERT INTO orders (user_email, total_price,order_date) VALUES (?,?, ?)");
    PreparedStatement deleteStmt = con.prepareStatement("DELETE FROM addtocart WHERE user_email = ?");
    insertStmt.setString(1, userEmail);
    insertStmt.setDouble(2, totalPrice);
    insertStmt.setString(3, orderDate);
    deleteStmt.setString(1, userEmail);
    deleteStmt.executeUpdate();
    int deleteResult =deleteStmt.executeUpdate();
    int insertResult = insertStmt.executeUpdate();

    if (insertResult > 0) {
        response.sendRedirect("order_Success.jsp");
    } else {
        response.sendRedirect("ViewCart.jsp");
    }
%>
