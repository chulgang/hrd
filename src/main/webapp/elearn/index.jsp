<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=utf-8"
         import="javax.sql.DataSource, java.sql.Connection"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- metas -->
    <meta charset="utf-8" />
    <meta name="author" content="Chitrakoot Web" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="keywords" content="Online Education Learning Template" />
    <meta name="description" content="eLearn - Online Education Learning Template" />

    <!-- title  -->
    <title>eLearn - Online Education Learning Template</title>

    <!-- favicon -->
    <link rel="shortcut icon" href="img/logos/favicon.png" />
    <link rel="apple-touch-icon" href="img/logos/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/apple-touch-icon-114x114.png" />

    <!-- plugins -->
    <link rel="stylesheet" href="css/plugins.css" />

    <!-- search css -->
    <link rel="stylesheet" href="search/search.css" />

    <!-- quform css -->
    <link rel="stylesheet" href="quform/css/base.css">

    <!-- core style css -->
    <link href="css/styles.css" rel="stylesheet" />

    <!-- custom style css -->
    <link href="css/custom.css" rel="stylesheet" />

</head>

<body>
<!--<c:choose>
    <c:when test="${empty dto}">
    </c:when>
    <c:otherwise>
        <font style="color:green" style="align:center">${dto.email}</font>
        님 환영합니당^^
        <br/>
        <a href="logout.do?">로그아웃</a>
    </c:otherwise>
</c:choose>-->
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
                            <input type="text" class="search-form_input form-control" name="s" autocomplete="off" placeholder="Type & hit enter...">
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
                                    <a href="index.jsp" class="navbar-brand"><img id="logo" src="img/logos/logo-inner.png" alt="logo" /></a>
                                    <!-- end logo -->
                                </div>

                                <div class="navbar-toggler bg-primary"></div>

                                <!-- start menu area -->
                                <ul class="navbar-nav ms-auto" id="nav" style="display: none;">
                                    <li><a href="index.jsp">Home</a></li>
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
                                                    <li><a href="blog-grid-two-columns-left-sidebar.html">2 Col – Left Sidebar</a></li>
                                                    <li><a href="blog-grid-two-columns-right-sidebar.html">2 Col – Right Sidebar</a></li>
                                                    <li><a href="blog-grid.html">3 Columns - Standard</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="blog-list.html">Blog List</a></li>
                                            <li><a href="blog-details.html">Blog Details</a></li>
                                        </ul>
                                    </li>

                                    <c:choose>
                                        <c:when test="${empty dto}">
                                            <li><a href="contact.jsp">회원가입</a></li>
                                            <li><a href="login.jsp">로그인</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="users/myPageForm.do">마이페이지</a></li>
                                            <li><a href="users/logout.do">로그아웃</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                                </ul>
                                <!-- end menu area -->

                                <!-- start attribute navigation -->
                                <div class="attr-nav align-items-xl-center ms-xl-auto main-font">
                                    <ul>
                                        <li class="search"><a href="#!"><i class="fas fa-search"></i></a></li>
                                        <li class="d-none d-xl-inline-block"><a href="contact.jsp" class="butn md text-white"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Apply Now</span><i class="fas fa-plus-circle icon-arrow after"></i></a></li>
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
                <div class="item bg-img cover-background pt-6 pb-10 pt-sm-6 pb-sm-14 py-md-16 py-lg-20 py-xxl-24 left-overlay-dark" data-overlay-dark="8" data-background="img/banner/slide1.jpg">
                    <div class="container pt-6 pt-md-0">
                        <div class="row align-items-center">
                            <div class="col-md-10 col-lg-8 col-xl-7 mb-1-9 mb-lg-0 py-6 position-relative">
                                <span class="h5 text-secondary">Enjoy smooth learning</span>
                                <h1 class="display-1 font-weight-800 mb-2-6 title text-white">Best Education Template Ever!</h1>
                                <a href="contact.jsp" class="butn my-1 mx-1"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Learn More</span><i class="fas fa-plus-circle icon-arrow after"></i></a>
                                <a href="courses-list.html" class="butn white my-1"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Our Courses</span><i class="fas fa-plus-circle icon-arrow after"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item bg-img cover-background pt-6 pb-10 pt-sm-6 pb-sm-14 py-md-16 py-lg-20 py-xxl-24 left-overlay-dark" data-overlay-dark="8" data-background="img/banner/slide2.jpg">
                    <div class="container pt-6 pt-md-0">
                        <div class="row align-items-center">
                            <div class="col-md-10 col-lg-8 col-xl-7 mb-1-9 mb-lg-0 py-6 position-relative">
                                <span class="h5 text-secondary">Enjoy smooth learning</span>
                                <h2 class="display-1 font-weight-800 mb-2-6 title text-white">Learn From Best Online Training</h2>
                                <a href="contact.jsp" class="butn my-1 mx-1"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Learn More</span><i class="fas fa-plus-circle icon-arrow after"></i></a>
                                <a href="courses-list.html" class="butn white my-1"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Our Courses</span><i class="fas fa-plus-circle icon-arrow after"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item bg-img cover-background pt-6 pb-10 pt-sm-6 pb-sm-14 py-md-16 py-lg-20 py-xxl-24 left-overlay-dark" data-overlay-dark="8" data-background="img/banner/slide3.jpg">
                    <div class="container pt-6 pt-md-0">
                        <div class="row align-items-center">
                            <div class="col-md-10 col-lg-8 col-xl-7 mb-1-9 mb-lg-0 py-6 position-relative">
                                <span class="h5 text-secondary">Enjoy smooth learning</span>
                                <h2 class="display-1 font-weight-800 mb-2-6 title text-white">More than 50+ Online Courses</h2>
                                <a href="contact.jsp" class="butn my-1 mx-1"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Learn More</span><i class="fas fa-plus-circle icon-arrow after"></i></a>
                                <a href="courses-list.html" class="butn white my-1"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Our Courses</span><i class="fas fa-plus-circle icon-arrow after"></i></a>
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

    <!-- INFORMATION
    ================================================== -->
    <section class="p-0 overflow-visible service-block">
        <div class="container">
            <div class="row mt-n1-9">
                <div class="col-md-6 col-lg-4 mt-1-9">
                    <div class="card card-style3 h-100">
                        <div class="card-body px-1-9 py-2-3">
                            <div class="mb-3 d-flex align-items-center">
                                <div class="card-icon">
                                    <i class="ti-rocket"></i>
                                </div>
                                <h4 class="ms-4 mb-0">Learn Anything</h4>
                            </div>
                            <div>
                                <p class="mb-3">It was popularised in the 1960s with the release of Letraset sheets containing.</p>
                                <a href="about.html" class="butn-style1 secondary">View More +</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mt-1-9">
                    <div class="card card-style3 h-100">
                        <div class="card-body px-1-9 py-2-3">
                            <div class="mb-3 d-flex align-items-center">
                                <div class="card-icon">
                                    <i class="ti-world"></i>
                                </div>
                                <h4 class="ms-4 mb-0">Learn Together</h4>
                            </div>
                            <div>
                                <p class="mb-3">It was popularised in the 1960s with the release of Letraset sheets containing.</p>
                                <a href="about.html" class="butn-style1 secondary">View More +</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mt-1-9">
                    <div class="card card-style3 h-100">
                        <div class="card-body px-1-9 py-2-3">
                            <div class="mb-3 d-flex align-items-center">
                                <div class="card-icon">
                                    <i class="ti-user"></i>
                                </div>
                                <h4 class="ms-4 mb-0">Learn Experts</h4>
                            </div>
                            <div>
                                <p class="mb-3">It was popularised in the 1960s with the release of Letraset sheets containing.</p>
                                <a href="about.html" class="butn-style1 secondary">View More +</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ABOUTUS
    ================================================== -->
    <section class="aboutus-style-01 position-relative">
        <div class="container pt-lg-4">
            <div class="row align-items-center mt-n1-9">
                <div class="col-md-12 col-lg-6 mt-1-9 order-2 order-lg-1">
                    <div class="position-relative">
                        <div class="position-relative">
                            <div class="image-hover">
                                <img src="img/content/about-03.jpg" alt="..." class="ps-sm-10 position-relative z-index-1">
                            </div>
                            <img src="img/content/about-02.jpg" alt="..." class="img-2 d-none d-xl-block">
                            <img src="img/bg/bg-07.png" class="bg-shape1 d-none d-sm-block" alt="...">
                        </div>
                        <div class="d-none d-sm-block">
                            <div class="about-text">
                                <div class="about-counter">
                                    <span class="countup">9</span> +
                                </div>
                                <p>YEARS EXPERIENCE JUST ACHIVED</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-6 mt-1-9 order-2 order-lg-1">
                    <div class="section-heading text-start mb-2">
                        <span class="sub-title">welcome!</span>
                    </div>
                    <h2 class="font-weight-800 h1 mb-1-9 text-primary">Learn whenever, anyplace, at your own speed.</h2>
                    <p class="about-border lead fst-italic mb-1-9">A spot to furnish understudies with sufficient information and abilities in an unpredictable world.</p>
                    <blockquote>
                        There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.
                    </blockquote>
                    <div class="dotted-seprator pt-1-9 mt-1-9"></div>
                    <div class="row">
                        <div class="col-sm-6 col-12 mb-3 mb-sm-0">
                            <div class="media">
                                <i class="ti-mobile display-15 text-secondary"></i>
                                <div class="media-body align-self-center ms-3">
                                    <h4 class="mb-1 h5">Phone Number</h4>
                                    <p class="mb-0">(123)-456-789</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-12">
                            <div class="media">
                                <i class="ti-email display-15 text-secondary"></i>
                                <div class="media-body align-self-center ms-3">
                                    <h4 class="mb-1 h5">Email Address</h4>
                                    <p class="mb-0">Info@mail.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="shape18">
                <img src="img/bg/bg-01.jpg" alt="...">
            </div>
            <div class="shape20">
                <img src="img/bg/bg-02.jpg" alt="...">
            </div>
        </div>
    </section>

    <!-- ONLINE COURSES
    ================================================== -->
    <section class="bg-very-light-gray">
        <div class="container">
            <div class="section-heading">
                <span class="sub-title">discover new</span>
                <h2 class="h1 mb-0">Our Online Courses</h2>
            </div>
            <div class="row g-xxl-5 mt-n2-6">
                <div class="col-md-6 col-xl-4 mt-2-6">
                    <div class="card card-style1 p-0 h-100">
                        <div class="card-img rounded-0">
                            <div class="image-hover">
                                <img class="rounded-top" src="img/content/courses-01.jpg" alt="...">
                            </div>
                            <a href="courses-list.html" class="course-tag">Business</a>
                            <a href="#!"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="card-body position-relative pt-0 px-1-9 pb-1-9">
                            <div class="card-author d-flex">
                                <div class="avatar">
                                    <img class="rounded-circle" src="img/avatar/avatar-01.jpg" alt="...">
                                </div>
                                <h4 class="mb-0 h6">Elijah Lions</h4>
                            </div>
                            <div class="pt-6">
                                <h3 class="h4 mb-4"><a href="course-details.html">Figuring out how to compose as an expert creator</a></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="display-30"><i class="ti-agenda me-2"></i>10 Lessons</div>
                                    <div class="display-30"><i class="ti-user me-2"></i>23</div>
                                    <div class="display-30"><i class="fas fa-star me-1 display-32 text-warning"></i>5.00(1)</div>
                                </div>
                                <div class="dotted-seprator pt-4 mt-4 d-flex justify-content-between align-items-center">
                                    <span class="badge-soft">all levels</span>
                                    <h5 class="text-primary mb-0">$55.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-4 mt-2-6">
                    <div class="card card-style1 p-0 h-100">
                        <div class="card-img rounded-0 border-color-secondary">
                            <div class="image-hover">
                                <img class="rounded-top" src="img/content/courses-02.jpg" alt="...">
                            </div>
                            <a href="courses-list.html" class="course-tag secondary">Design</a>
                            <a href="#!"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="card-body position-relative pt-0 px-1-9 pb-1-9">
                            <div class="card-author d-flex">
                                <div class="avatar">
                                    <img class="rounded-circle" src="img/avatar/avatar-02.jpg" alt="...">
                                </div>
                                <h4 class="mb-0 h6">Georgia Train</h4>
                            </div>
                            <div class="pt-6">
                                <h3 class="h4 mb-4"><a href="course-details.html">Configuration instruments for communication</a></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="display-30"><i class="ti-agenda me-2"></i>09 Lessons</div>
                                    <div class="display-30"><i class="ti-user me-2"></i>15</div>
                                    <div class="display-30"><i class="fas fa-star me-1 display-32 text-warning"></i>4.00(2)</div>
                                </div>
                                <div class="dotted-seprator pt-4 mt-4 d-flex justify-content-between align-items-center">
                                    <span class="badge-soft secondary">beginner</span>
                                    <h5 class="text-secondary mb-0">$35.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-4 mt-2-6">
                    <div class="card card-style1 p-0 h-100">
                        <div class="card-img rounded-0">
                            <div class="image-hover">
                                <img class="rounded-top" src="img/content/courses-03.jpg" alt="...">
                            </div>
                            <a href="courses-list.html" class="course-tag">Network</a>
                            <a href="#!"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="card-body position-relative pt-0 px-1-9 pb-1-9">
                            <div class="card-author d-flex">
                                <div class="avatar">
                                    <img class="rounded-circle" src="img/avatar/avatar-03.jpg" alt="...">
                                </div>
                                <h4 class="mb-0 h6">Christian Hope</h4>
                            </div>
                            <div class="pt-6">
                                <h3 class="h4 mb-4"><a href="course-details.html">Introduction to community training course</a></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="display-30"><i class="ti-agenda me-2"></i>20 Lessons</div>
                                    <div class="display-30"><i class="ti-user me-2"></i>20</div>
                                    <div class="display-30"><i class="fas fa-star me-1 display-32 text-warning"></i>5.00(3)</div>
                                </div>
                                <div class="dotted-seprator pt-4 mt-4 d-flex justify-content-between align-items-center">
                                    <span class="badge-soft">Expert</span>
                                    <h5 class="text-primary mb-0">$99.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-4 mt-2-6">
                    <div class="card card-style1 p-0 h-100">
                        <div class="card-img rounded-0 border-color-secondary">
                            <div class="image-hover">
                                <img class="rounded-top" src="img/content/courses-04.jpg" alt="...">
                            </div>
                            <a href="courses-list.html" class="course-tag secondary">Photography</a>
                            <a href="#!"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="card-body position-relative pt-0 px-1-9 pb-1-9">
                            <div class="card-author d-flex">
                                <div class="avatar">
                                    <img class="rounded-circle" src="img/avatar/avatar-04.jpg" alt="...">
                                </div>
                                <h4 class="mb-0 h6">Reema Hawadah</h4>
                            </div>
                            <div class="pt-6">
                                <h3 class="h4 mb-4"><a href="course-details.html">Fashion photography from professional</a></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="display-30"><i class="ti-agenda me-2"></i>05 Lessons</div>
                                    <div class="display-30"><i class="ti-user me-2"></i>40</div>
                                    <div class="display-30"><i class="fas fa-star me-1 display-32 text-warning"></i>4.00(5)</div>
                                </div>
                                <div class="dotted-seprator pt-4 mt-4 d-flex justify-content-between align-items-center">
                                    <span class="badge-soft secondary">all levels</span>
                                    <h5 class="text-secondary mb-0">$39.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-4 mt-2-6">
                    <div class="card card-style1 p-0 h-100">
                        <div class="card-img rounded-0">
                            <div class="image-hover">
                                <img class="rounded-top" src="img/content/courses-05.jpg" alt="...">
                            </div>
                            <a href="courses-list.html" class="course-tag">Music</a>
                            <a href="#!"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="card-body position-relative pt-0 px-1-9 pb-1-9">
                            <div class="card-author d-flex">
                                <div class="avatar">
                                    <img class="rounded-circle" src="img/avatar/avatar-05.jpg" alt="...">
                                </div>
                                <h4 class="mb-0 h6">Sherrifah Shahd</h4>
                            </div>
                            <div class="pt-6">
                                <h3 class="h4 mb-4"><a href="course-details.html">Becoming a DJ? make electronic music</a></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="display-30"><i class="ti-agenda me-2"></i>07 Lessons</div>
                                    <div class="display-30"><i class="ti-user me-2"></i>50</div>
                                    <div class="display-30"><i class="fas fa-star me-1 display-32 text-warning"></i>4.50(7)</div>
                                </div>
                                <div class="dotted-seprator pt-4 mt-4 d-flex justify-content-between align-items-center">
                                    <span class="badge-soft">beginner</span>
                                    <h5 class="text-primary mb-0">$20.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-xl-4 mt-2-6">
                    <div class="card card-style1 p-0 h-100">
                        <div class="card-img rounded-0 border-color-secondary">
                            <div class="image-hover">
                                <img class="rounded-top" src="img/content/courses-06.jpg" alt="...">
                            </div>
                            <a href="courses-list.html" class="course-tag secondary">Finance</a>
                            <a href="#!"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="card-body position-relative pt-0 px-1-9 pb-1-9">
                            <div class="card-author d-flex">
                                <div class="avatar">
                                    <img class="rounded-circle" src="img/avatar/avatar-06.jpg" alt="...">
                                </div>
                                <h4 class="mb-0 h6">Blake Nathan</h4>
                            </div>
                            <div class="pt-6">
                                <h3 class="h4 mb-4"><a href="course-details.html">Financial security thinking & principles</a></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="display-30"><i class="ti-agenda me-2"></i>10 Lessons</div>
                                    <div class="display-30"><i class="ti-user me-2"></i>23</div>
                                    <div class="display-30"><i class="fas fa-star me-1 display-32 text-warning"></i>5.00(1)</div>
                                </div>
                                <div class="dotted-seprator pt-4 mt-4 d-flex justify-content-between align-items-center">
                                    <span class="badge-soft secondary">expert</span>
                                    <h5 class="text-secondary mb-0">$129.00</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- TRENDING CATEGORIES
    ================================================== -->
    <section class="bg-img cover-background dark-overlay" data-overlay-dark="8" data-background="img/bg/bg-06.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-heading text-center">
                        <span class="sub-title">Instructors</span>
                        <h2 class="h1 mb-0">Popular Categories</h2>
                    </div>
                </div>
            </div>
            <div class="row mt-n1-9">
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-09.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Chemistry</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-10.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Physics</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-11.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Language</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-12.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Business</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-08.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Photography</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-07.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Rocket Science</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-06.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Math</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-3 mt-1-9">
                    <a href="courses-list.html" class="category-item-01">
                        <div class="category-img">
                            <img src="img/icons/icon-05.png" alt="">
                        </div>
                        <div class="ms-3">
                            <h3 class="h4 mb-0 text-white">Food &amp; recipe</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- ONLINE INSTRUCTORS
    ================================================== -->
    <section class="bg-very-light-gray position-relative">
        <div class="container">
            <div class="section-heading">
                <span class="sub-title">Instructors</span>
                <h2 class="h1 mb-0">Experience Instructors</h2>
            </div>
            <div class="row position-relative mt-n1-9">
                <div class="col-md-6 col-lg-4 mt-1-9">
                    <div class="team-style1 text-center">
                        <img src="img/team/team-01.jpg" class="border-radius-5" alt="...">
                        <div class="team-info">
                            <h3 class="text-primary mb-1 h4">Murilo Souza</h3>
                            <span class="font-weight-600 text-secondary">Web Designer</span>
                        </div>
                        <div class="team-overlay">
                            <div class="d-table h-100 w-100">
                                <div class="d-table-cell align-middle">
                                    <h3><a href="instructors-details.html" class="text-white">About Murilo Souza</a></h3>
                                    <p class="text-white mb-0">I preserve each companion certification and I'm an authorized AWS solutions architect professional.</p>
                                    <ul class="social-icon-style1">
                                        <li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-youtube"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-linkedin-in"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mt-1-9">
                    <div class="team-style1 text-center">
                        <img src="img/team/team-02.jpg" class="border-radius-5" alt="...">
                        <div class="team-info">
                            <h3 class="text-primary mb-1 h4">Balsam Samira</h3>
                            <span class="font-weight-600 text-secondary">Photographer</span>
                        </div>
                        <div class="team-overlay">
                            <div class="d-table h-100 w-100">
                                <div class="d-table-cell align-middle">
                                    <h3><a href="instructors-details.html" class="text-white">About Balsam Samira</a></h3>
                                    <p class="text-white mb-0">I preserve each companion certification and I'm an authorized AWS solutions architect professional.</p>
                                    <ul class="social-icon-style1">
                                        <li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-youtube"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-linkedin-in"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mt-1-9">
                    <div class="team-style1 text-center">
                        <img src="img/team/team-03.jpg" class="border-radius-5" alt="...">
                        <div class="team-info">
                            <h3 class="text-primary mb-1 h4">Rodrigo Ribeiro</h3>
                            <span class="font-weight-600 text-secondary">Psychologist</span>
                        </div>
                        <div class="team-overlay">
                            <div class="d-table h-100 w-100">
                                <div class="d-table-cell align-middle">
                                    <h3><a href="instructors-details.html" class="text-white">About Rodrigo Ribeiro</a></h3>
                                    <p class="text-white mb-0">I preserve each companion certification and I'm an authorized AWS solutions architect professional.</p>
                                    <ul class="social-icon-style1">
                                        <li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-youtube"></i></a></li>
                                        <li><a href="#!"><i class="fab fa-linkedin-in"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="team-bg-shape d-none d-xl-block">
                    <img src="img/bg/bg-07.png" alt="...">
                </div>
            </div>
            <div class="shape18">
                <img src="img/bg/bg-01.jpg" alt="...">
            </div>
            <div class="shape20">
                <img src="img/bg/bg-02.jpg" alt="...">
            </div>
            <div class="shape21">
                <img src="img/bg/bg-03.jpg" alt="...">
            </div>
        </div>
    </section>

    <!-- WHY CHOOSE US
    ================================================== -->
    <section>
        <div class="container">
            <div class="row align-items-center mt-n1-9">
                <div class="col-lg-6 mt-1-9">
                    <div class="why-choose-img position-relative">
                        <img class="border-radius-5" src="img/content/why-choose-img.jpg" alt="...">
                        <div class="position-absolute top-50 start-50 translate-middle story-video">
                            <a class="video video_btn" href="https://www.youtube.com/watch?v=ZPs3URGs0KQ"><i class="fas fa-play font-size22"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mt-1-9">
                    <div class="why-choose-content">
                        <div class="mb-1-9">
                            <h2 class="h1 mb-2 text-primary">Our Facilities</h2>
                            <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisic sed eius to mod tempor incididunt.</p>
                        </div>
                        <div class="media">
                            <i class="ti-panel display-15 text-secondary"></i>
                            <div class="media-body ps-3">
                                <h4 class="h5 font-weight-700 mb-1 mb-md-2">Self Registration</h4>
                                <p class="mb-0 w-lg-90">
                                    A getting to know gadgets based totally on formalised coaching however with the assist of digital resources.
                                </p>
                            </div>
                        </div>
                        <div class="dotted-seprator pt-1-9 mt-1-9"></div>
                        <div class="media">
                            <i class="ti-package display-15 text-secondary"></i>
                            <div class="media-body ps-3">
                                <h4 class="h5 font-weight-700 mb-1 mb-md-2">Accreditation Support</h4>
                                <p class="mb-0 w-lg-90">
                                    A getting to know gadgets based totally on formalised coaching however with the assist of digital resources.
                                </p>
                            </div>
                        </div>
                        <div class="dotted-seprator pt-1-9 mt-1-9"></div>
                        <div class="media">
                            <i class="ti-bookmark-alt display-15 text-secondary"></i>
                            <div class="media-body ps-3">
                                <h4 class="h5 font-weight-700 mb-1 mb-md-2">Brand Integration</h4>
                                <p class="mb-0 w-lg-90">
                                    A getting to know gadgets based totally on formalised coaching however with the assist of digital resources.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- COUNTER
    ================================================== -->
    <section class="pt-0">
        <div class="container">
            <div class="row mt-n1-9">
                <div class="col-sm-6 col-lg-3 mt-1-9">
                    <div class="counter-wrapper">
                        <div class="counter-icon">
                            <div class="d-table-cell align-middle">
                                <img src="img/icons/icon-01.png" class="w-55px" alt="...">
                            </div>
                        </div>
                        <div class="counter-content">
                            <h4 class="counter-number">
                                <span class="countup">78</span>+
                            </h4>
                            <p class="mb-0 font-weight-600">Classess Complete</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3 mt-1-9">
                    <div class="counter-wrapper">
                        <div class="counter-icon">
                            <div class="d-table-cell align-middle">
                                <img src="img/icons/icon-02.png" class="w-55px" alt="...">
                            </div>
                        </div>
                        <div class="counter-content">
                            <h4 class="counter-number">
                                <span class="countup">20</span>k
                            </h4>
                            <p class="mb-0 font-weight-600">Total Students</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3 mt-1-9">
                    <div class="counter-wrapper">
                        <div class="counter-icon">
                            <div class="d-table-cell align-middle">
                                <img src="img/icons/icon-03.png" class="w-55px" alt="...">
                            </div>
                        </div>
                        <div class="counter-content">
                            <h4 class="counter-number">
                                <span class="countup">400</span>k
                            </h4>
                            <p class="mb-0 font-weight-600">Libary Books</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3 mt-1-9">
                    <div class="counter-wrapper">
                        <div class="counter-icon">
                            <div class="d-table-cell align-middle">
                                <img src="img/icons/icon-04.png" class="w-55px" alt="...">
                            </div>
                        </div>
                        <div class="counter-content">
                            <h4 class="counter-number">
                                <span class="countup">1200</span>+
                            </h4>
                            <p class="mb-0 font-weight-600">Certified Teachers</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- TESTIMONIAL
    ================================================== -->
    <section class="bg-light">
        <div class="container">
            <div class="section-heading">
                <span class="sub-title">testimonial</span>
                <h2 class="h1 mb-0">What Educators Say About Us!</h2>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8 position-relative">
                    <div class="testimonial-carousel text-center owl-carousel owl-theme">
                        <div>
                            <p class="mb-1-9 mb-lg-6 lead">Loan was worth a fortune to my company. I didn't even need training. I am really satisfied with my loan. Loan has got everything I need. We've used loan for the last five years.</p>
                            <h6 class="mb-0 h5">Callum Lissa <small class="text-primary"> - Founder</small></h6>
                        </div>
                        <div>
                            <p class="mb-1-9 mb-lg-6 lead">Loan is the next killer app. We can't understand how we've been living without loan. It's exactly what I've been looking for. Wow what great service, I love it! Buy this now. Loan is both attractive and highly adaptable.</p>
                            <h6 class="mb-0 h5">Bethany Nichols <small class="text-primary"> - General Manager</small></h6>
                        </div>
                        <div>
                            <p class="mb-1-9 mb-lg-6 lead">Thank you so much for your help. Loan saved my business. Without loan, we would have gone bankrupt by now. Loan is worth much more than I paid. I can't say enough about loan. The very best. I have gotten at least 50 times the value from loan.</p>
                            <h6 class="mb-0 h5">Lily Hogben <small class="text-primary"> - CEO</small></h6>
                        </div>
                    </div>
                    <h6 class="testimonial-quote">“</h6>
                </div>
            </div>
        </div>
        <div>
            <img src="img/avatar/avatar-01.jpg" class="position-absolute bottom-15 left-20 d-none d-lg-block rounded-circle w-40px" alt="...">
            <img src="img/avatar/avatar-02.jpg" class="position-absolute bottom-40 left-10 d-none d-lg-block rounded-circle" alt="...">
            <img src="img/avatar/avatar-03.jpg" class="position-absolute left-20 top-20 d-none d-lg-block rounded-circle w-60px" alt="...">
            <img src="img/avatar/avatar-04.jpg" class="position-absolute top-45 right-10 d-none d-lg-block rounded-circle" alt="...">
            <img src="img/avatar/avatar-05.jpg" class="position-absolute top-25 right-20 d-none d-lg-block rounded-circle w-40px" alt="...">
            <img src="img/avatar/avatar-06.jpg" class="position-absolute bottom-15 right-15 d-none d-lg-block rounded-circle" alt="...">
        </div>
        <div class="shape21">
            <img src="img/bg/bg-03.jpg" alt="...">
        </div>
        <span class="process-left-shape d-none d-sm-block"></span>
    </section>

    <!-- PROCESS
    ================================================== -->
    <section>
        <div class="container">
            <div class="section-heading">
                <span class="sub-title">process</span>
                <h2 class="h1 mb-0">How It Works?</h2>
            </div>
            <div class="row">
                <div class="process-wrapper">
                    <div class="process-background"></div>
                    <div class="process-content-wrapper">
                        <div class="row mt-n1-9">
                            <div class="col-lg-3 mt-1-9">
                                <div class="process-content">
                                    <div class="mb-1-6 mb-lg-1-9">
                                        <img src="img/content/process-01.png" alt="...">
                                    </div>
                                    <h3 class="h4">Students</h3>
                                    <p class="mb-0">Use of technology to empower individuals adapt anyplace and whenever.</p>
                                </div>
                            </div>
                            <div class="col-lg-3 mt-1-9">
                                <div class="process-content">
                                    <div class="mb-1-6 mb-lg-1-9">
                                        <img src="img/content/process-02.png" alt="...">
                                    </div>
                                    <h3 class="h4">Teachers</h3>
                                    <p class="mb-0">Use of technology to empower individuals adapt anyplace and whenever.</p>
                                </div>
                            </div>
                            <div class="col-lg-3 mt-1-9">
                                <div class="process-content">
                                    <div class="mb-1-6 mb-lg-1-9">
                                        <img src="img/content/process-03.png" alt="...">
                                    </div>
                                    <h3 class="h4">Helpful Staff</h3>
                                    <p class="mb-0">Use of technology to empower individuals adapt anyplace and whenever.</p>
                                </div>
                            </div>
                            <div class="col-lg-3 mt-1-9">
                                <div class="process-content">
                                    <div class="mb-1-6 mb-lg-1-9">
                                        <img src="img/content/process-04.png" alt="...">
                                    </div>
                                    <h3 class="h4">Academic Staff</h3>
                                    <p class="mb-0">Use of technology to empower individuals adapt anyplace and whenever.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- UPCOMING EVENT
    ================================================== -->
    <section class="bg-very-light-gray">
        <div class="container">
            <div class="section-heading">
                <span class="sub-title">latest events</span>
                <h2 class="h1 mb-0">Our Upcoming Events</h2>
            </div>
            <div class="row g-xxl-5 mt-n2-9">
                <div class="col-xl-6 mt-2-9">
                    <div class="row g-0 event-wrapper">
                        <div class="col-md-5 event-img bg-img cover-background" data-background="img/content/event-01.jpg">
                        </div>
                        <div class="col-md-7">
                            <div class="p-1-6 p-sm-1-9">
                                <span class="badge-soft mb-3">art competition</span>
                                <h4 class="font-weight-800 h5 mb-3"><a href="event-details.html">Graphics design conference</a></h4>
                                <p class="mb-3 alt-font font-weight-500">Attend the activities and analyze treasured recommendations from the pinnacle eLearn professionals.</p>
                                <div class="dotted-seprator pt-4 mt-4"></div>
                                <div class="d-flex justify-content-between align-items-center">
                                    <p class="mb-0 text-primary font-weight-600"><i class="ti-calendar me-2"></i><span class="text-primary"> 30 Mar. 2023</span></p>
                                    <p class="mb-0 text-primary font-weight-600"><i class="ti-location-pin me-2"></i><span class="text-primary">London</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 mt-2-9">
                    <div class="row g-0 event-wrapper">
                        <div class="col-md-5 event-img bg-img cover-background" data-background="img/content/event-02.jpg">
                        </div>
                        <div class="col-md-7">
                            <div class="p-1-6 p-sm-1-9">
                                <span class="badge-soft secondary mb-3">Learning english</span>
                                <h4 class="font-weight-800 h5 mb-3"><a href="event-details.html">Important learning english</a></h4>
                                <p class="mb-3 alt-font font-weight-500">Attend the activities and analyze treasured recommendations from the pinnacle eLearn professionals.</p>
                                <div class="dotted-seprator pt-4 mt-4"></div>
                                <div class="d-flex justify-content-between align-items-center">
                                    <p class="mb-0 text-secondary font-weight-600"><i class="ti-calendar me-2"></i><span class="text-secondary"> 01 Apr. 2023</span></p>
                                    <p class="mb-0 text-secondary font-weight-600"><i class="ti-location-pin me-2"></i><span class="text-secondary">London</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 mt-2-9">
                    <div class="row g-0 event-wrapper">
                        <div class="col-md-5 event-img bg-img cover-background" data-background="img/content/event-03.jpg">
                        </div>
                        <div class="col-md-7">
                            <div class="p-1-6 p-sm-1-9">
                                <span class="badge-soft mb-3">creative day</span>
                                <h4 class="font-weight-800 h5 mb-3"><a href="event-details.html">Annual creative meetup</a></h4>
                                <p class="mb-3 alt-font font-weight-500">Attend the activities and analyze treasured recommendations from the pinnacle eLearn professionals.</p>
                                <div class="dotted-seprator pt-4 mt-4"></div>
                                <div class="d-flex justify-content-between align-items-center">
                                    <p class="mb-0 text-primary font-weight-600"><i class="ti-calendar me-2"></i><span class="text-primary"> 02 Apr. 2023</span></p>
                                    <p class="mb-0 text-primary font-weight-600"><i class="ti-location-pin me-2"></i><span class="text-primary">London</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 mt-2-9">
                    <div class="row g-0 event-wrapper">
                        <div class="col-md-5 event-img bg-img cover-background" data-background="img/content/event-04.jpg">
                        </div>
                        <div class="col-md-7">
                            <div class="p-1-6 p-sm-1-9">
                                <span class="badge-soft secondary mb-3">art competition</span>
                                <h4 class="font-weight-800 h5 mb-3"><a href="event-details.html">Digital arts and reshaping</a></h4>
                                <p class="mb-3 alt-font font-weight-500">Attend the activities and analyze treasured recommendations from the pinnacle eLearn professionals.</p>
                                <div class="dotted-seprator pt-4 mt-4"></div>
                                <div class="d-flex justify-content-between align-items-center">
                                    <p class="mb-0 text-secondary font-weight-600"><i class="ti-calendar me-2"></i><span class="text-secondary"> 03 Apr. 2023</span></p>
                                    <p class="mb-0 text-secondary font-weight-600"><i class="ti-location-pin me-2"></i><span class="text-secondary">London</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- BLOG
    ================================================== -->
    <section class="position-relative">
        <div class="container">
            <div class="section-heading">
                <span class="sub-title">our news</span>
                <h2 class="h1 mb-0">Our Latest Blog</h2>
            </div>
            <div class="row g-5">
                <div class="col-lg-6 col-xl-4">
                    <article class="blog-style1 position-relative d-block mb-0">
                        <div class="img-holder position-relative d-block">
                            <div class="image-hover">
                                <img src="img/blog/blog-01.jpg" alt="...">
                            </div>
                        </div>
                        <div class="text-holder">
                            <div class="category-box">
                                <a href="#!">creative</a>
                            </div>
                            <h3 class="display-25 font-weight-700 mb-3"><a href="blog-details.html">Skills that you can learn from eLearn.</a></h3>
                            <div><p>Duty obligations of business frequently occur pleasures enjoy...</p></div>
                            <div class="bottom-box">
                                <div class="btn-box">
                                    <a href="blog-details.html">
                                        <span class="icon-right-arrow-1"></span>Read More
                                    </a>
                                </div>
                                <ul class="mb-0 ps-0">
                                    <li><span class="icon-calendar"></span>6 Jul 2023</li>
                                </ul>
                            </div>
                        </div>
                    </article>
                </div>

                <div class="col-lg-6 col-xl-4 d-none d-lg-block">
                    <div>
                        <div class="image-hover">
                            <img src="img/blog/blog-07.jpg" alt="...">
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="blog-style1 blog-two-style1 mb-1-9 h-auto">
                        <div class="text-holder">
                            <div class="category-box">
                                <a href="#!">Learning</a>
                            </div>
                            <h3 class="display-25 font-weight-700 mb-3"><a href="blog-details.html">Is eLearn any good? 7 ways you can be certain.</a></h3>
                            <div class="bottom-box">
                                <div class="btn-box">
                                    <a href="blog-details.html">
                                        <span class="icon-right-arrow-1"></span>Read More
                                    </a>
                                </div>
                                <div class="meta-info">
                                    <ul class="mb-0 ps-0">
                                        <li><span class="icon-calendar"></span>4 Jul 2023</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="blog-style1 blog-two-style1 h-auto">
                        <div class="text-holder">
                            <div class="category-box">
                                <a href="#!">Career</a>
                            </div>
                            <h3 class="display-25 font-weight-700 mb-3">
                                <a href="blog-details.html">How will eLearn be in the future.</a>
                            </h3>
                            <div class="bottom-box">
                                <div class="btn-box">
                                    <a href="blog-details.html">
                                        <span class="icon-right-arrow-1"></span>Read More
                                    </a>
                                </div>
                                <div class="meta-info">
                                    <ul class="mb-0 ps-0">
                                        <li><span class="icon-calendar"></span>2 Jul 2023</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PARTNER
    ================================================== -->
    <section class="bg-very-light-gray py-8">
        <div class="container">
            <div class="client-carousel owl-carousel owl-theme">
                <div class="text-center">
                    <img src="img/partners/partner-01.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-02.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-03.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-04.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-05.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-06.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-07.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-08.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-09.jpg" alt="...">
                </div>
                <div class="text-center">
                    <img src="img/partners/partner-10.jpg" alt="...">
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER
    ================================================== -->
    <footer class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-2-5 mb-lg-0">
                    <a href="index.jsp" class="footer-logo">
                        <img src="img/logos/footer-light-logo.png" class="mb-4" alt="Footer Logo">
                    </a>
                    <p class="mb-1-6 text-white">
                        It's an ideal opportunity to begin investing your energy such that illuminates you.
                    </p>
                    <form class="quform newsletter" action="quform/newsletter-two.php" method="post" enctype="multipart/form-data" onclick="">

                        <div class="quform-elements">

                            <div class="row">

                                <!-- Begin Text input element -->
                                <div class="col-md-12">
                                    <div class="quform-element mb-0">
                                        <div class="quform-input">
                                            <input class="form-control" id="email_address" type="text" name="email_address" placeholder="Subscribe with us">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Text input element -->

                                <!-- Begin Submit button -->
                                <div class="col-md-12">
                                    <div class="quform-submit-inner">
                                        <button class="btn btn-white text-primary m-0 px-2" type="submit"><i class="fas fa-paper-plane"></i></button>
                                    </div>
                                    <div class="quform-loading-wrap text-start"><span class="quform-loading"></span></div>
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
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="ps-md-1-9">
                        <h3 class="text-primary h5 mb-2-2">Popular Courses</h3>
                        <div class="media footer-border">
                            <img class="pe-3 border-radius-5" src="img/content/footer-insta-01.jpg" alt="...">
                            <div class="media-body align-self-center">
                                <h4 class="h6 mb-2"><a href="blog-details.html" class="text-white text-primary-hover">Plan of learning experiences.</a></h4>
                                <span class="text-white small">Mar. 30, 2023</span>
                            </div>
                        </div>
                        <div class="media">
                            <img class="pe-3 border-radius-5" src="img/content/footer-insta-02.jpg" alt="...">
                            <div class="media-body align-self-center">
                                <h4 class="h6 mb-2"><a href="blog-details.html" class="text-white text-primary-hover">A supportive learning community</a></h4>
                                <span class="text-white small">Mar. 28, 2023</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bar text-center">
                <p class="mb-0 text-white font-weight-500">&copy; <span class="current-year"></span> eLearn Powered by <a href="#!" class="text-secondary">Chitrakoot Web</a></p>
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