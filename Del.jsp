<%@page import="java.sql.*"%>
<%
    response.setContentType("text/html");
    String u_id = (String) session.getAttribute("userEmail");
    String d = request.getParameter("food_id");
    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");
    PreparedStatement checkStmt = con.prepareStatement("SELECT quantity, price FROM addtocart WHERE food_id=? AND user_email=?");
    checkStmt.setString(1, d);
    checkStmt.setString(2, u_id);
    ResultSet resultSet = checkStmt.executeQuery();

    if (resultSet.next()) {
        int currentQuantity = resultSet.getInt("quantity");
        double price = resultSet.getDouble("price");

        if (currentQuantity > 1) {
            currentQuantity--;
            double netAmount = currentQuantity * price;

            PreparedStatement updateStmt = con.prepareStatement("UPDATE addtocart SET quantity=?, net_amt=? WHERE food_id=? AND user_email=?");
            updateStmt.setInt(1, currentQuantity);
            updateStmt.setDouble(2, netAmount);
            updateStmt.setString(3, d);
            updateStmt.setString(4, u_id);
            int updateResult = updateStmt.executeUpdate();

            if (updateResult > 0) {
                response.sendRedirect("ViewCart.jsp");
            } else {
                session.setAttribute("failedMsg", "Failed to update item quantity");
                response.sendRedirect("desc.jsp");
            }
        } else {
            PreparedStatement deleteStmt = con.prepareStatement("DELETE FROM addtocart WHERE food_id=? AND user_email=?");
            deleteStmt.setString(1, d);
            deleteStmt.setString(2, u_id);
            int deleteResult = deleteStmt.executeUpdate();

            if (deleteResult > 0) {
                response.sendRedirect("ViewCart.jsp");
            } else {
                session.setAttribute("failedMsg", "Failed to delete item from cart");
                response.sendRedirect("desc.jsp");
            }
        }
    }
%>
