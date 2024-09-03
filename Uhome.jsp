<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String N = (String) session.getAttribute("userName");
    String email = (String) session.getAttribute("userEmail");
    if (N == null) {
        response.sendRedirect("index.html");
    } else {
%><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Customer-The Juicy Stack</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css">
        <link rel="stylesheet" href="./CSS/user.css">
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


    </head>

    <body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="75">
        <header class="header_wrapper">
            <nav class="navbar navbar-expand-lg fixed-top">
                <div class="container-fluid bar">
                    <a class="navbar-brand " href="#">
                        <img src="./Assets/the_juicy_stack.png " />
                        <span class="title ">The Juicy Stack</span>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                        <ul class="navbar-nav menu-navbar-nav align-items-center">
                            <li class="nav-item">
                                <a class="nav-link"  href="home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="desc.jsp">Menu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="offers.jsp">Offers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="review.jsp">Review</a>
                            </li>
                            <li class="nav-item">
                                <a class="main-btn" style=' padding: -15px' href="logout.jsp"><i class='bx bx-log-out' style='font-size: 24px'  ></i></a>
                            </li>                           
                    </div>
                </div>
            </nav>
        </header>
        <section>
            <div class="ba d-flex justify-content-center align-items-center">
                <span class="bahe">
                    Welcome, <span class="he"><%=N%></span>
                </span>
            </div>
        </section>

        <div class="container-fluid">
            <div class="row d-flex justify-content-center align-items-center">
                <h1 class="mainhead text-center">Hello, you are viewing your own details.</h1>
            </div>
        </div>
        <%
            response.setContentType("text/html");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");
            PreparedStatement pst = con.prepareStatement("SELECT * FROM userinfo where email=?");
            pst.setString(1, email);
            ResultSet rs = pst.executeQuery();
            if (!rs.next()) {
                response.sendRedirect("address1.jsp");
            } else {

        %>
        <section class="container d-flex justify-content-center align-items-center">
            <div class="container">
                <div class=" d-flex justify-content-center">
                    <span class="lable">Name :</span>
                    <span class="data"><%=N%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">Email :</span>
                    <span class="data" style="text-transform: lowercase;"><%=rs.getString(2)%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">Phone No :</span>
                    <span class="data"><%=rs.getString(3)%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">Date Of Birth :</span>
                    <span class="data"><%=rs.getString(4)%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">Gender :</span>
                    <span class="data"><%=rs.getString(5)%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">Street :</span>
                    <span class="data"><%=rs.getString(6)%>, <%=rs.getString(7)%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">City :</span>
                    <span class="data"><%=rs.getString(9)%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">Postal Code :</span>
                    <span class="data"><%=rs.getString(11)%></span>
                </div>
                <div class=" d-flex justify-content-center">
                    <span class="lable">State :</span>
                    <span class="data"><%=rs.getString(10)%></span>
                </div> 
                <div class=" d-flex justify-content-center">
                    <span class="lable">Country :</span>
                    <span class="data"><%=rs.getString(8)%></span>
                </div>

            </div>
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
        <script src="./JS/index.js"></script>


    </body>

</html>
<%        }
    }
%>
