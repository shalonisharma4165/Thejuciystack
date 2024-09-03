<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = (String) session.getAttribute("userName");
    if (name == null) {
        response.sendRedirect("index.html");
    } else {
%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cart-The Juicy Stack</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css">
        <link rel="stylesheet" href="./CSS/viewcart.css">
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
        <%
            String N = (String) session.getAttribute("userEmail");
            if (N == null) {
                response.sendRedirect("Login.html");
            }
        %>
        <header class="header_wrapper">
            <nav class="navbar navbar-expand-lg fixed-top">
                <div class="container-fluid bar">
                    <a class="navbar-brand " href="#">
                        <img src="./Assets/the_juicy_stack.png " />
                        <span class="title ">The Juicy Stack</span>
                    </a>
                    <button d-flex justify-content-center class="navbar-toggler" type="button d-flex justify-content-center"
                            data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button d-flex justify-content-center>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                        <ul class="navbar-nav menu-navbar-nav align-items-center">
                            <li class="nav-item">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="desc.jsp">Menu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="offers.jsp">Offers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="review.jsp">Review</a>
                            </li>
                            <li class="nav-item">
                                <a class="main-btn"  style=' padding: -15px' href="UHome.jsp"><i class='bx bx-user' style='font-size: 24px'  ></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <section>
            <div class="heading container-fluid d-flex justify-content-center align-items-center"style='margin-top:100px;'>
                <h1 class="mainhead">Hello,<span style="text-transform: capitalize"><%=name%></span> </h1>
            </div>
        </section>




        <%@page import="java.sql.*"%>
        <%
            response.setContentType("text/html");

            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thejuciystack", "root", "");

            PreparedStatement pst = con.prepareStatement("SELECT * FROM addtocart WHERE user_Email=? ORDER BY food_id ASC");
            pst.setString(1, N);
            int totalPrice = 0;
            ResultSet rs = pst.executeQuery();
        %>
            <h1 class="pagename d-flex justify-content-start align-items-center"> <span>Shopping Cart</span></h1>
            <%
                if (!(rs.next())) {
            %>
            <div class="container text-center m-5">
                <p>Your cart is empty.</p>
                <p><a href="desc.jsp" class="main-btn m-5">View Menu</a> </p>
            </div>
            <%
            } else {
            %>

            <table class="table table-striped table-dark my-5" style="margin-top: 30px;">
                <thead class="head" style="background-color: #d9f688">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Food Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Category</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Order Date</th>
                        <th scope="col">Net Amount</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>

                <%
                    do {
                        int price = rs.getInt("net_amt");
                        totalPrice += price;
                %>
                <tr>
                    <th class="td" scope="row"><%= rs.getString(1)%></th>
                    <td class="td"><%= rs.getString(3)%></td>
                    <td class="td"><%= rs.getString(4)%></td>
                    <td class="td"><%= rs.getString(5)%></td>
                    <td class="td"><%= rs.getString(6)%></td>
                    <td class="td"><%= rs.getString(7)%></td>
                    <td class="td"><%= rs.getString(8)%></td>
                    <td><a href="Del.jsp?food_id=<%= rs.getString(1)%>"><i class='bx bx-trash' 
                                                                           style='  color:orange; font-size: 3rem;'></i></a>
                    </td>
                </tr>
                <%
                    } while (rs.next());
                %>
            </table>
            <div class="d-flex justify-content-center align-items-center  my-5">
                <a href="desc.jsp" class="main-btn">Add More</a>
            </div>
       

        <div class="container d-flex justify-content-center align-items-center my-5">
            Your total amount to be paid is: <%= totalPrice%>               
        </div>
        <div class="d-flex justify-content-center align-items-center my-5">
            <a href="address.jsp?total=<%=totalPrice%>" class="main-btn">order Now</a>
        </div>
        <%
            }
        %>
        <section class="footer_wrapper mt-1 mt-sm-3">
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
    </body>
</html>
<%
    }
%>


