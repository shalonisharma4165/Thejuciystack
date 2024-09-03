<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String N = (String) session.getAttribute("userName");
    String mess = (String) session.getAttribute("addtocart");
    String fail = (String) session.getAttribute("failedMsg");
    if (N == null) {
        response.sendRedirect("index.html");
    } else {
%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menu-The Juicy Stack</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./CSS/style.css">
        <link rel="stylesheet" href="./CSS/menu.css">
        <link rel="stylesheet" href="./CSS/responsive.css">
        <link rel="stylesheet" href="./CSS/menuresponsive.css">
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
                                <a class="nav-link active" aria-current="page" href="desc.jsp">Menu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="offers.jsp">Offers</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="review.jsp">Review</a>
                            </li>
                            <li class="nav-item">
                                <a class="main-btn" style=' padding: -15px' href="UHome.jsp"><i class='bx bx-user' style='font-size: 24px'  ></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <section class="bannere_wrapper">
            <div class="container-fluid mt-2 mt-sm-5">
                <div class="background-image">
                    <div class="text-overlay">
                        <h1>menu</h1>
                        <p>Burgers with a Side of Happiness!</p>
                    </div>
                </div>
            </div>
        </section>
        <div class="d-flex justify-content-center align-items-center">
            <h2 style="color:orange; " >Welcome, <span style="text-transform: capitalize;  margin-left:10px; "> <%=N%></span> </h2>  
        </div>
        <div style="height: 80px">
            <% if (mess != null) {%>
            <div class="alert alert-success alert-dismissible fade show text-center" role="alert" id="myAlert">
                <%=mess%>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%
                session.removeAttribute("addtocart");
            } else if (fail != null) {%>
            <div class="alert alert-danger" role="alert">
                <%=fail%>
            </div>
            <%
                session.removeAttribute("failedMsg");
            } else {%>
            <div>

            </div>
            <%}%>
        </div>
        <div class="d-flex justify-content-center align-items-center" style="height: 80px">   
            <div>
                <span style="margin: 0 20px; font-weight: bold; font-size: 24px"> View Cart</span>
                <a class="main-btn" style=' padding: -15px' href="ViewCart.jsp"><i class='bx bx-cart' style='font-size: 24px'  ></i></a>
            </div>              
        </div>
        <section class="menu_wrapper">
            <div class="container-fluid">
                <div class="heading">
                    <div class="row col-12 d-flex justify-content-center align-items-center ">
                        <div>
                            <h1>TJS BURGER BUCKET</h1>
                        </div>
                    </div>
                </div>
                <div class="menu_container">
                    <div class="subheading"><span>TJS BURGERS</span></div>
                    <div class="row d-flex justify-content-around">
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/Aloo_Tikki.png" width="100%"></div>
                                </div>
                                <div class="item-info">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS ALOO TIKKI BURGER<br>Rs.99/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=1&cat=Burger&item=TJS ALOO TIKKI BURGER&pr=99">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/MCB.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">MEXICAN CHIPTOLE BURGER<br>Rs.299/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=2&cat=Burger&item=MEXICAN CHIPTOLE BURGER&pr=299">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/CVB.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">CLASSIC VEG BURGER<br>Rs.199/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=3&cat=Burger&item=CLASSIC VEG BURGER&pr=199">ADD TO CART</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-around">
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/PCB.png" width="100%"></div>
                                </div>
                                <div class="item-info">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">PANEER CHATPATA BURGER<br>Rs.299/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=4&cat=Burger&item=PANEER CHATPATA BURGER&pr=299">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/TVT.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS VEGGIE TOWER<br>Rs.399/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=5&cat=Burger&item=TJS VEGGIE TOWER&pr=399">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/TJSOG.png" width="85%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS REAL<br>Rs.499/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=6&cat=Burger&item=TJS REAL&pr=499">ADD TO CART</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-around">
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/BB.png" width="100%"></div>
                                </div>
                                <div class="item-info">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS BIG BUDDY<br>Rs.399/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=7&cat=Burger&item=TJS BIG BUDDY&pr=399">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/CS.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS CHHOTU SINGH<br>Rs.149/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=8&cat=Burger&item=TJS CHHOTU SINGH&pr=149">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/GBB.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS GRILLED BEAN BURGER<br>Rs.99/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=9&cat=Burger&item=TJS GRILLED BEAN BURGER&pr=99">ADD TO CART</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="subheading"><span>TJS BLACK MAGIC</span></div>
                    <div class="row d-flex justify-content-around">
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/BM1.png" width="100%"></div>
                                </div>
                                <div class="item-info">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS BLACK VEG LOADED<br>Rs.299/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=10&cat=Black&item=TJS BLACK VEG LOADED&pr=929">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/BM2.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS BLACK ALOO TIKKI<br>Rs.199/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=11&cat=Black&item=TJS BLACK ALOO TIKKI&pr=199">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/BM3.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS BLACK CHEESE BURGER<br>Rs.499/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=12&cat=Black&item=TJS BLACK CHEESE BURGER&pr=499">ADD TO CART</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="subheading"><span>TJS SIDES</span></div>
                    <div class="row d-flex justify-content-around">
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/FRIES.png" width="100%"></div>
                                </div>
                                <div class="item-info">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS FREAKY FRIES<br>Rs.99/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=13&cat=Sides&item=TJS FREAKY FRIES&pr=99">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/tortilla.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS CREAMY WRAP<br>Rs.199/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=14&cat=Sides&item=TJS CREAMY WRAP&pr=199">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/dips.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS REd & GREEN DIPS<br>Rs.49/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=15&cat=Sides&item=TJS REd & GREEN DIPS&pr=49">ADD TO CART</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="subheading"><span>TJS DRINKS</span></div>
                    <div class="row d-flex justify-content-around">
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/orange.png" width="100%"></div>
                                </div>
                                <div class="item-info">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS ORANGE COCA<br>Rs.199/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=16&cat=Drinks&item=TJS ORANGE COCA&pr=199">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/coca.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS COCA COLA<br>Rs.199/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=17&cat=Drinks&item=TJS COCA COLA&pr=199">ADD TO CART</a></div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="item p-3">
                                <div class="container-fluid">
                                    <div class="item-image"><img src="./Assets/lemon.png" width="100%"></div>
                                </div>
                                <div class="item-info"
                                     style="background-color: rgb(255, 211, 164); border-radius: 15px; width:90%; text-align: center; margin-left: 12px;">
                                    <br>
                                    <p style="padding:0.6; font-size: 1rem;">TJS BLUE MOCHA<br>Rs.199/-</p>
                                </div>
                                <div class=" d-flex justify-content-center"><a class="item-button" href="addcart.jsp?id=18&cat=Drinks&item=TJS BLUE MOCHA&pr=199">ADD TO CART</a></div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>



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
        <script>
            function hideAlert() {
                setTimeout(function () {
                    var alert = document.querySelector('.alert');
                    if (alert) {
                        alert.style.transition = 'opacity 0.5s';
                        alert.style.opacity = '0';
                        setTimeout(function () {
                            alert.style.display = 'none';
                        }, 500);
                    }
                }, 2000);
            }
            window.addEventListener('load', hideAlert);
        </script>


    </body>

</html>

<%
    }
%>
