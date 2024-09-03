<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String N = (String) session.getAttribute("userName");
    if (N == null) {
        response.sendRedirect("index.html");
    } else {
%><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>The Juicy Stack</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css">
        <link rel="stylesheet" href="./CSS/index.css">
        <link rel="stylesheet" href="./CSS/responsive.css">
        <link rel="stylesheet" href="./CSS/indexresponsive.css">
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
                                <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
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

        <section class="video">
            <div class="container-fluid">
                <div class="embed-responsive embed-responsive-16by9">
                    <video id="video1" autoplay muted>
                        <source src="./Assets/burger.mp4" type="video/mp4">
                    </video>
                    <video id="video2" muted>
                        <source src="./Assets/burgerheating.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </section>
        <section class="best_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-center mb-4">
                        <h2>Best Sellers</h2>
                        <p>Customer Favorites: Irresistible Classics <br class="d-none d-md-block"> That Keep You Coming Back for More
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-4">
                        <div class="card rounded-0" style="background-image: url(./Assets/chotapacket.jpg);">
                            <div class="best-text bg-black bg-opacity-50 best-desc">
                                <h3 class="text-white">Chota Packet</h3>
                                <h5>A Flavor Explosion in Every Bite, Mini Burger Bliss!</h5>
                                <div class=" mt-3"><a class="main-btn" href="desc.jsp">Order Now</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="card rounded-0" style="background-image: url(./Assets/theveggitower.jpg);">
                            <div class="best-text bg-black bg-opacity-50">
                                <h3 class="text-white">The Veggi Tower</h3>
                                <h5>Elevate Your Taste Buds with Plant-Based Delights!</h5>
                                <div class=" mt-3"><a class="main-btn" href="desc.jsp">Order Now</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="card rounded-0" style="background-image: url(./Assets/tjsorignal.jpg);">
                            <div class="best-text bg-black bg-opacity-50">
                                <h3 class="text-white">TJS Original</h3>
                                <h5>Where Culinary Artistry Meets Unmatched Flavor Fusion!</h5>
                                <div class=" mt-3"><a class="main-btn" href="desc.jsp">Order Now</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-4">
                        <div class="card rounded-0" style="background-image: url(./Assets/nawabpanner.jpg);">
                            <div class="best-text bg-black bg-opacity-50">
                                <h3 class="text-white">Nawab E Paneer</h3>
                                <h5>Royalty Meets Flavor in Every Paneer-Packed Bite!</h5>
                                <div class=" mt-3"><a class="main-btn" href="desc.jsp">Order Now</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="review_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-5 "></div>
                    <div class="col-lg-5 col-md-7">
                        <div id="customCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" data-bs-interval="5000">
                                    <div class="carousel-content ">
                                        <center>
                                            <h2>Sanjay Singh </h2>
                                            <p>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                            </p>
                                            <div class="contents overflow">
                                                The Juicy Stack redefines burger perfection. Sink your teeth into their
                                                incredible creations and savor the juicy delight. Their signature patties, cooked to perfection,
                                                are
                                                nestled between fresh, soft buns and adorned with crisp, farm-fresh veggies. The secret sauce ties
                                                it all together, creating a symphony of flavors that dance on your palate. With every bite, you'll
                                                understand why The Juicy Stack is the go-to spot for burger enthusiasts seeking an unforgettable
                                                culinary.
                                            </div>
                                            <a href="review.jsp" class="main-btn">more reviwes</a>
                                        </center>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="5000">
                                    <div class="carousel-content">
                                        <center>
                                            <h2>Bharti Agrawal</h2>
                                            <p>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9734;</span>
                                            </p>
                                            <div class="contents overflow">
                                                Prepare for a feast for the senses at The Juicy Stack. Their burgers are a
                                                sensory explosion of taste, texture, and aroma. The moment you lift one to your lips, the aroma
                                                teases your nostrils, and the first bite transports you to burger heaven. It's the kind of
                                                experience that makes you close your eyes and savor every moment. If you're in pursuit of burger
                                                perfection, look no further. The Juicy Stack, they craft burger perfection.The Juicy Stack is your
                                                ticket to burger euphoria.
                                            </div>
                                            <a href="review.jsp" class="main-btn">more reviwes</a>
                                        </center>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="5000">
                                    <div class="carousel-content">
                                        <center>
                                            <h2>Rohan Yadav</h2>
                                            <p>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9733;</span>
                                                <span class="star">&#9734;</span>
                                            </p>
                                            <div class="contents overflow">
                                                The Juicy Stack is your ticket to burger euphoria. These burgers are designed to awaken your taste
                                                buds and make your palate sing with joy. The secret sauce, the fresh ingredients, and the
                                                perfectly
                                                cooked patties – it all comes together in a harmonious celebration of flavor. If you haven't tried
                                                a
                                                burger from The Juicy Stack yet, you're missing out on a gastronomic adventure like no other.
                                                Their
                                                burgers are like paintings on a plate, with vibrant colors and textures that beckon your taste.
                                            </div>
                                            <a href="review.jsp" class="main-btn">more reviwes</a>
                                        </center>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#customCarousel" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#customCarousel" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
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
<%
    }
%>
