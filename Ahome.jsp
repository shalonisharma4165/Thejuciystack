<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin-The Juicy Stack</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css">
        <link rel="stylesheet" href="./CSS/admin.css">
        <link rel="stylesheet" href="./CSS/responsive.css">
        <link rel="preconnect" href="https://fonts. googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Poppins:wght@400;600;700&display=swap"
            rel="stylesheet">
        <link rel="icon" type="image/png" href="./Assets/the_juicy_stack.png">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
              integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">


    </head>
    <body>
        <%
            String N = (String) session.getAttribute("admin");
            if (N == null) {
                response.sendRedirect("ALogin.html");
            } else {
        %>
        <header class="container-fluid d-flex justify-content-around align-items-center">
            <span>Admin Portal</span>
        </header>
        <div class="barr d-flex justify-content-center align-items-center">
            <span class="barhea">
                Welcome, <span class="hea"><%=N%></span>
            </span>
        </div>
        <div class="d-flex justify-content-center align-items-center">
            <a class="main-btn"  href="ALogout.jsp"><i class='bx bx-home-smile' style='font-size: 48px'  ></i></a>
        </div>
        <div class=" menu container d-flex justify-content-around align-items-center">
            <a class="main-btn act" href="AHome.jsp"> View Users</a>
            <a class="main-btn" href="VOrders.jsp">View Orders</a>
        </div>
        <%
            response.setContentType("text/html");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");
            PreparedStatement pst = con.prepareStatement("SELECT * FROM registration");
            ResultSet rs = pst.executeQuery();
        %>
        <section>
            <h1 class="pagename d-flex justify-content-start align-items-center"> <span>Customer Details</span></h1>
            <%
                if (!(rs.next())) {
            %>
            <div class="container text-center m-5">
                <p>No Customer</p>
                <p><a href="ALogout.jsp" class="main-btn m-5">LOGOUT</a> </p>
            </div>
            <%
            } else {
            %>
            <div class="container d-flex justify-content-center align-items-center">
                <table class="table table-striped table-dark my-5" style="margin-top: 30px;">
                    <thead class="head" style="background-color: #d9f688">
                        <tr>
                            <th scope="col">Customer Name</th>
                            <th scope="col">Email Address</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>

                    <%
                        do {

                    %>
                    <tr>
                        <th class="td" scope="row"><span style=" text-transform: capitalize"><%= rs.getString(2)%></span></th>
                        <td class="td"><%= rs.getString(1)%></td>
                        <td><a href="userDelete.jsp?email=<%=rs.getString(1)%>"><i class='bx bx-trash' style='  color:orange; font-size: 3rem;'></i></a>
                        </td>
                    </tr>
                    <%
                        } while (rs.next());
                    %>
                </table>
            </div>
            <%
                }
            %>
        </section>
 <section class="footer_wrapper mt-5">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 col-md-6 text-center text-md-start">
                        <div class="footer-logo mb-3 mb-md-0">
                            <img src="./Assets/the_juicy_stack.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 text-center">
                        <ul
                            class="list-unstyled d-flex justify-content-center justify-content-md-end justify-content-lg-center social-icon mb-3 mb-mb-0">
                            <li>
                                <a href="#">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fab fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="copyright-text text-center mb-3 mb-lg-0">
                            <p class="mb-0">
                                Copyright &COPY; 2023
                                <a href="#">
                                    The Juicy Stack
                                </a>.
                                All Rights Reserved.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
        <script src="./JS/main.js"></script>
        <script src="./JS/login.js"></script>
        <script src="./JS/index.js"></script>
        <%
            }
        %>
    </body>
</html>
