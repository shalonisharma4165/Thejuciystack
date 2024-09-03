<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>

<%
    String u_id = (String) session.getAttribute("userEmail");
    String f_id = request.getParameter("id");
    String cat = request.getParameter("cat");
    String price = request.getParameter("pr");
    String item = request.getParameter("item");
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Date date = new Date();
    String orderDate = dateFormat.format(date);

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");
    PreparedStatement checkStmt = con.prepareStatement("SELECT * FROM addtocart WHERE food_id=? AND user_email=?");
    checkStmt.setString(1, f_id);
    checkStmt.setString(2, u_id);
    ResultSet resultSet = checkStmt.executeQuery();
    if (resultSet.next()) {
        int currentQuantity = resultSet.getInt("quantity");
        currentQuantity++;
        double netAmount = currentQuantity * Double.parseDouble(price);
        
        PreparedStatement updateStmt = con.prepareStatement("UPDATE addtocart SET quantity=?, net_amt=? WHERE food_id=? AND user_email=?");
        updateStmt.setInt(1, currentQuantity);
        updateStmt.setDouble(2, netAmount);
        updateStmt.setString(3, f_id);
        updateStmt.setString(4, u_id);
        int updateResult = updateStmt.executeUpdate();
        if (updateResult > 0) {
            session.setAttribute("addtocart", "Item added to cart");
            response.sendRedirect("desc.jsp");
        } else {
            session.setAttribute("failedMsg", "An error occurred while updating the cart");
            response.sendRedirect("desc.jsp");
        }

    } else {
        double netAmount = 1 * Double.parseDouble(price);
        
        PreparedStatement insertStmt = con.prepareStatement("INSERT INTO addtocart (food_id, user_email, food_name, price, category, quantity, order_date, net_amt) VALUES (?, ?, ?, ?, ?, 1, ?, ?)");
        insertStmt.setString(1, f_id);
        insertStmt.setString(2, u_id);
        insertStmt.setString(3, item);
        insertStmt.setString(4, price);
        insertStmt.setString(5, cat);
        insertStmt.setString(6, orderDate);
        insertStmt.setDouble(7, netAmount); 
        int insertResult = insertStmt.executeUpdate();

        if (insertResult > 0) {
            session.setAttribute("addtocart", "Item added to cart");
            response.sendRedirect("desc.jsp");
        } else {
            session.setAttribute("failedMsg", "An error occurred while adding the item to the cart");
            response.sendRedirect("desc.jsp");
        }
    }
%>
