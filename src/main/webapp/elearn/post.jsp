<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html lang="">

<head>
    <!-- metas -->
    <meta charset="utf-8"/>
    <meta name="author" content="Chitrakoot Web"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="keywords" content="Online Education Learning Template"/>
    <meta name="description" content="eLearn - Online Education Learning Template"/>

    <!-- title  -->
    <title>eLearn - Online Education Learning Template</title>
    <script>
        function openInputJSP() {
            var openInputUrl = "post_insertForm.do";
            window.open(openInputUrl,'_self');
        }

    </script>

    <!-- favicon -->
    <link rel="shortcut icon" href="img/logos/favicon.png"/>
    <link rel="apple-touch-icon" href="img/logos/apple-touch-icon-57x57.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/apple-touch-icon-114x114.png"/>

    <!-- plugins -->
    <link rel="stylesheet" href="css/plugins.css"/>

    <!-- search css -->
    <link rel="stylesheet" href="css/search.css"/>

    <!-- quform css -->
    <link rel="stylesheet" href="css/base.css">

    <!-- core style css -->
    <link href="css/styles.css" rel="stylesheet"/>

    <!-- custom style css -->
    <link href="css/custom.css" rel="stylesheet"/>

</head>

<body>

<!-- PAGE LOADING
================================================== -->
<div id="preloader"></div>

<!-- MAIN WRAPPER
================================================== -->
<div class="main-wrapper">

    <!-- HEADER
    ================================================== -->
    <header class="header-style1 menu_area-light">

        <div class="navbar-default border-bottom border-color-light-white">

            <!-- start top search -->
            <div class="top-search bg-primary">
                <div class="container">
                    <form class="search-form" action="search.html" method="GET" accept-charset="utf-8">
                        <div class="input-group">
                                <span class="input-group-addon cursor-pointer">
                                    <button class="search-form_submit fas fa-search text-white" type="submit"></button>
                                </span>
                            <input type="text" class="search-form_input form-control" name="s" autocomplete="off"
                                   placeholder="Type & hit enter...">
                            <span class="input-group-addon close-search mt-1"><i class="fas fa-times"></i></span>
                        </div>
                    </form>
                </div>
            </div>
            <!-- end top search -->

            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-lg-12">
                        <div class="menu_area alt-font">
                            <nav class="navbar navbar-expand-lg navbar-light p-0">
                                <div class="navbar-header navbar-header-custom">
                                    <!-- start logo -->
                                    <a href="../index.jsp" class="navbar-brand"><img id="logo"
                                                                                     src="img/logos/logo-inner.png"
                                                                                     alt="logo"/></a>
                                    <!-- end logo -->
                                </div>

                                <div class="navbar-toggler bg-primary"></div>

                                <!-- start menu area -->
                                <ul class="navbar-nav ms-auto" id="nav" style="display: none;">
                                    <li><a href="../index.jsp">Home</a></li>
                                    <li>
                                        <a href="#!">Pages</a>
                                        <ul>
                                            <li><a href="about.html">About Us</a></li>
                                            <li><a href="instructors.html">Instructors</a></li>
                                            <li><a href="instructors-details.html">Instructors Details</a></li>
                                            <li><a href="pricing.html">Pricing</a></li>
                                            <li><a href="faq.html">FAQ</a></li>
                                            <li><a href="404.html">Page 404</a></li>
                                            <li><a href="coming-soon.html">Coming Soon</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#!">Courses</a>
                                        <ul>
                                            <li><a href="courses-grid.html">Courses Grid</a></li>
                                            <li><a href="courses-list.html">Courses List</a></li>
                                            <li><a href="course-details.html">Courses Details</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#!">Events</a>
                                        <ul>
                                            <li><a href="event-list.html">Event List</a></li>
                                            <li><a href="event-details.html">Event Details</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#!">Portfolio</a>
                                        <ul>
                                            <li><a href="#!">Portfolio Grid</a>
                                                <ul>
                                                    <li><a href="portfolio-two-columns.html">2 Columns</a></li>
                                                    <li><a href="portfolio.html">3 Columns - Standard</a></li>
                                                    <li><a href="portfolio-four-columns.html">4 Columns</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="portfolio-details.html">Portfolio Details</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#!">Blog</a>
                                        <ul>
                                            <li><a href="blog-grid.html">Blog Grid</a>
                                                <ul>
                                                    <li><a href="blog-grid-two-columns.html">2 Columns</a></li>
                                                    <li><a href="blog-grid-two-columns-left-sidebar.html">2 Col – Left
                                                        Sidebar</a></li>
                                                    <li><a href="blog-grid-two-columns-right-sidebar.html">2 Col – Right
                                                        Sidebar</a></li>
                                                    <li><a href="blog-grid.html">3 Columns - Standard</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="blog-list.html">Blog List</a></li>
                                            <li><a href="blog-details.html">Blog Details</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                                <!-- end menu area -->

                                <!-- start attribute navigation -->
                                <div class="attr-nav align-items-xl-center ms-xl-auto main-font">
                                    <ul>
                                        <li class="search"><a href="#!"><i class="fas fa-search"></i></a></li>
                                        <li class="d-none d-xl-inline-block"><a href="contact.html"
                                                                                class="butn md text-white"><i
                                                class="fas fa-plus-circle icon-arrow before"></i><span class="label">Apply Now</span><i
                                                class="fas fa-plus-circle icon-arrow after"></i></a></li>
                                    </ul>
                                </div>
                                <!-- end attribute navigation -->
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- BANNER
    ================================================== -->
    <section class="top-position1 p-0">
        <div class="container-fluid px-0">
            <div class="slider-fade1 owl-carousel owl-theme w-100">
                <div class="item bg-img cover-background pt-6 pb-10 pt-sm-6 pb-sm-14 py-md-16 py-lg-20 py-xxl-24 left-overlay-dark"
                     data-overlay-dark="8" data-background="img/banner/slide1.jpg">
                    <div class="container pt-6 pt-md-0">
                        <div class="row align-items-center">
                            <div class="col-md-10 col-lg-8 col-xl-7 mb-1-9 mb-lg-0 py-6 position-relative">
                                <span class="h5 text-secondary">Enjoy smooth learning</span>
                                <h1 class="display-1 font-weight-800 mb-2-6 title text-white">Best Education Template
                                    Ever!</h1>
                                <a href="contact.html" class="butn my-1 mx-1"><i
                                        class="fas fa-plus-circle icon-arrow before"></i><span
                                        class="label">Learn More</span><i
                                        class="fas fa-plus-circle icon-arrow after"></i></a>
                                <a href="courses-list.html" class="butn white my-1"><i
                                        class="fas fa-plus-circle icon-arrow before"></i><span
                                        class="label">Our Courses</span><i
                                        class="fas fa-plus-circle icon-arrow after"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item bg-img cover-background pt-6 pb-10 pt-sm-6 pb-sm-14 py-md-16 py-lg-20 py-xxl-24 left-overlay-dark"
                     data-overlay-dark="8" data-background="img/banner/slide2.jpg">
                    <div class="container pt-6 pt-md-0">
                        <div class="row align-items-center">
                            <div class="col-md-10 col-lg-8 col-xl-7 mb-1-9 mb-lg-0 py-6 position-relative">
                                <span class="h5 text-secondary">Enjoy smooth learning</span>
                                <h2 class="display-1 font-weight-800 mb-2-6 title text-white">Learn From Best Online
                                    Training</h2>
                                <a href="contact.html" class="butn my-1 mx-1"><i
                                        class="fas fa-plus-circle icon-arrow before"></i><span
                                        class="label">Learn More</span><i
                                        class="fas fa-plus-circle icon-arrow after"></i></a>
                                <a href="courses-list.html" class="butn white my-1"><i
                                        class="fas fa-plus-circle icon-arrow before"></i><span
                                        class="label">Our Courses</span><i
                                        class="fas fa-plus-circle icon-arrow after"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item bg-img cover-background pt-6 pb-10 pt-sm-6 pb-sm-14 py-md-16 py-lg-20 py-xxl-24 left-overlay-dark"
                     data-overlay-dark="8" data-background="img/banner/slide3.jpg">
                    <div class="container pt-6 pt-md-0">
                        <div class="row align-items-center">
                            <div class="col-md-10 col-lg-8 col-xl-7 mb-1-9 mb-lg-0 py-6 position-relative">
                                <span class="h5 text-secondary">Enjoy smooth learning</span>
                                <h2 class="display-1 font-weight-800 mb-2-6 title text-white">More than 50+ Online
                                    Courses</h2>
                                <a href="contact.html" class="butn my-1 mx-1"><i
                                        class="fas fa-plus-circle icon-arrow before"></i><span
                                        class="label">Learn More</span><i
                                        class="fas fa-plus-circle icon-arrow after"></i></a>
                                <a href="courses-list.html" class="butn white my-1"><i
                                        class="fas fa-plus-circle icon-arrow before"></i><span
                                        class="label">Our Courses</span><i
                                        class="fas fa-plus-circle icon-arrow after"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="triangle-shape top-15 right-10 z-index-9 d-none d-md-block"></div>
        <div class="square-shape top-25 left-5 z-index-9 d-none d-xl-block"></div>
        <div class="shape-five z-index-9 right-10 bottom-15"></div>
    </section>

    <!-- FAQ
 ================================================== -->
    <section>
        <div class="container">
            <div class="section-heading">
                <h2 class="h1 mb-0">교수님</h2>
                <span class="sub-title">Q&A</span>
            </div>

            <c:forEach items="${postlist}" var = "postlist">
            <div class="row">
                <div class="col-md-10 mx-auto">
                    <div id="accordion1" class="accordion-style1">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#${postlist.id}" aria-expanded="false" aria-controls="${postlist.id}">
                                            ${postlist.subject}
                                    </button>
                                </h5>
                            </div>
                            <div id="${postlist.id}" class="collapse" aria-labelledby="headingOne" data-bs-parent="#accordion">
                                <div class="card-body">
                                    ${postlist.content}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>

            <button type="button" onclick="openInputJSP()" style="margin: 1em; float:right;" class="btn btn-outline-success">Question</button>
                </div>
    </section>

    <!-- FOOTER
    ================================================== -->
    <footer class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-2-5 mb-lg-0">
                    <a href="index.html" class="footer-logo">
                        <img src="img/logos/footer-light-logo.png" class="mb-4" alt="Footer Logo">
                    </a>
                    <p class="mb-1-6 text-white">
                        It's an ideal opportunity to begin investing your energy such that illuminates you.
                    </p>
                    <form class="quform newsletter" action="quform/newsletter-two.php" method="post"
                          enctype="multipart/form-data" onclick="">

                        <div class="quform-elements">

                            <div class="row">

                                <!-- Begin Text input element -->
                                <div class="col-md-12">
                                    <div class="quform-element mb-0">
                                        <div class="quform-input">
                                            <input class="form-control" id="email_address" type="text"
                                                   name="email_address" placeholder="Subscribe with us">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Text input element -->

                                <!-- Begin Submit button -->
                                <div class="col-md-12">
                                    <div class="quform-submit-inner">
                                        <button class="btn btn-white text-primary m-0 px-2" type="submit"><i
                                                class="fas fa-paper-plane"></i></button>
                                    </div>
                                    <div class="quform-loading-wrap text-start"><span class="quform-loading"></span>
                                    </div>
                                </div>
                                <!-- End Submit button -->

                            </div>

                        </div>

                    </form>
                </div>
                <div class="col-md-6 col-lg-2 mb-2-5 mb-lg-0">
                    <div class="ps-md-1-6 ps-lg-1-9">
                        <h3 class="text-primary h5 mb-2-2">About</h3>
                        <ul class="footer-list">
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="courses-list.html">Courses</a></li>
                            <li><a href="instructors.html">Instructor</a></li>
                            <li><a href="event-list.html">Event</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 mb-2-5 mb-md-0">
                    <div class="ps-lg-1-9 ps-xl-2-5">
                        <h3 class="text-primary h5 mb-2-2">Link</h3>
                        <ul class="footer-list">
                            <li><a href="blog-grid.html">News &amp; Blogs</a></li>
                            <li><a href="portfolio.html">Portfolio</a></li>
                            <li><a href="faq.html">FAQ's</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="ps-md-1-9">
                        <h3 class="text-primary h5 mb-2-2">Popular Courses</h3>
                        <div class="media footer-border">
                            <img class="pe-3 border-radius-5" src="img/content/footer-insta-01.jpg" alt="...">
                            <div class="media-body align-self-center">
                                <h4 class="h6 mb-2"><a href="blog-details.html" class="text-white text-primary-hover">Plan
                                    of learning experiences.</a></h4>
                                <span class="text-white small">Mar. 30, 2023</span>
                            </div>
                        </div>
                        <div class="media">
                            <img class="pe-3 border-radius-5" src="img/content/footer-insta-02.jpg" alt="...">
                            <div class="media-body align-self-center">
                                <h4 class="h6 mb-2"><a href="blog-details.html" class="text-white text-primary-hover">A
                                    supportive learning community</a></h4>
                                <span class="text-white small">Mar. 28, 2023</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bar text-center">
                <p class="mb-0 text-white font-weight-500">&copy; <span class="current-year"></span> eLearn Powered by
                    <a href="#!" class="text-secondary">Chitrakoot Web</a></p>
            </div>
        </div>
    </footer>

</div>

<!-- start scroll to top -->
<a href="#!" class="scroll-to-top"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
<!-- end scroll to top -->

<!-- all js include start -->

<!-- jQuery -->
<script src="js/jquery.min.js"></script>

<!-- modernizr js -->
<script src="js/popper.min.js"></script>

<!-- bootstrap -->
<script src="js/bootstrap.min.js"></script>

<!-- search -->
<script src="search/search.js"></script>

<!-- navigation -->
<script src="js/nav-menu.js"></script>

<!-- tab -->
<script src="js/easy.responsive.tabs.js"></script>

<!-- owl carousel -->
<script src="js/owl.carousel.js"></script>

<!-- jquery.counterup.min -->
<script src="js/jquery.counterup.min.js"></script>

<!-- stellar js -->
<script src="js/jquery.stellar.min.js"></script>

<!-- waypoints js -->
<script src="js/waypoints.min.js"></script>

<!-- countdown js -->
<script src="js/countdown.js"></script>

<!-- jquery.magnific-popup js -->
<script src="js/jquery.magnific-popup.min.js"></script>

<!-- lightgallery js -->
<script src="js/lightgallery-all.js"></script>

<!-- mousewheel js -->
<script src="js/jquery.mousewheel.min.js"></script>

<!-- custom scripts -->
<script src="js/main.js"></script>

<!-- form plugins js -->
<script src="quform/js/plugins.js"></script>

<!-- form scripts js -->
<script src="quform/js/scripts.js"></script>

<!-- all js include end -->

</body>

</html>