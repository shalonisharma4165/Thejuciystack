<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String name = (String) session.getAttribute("userName");
    String email = (String) session.getAttribute("userEmail");
    if (name == null) {
        response.sendRedirect("index.html");
    } else {
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration-The Juicy Stack</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css">
        <link rel="stylesheet" href="./CSS/address.css">
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
                                <a class="main-btn" style=' padding: -15px' href="UHome.jsp"><i class='bx bx-user' style='font-size: 24px'  ></i></a>
                            </li>                           
                    </div>
                </div>
            </nav>
        </header>
        <section class="body">
            <div class="containers">
                <header>Registration Form</header>
                <form action="add1.jsp" method="post" class="form">
                    <div class="input-box">
                        <label>Full Name</label>
                        <input type="text" name="fullName" placeholder="Enter full name" value="<%= name%>" required />
                    </div>
                    <div class="input-box">
                        <label>Email Address</label>
                        <input type="text" name="email" placeholder="Enter email address" value="<%= email%>" required />
                    </div>
                    <div class="column">
                        <div class="input-box">
                            <label>Phone Number</label>
                            <input type="number" name="phno" placeholder="Enter phone number" required />
                        </div>
                        <div class="input-box">
                            <label>Birth Date</label>
                            <input type="date" name="bdate" placeholder="Enter birth date" required />
                        </div>
                    </div>
                    <div class="gender-box">
                        <h3>Gender</h3>
                        <div class="gender-option">
                            <div class="gender">
                                <input type="radio" id="check-male" name="gender" value="Male" checked />
                                <label for="check-male">male</label>
                            </div>
                            <div class="gender">
                                <input type="radio" id="check-female" name="gender" value="Female" />
                                <label for="check-female">Female</label>
                            </div>
                        </div>
                    </div>
                    <div class="input-box address">
                        <label>Address</label>
                        <input type="text" name="street_address" placeholder="Enter street address" required />
                        <input type="text" name="street_address_line2" placeholder="Enter street address line 2" required />
                        <div class="column">
                            <div class="select-box">
                                <select name="country" required>
                                    <option hidden>Country</option>
                                    <option>India</option>
                                    <option>Bhutan</option>
                                    <option>Sri Lanka</option>
                                    <option>Nepal</option>
                                </select>
                            </div>
                            <input type="text" name="city" placeholder="Enter your city" required />
                        </div>
                        <div class="column">
                            <input type="text" name="region" placeholder="Enter your region" required />
                            <input type="number" name="postal_code" placeholder="Enter postal code" required />
                        </div>
                    </div>
                    <button class="main-btn btnn d-flex justify-content-center align-items-center">Submit</button>
                </form>
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
<%
    }
%>
