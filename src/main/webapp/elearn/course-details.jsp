<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="org.chulgang.hrd.course.dto.GetCourseResponse" %>
<%@ page import="static org.chulgang.hrd.course.util.RequestConstant.COURSE_DOMAIN_NAME" %>

<%
    GetCourseResponse getCourseResponse = (GetCourseResponse) request.getAttribute(COURSE_DOMAIN_NAME);
    float averageScore = getCourseResponse.getAverageScore();
    int fullStars = (int) averageScore;
    boolean hasHalfStar = (averageScore % 1) >= 0.5;
%>
<html lang="en">

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

    <!-- favicon -->
    <link rel="shortcut icon" href="img/logos/favicon.png"/>
    <link rel="apple-touch-icon" href="img/logos/apple-touch-icon-57x57.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/apple-touch-icon-114x114.png"/>

    <!-- plugins -->
    <link rel="stylesheet" href="css/plugins.css"/>

    <!-- search css -->
    <link rel="stylesheet" href="search/search.css"/>

    <!-- quform css -->
    <link rel="stylesheet" href="quform/css/base.css">

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
                                    <a href="index.html" class="navbar-brand"><img id="logo"
                                                                                   src="img/logos/logo-inner.png"
                                                                                   alt="logo"/></a>
                                    <!-- end logo -->
                                </div>

                                <div class="navbar-toggler bg-primary"></div>

                                <!-- start menu area -->
                                <ul class="navbar-nav ms-auto" id="nav" style="display: none;">
                                    <li><a href="index.html">Home</a></li>
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
                                            <li><a href="courses-grid.jsp">Courses Grid</a></li>
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

    <!-- PAGE TITLE
    ================================================== -->
    <section class="page-title-section bg-img cover-background top-position1 left-overlay-dark" data-overlay-dark="9"
             data-background="img/bg/bg-04.jpg">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <h1>Course Details</h1>
                </div>
                <div class="col-md-12">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#!">Course Details</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- COURSES DETAILS
    ================================================== -->
    <section class="courses">
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-lg-8 mb-2-9 mb-lg-0">
                    <div class="row">
                        <div class="col-md-12 mb-1-6 mb-md-1-9">
                            <div class="courses-info mb-4">

                                <div class="bg-light rounded py-4 px-4 mb-3">
                                    <div class="section-heading mb-0 text-start">
                                        <span class="sub-title"><%= getCourseResponse.getSubjectName() %></span>
                                    </div>
                                    <h2 class="h1 mb-0"><%= getCourseResponse.getName() %>
                                    </h2>
                                </div>

                                <div class="course-meta bg-primary rounded py-4 px-4 overflow-hidden">
                                    <div class="item author mb-lg-1-6 mb-xl-0">
                                        <div class="author-img">
                                            <img src="img/avatar/avatar-14.jpg" alt="...">
                                        </div>
                                        <div class="desc">
                                            <h4 class="display-29 display-xl-28 font-weight-800 mb-1 text-white">
                                                강사명</h4>
                                            <a href="#!"
                                               class="display-30 font-weight-600 text-white"><%= getCourseResponse.getTeacherName() %>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="item dates">
                                        <h4 class="display-29 display-xl-28 font-weight-800 mb-1 text-white">
                                            업데이트 시간</h4>
                                        <span class="display-30 font-weight-600 text-white"><%= getCourseResponse.getModifiedAt() == null || getCourseResponse.getModifiedAt().equals("null") ? getCourseResponse.getCreatedAt() : getCourseResponse.getModifiedAt() %></span>
                                    </div>
                                    <div class="item me-0 ratings mb-lg-1-6 mb-xl-0">
                                        <h4 class="display-29 display-xl-28 font-weight-800 mb-1 text-white">강좌 평점</h4>

                                        <% for (int i = 0; i < fullStars; i++) { %>
                                        <i class="fas fa-star"></i>
                                        <% } %>

                                        <% if (hasHalfStar) { %>
                                        <i class="fas fa-star-half-alt"></i>
                                        <% } %>

                                        <% for (int i = 0; i < (5 - fullStars - (hasHalfStar ? 1 : 0)); i++) { %>
                                        <i class="far fa-star"></i> <!-- 빈 별 -->
                                        <% } %>

                                        <span class="text-white font-weight-700"><%= averageScore %></span>
                                    </div>
                                </div>

                            </div>
                            <figure class="mb-0">
                                <img class="border-radius-5" src="img/content/courses-details-01.jpg" alt="...">
                            </figure>
                        </div>
                        <div class="col-md-12 mb-1-6 mb-md-2-9">
                            <div class="horizontaltab tab-style1">
                                <div class="resp-tabs-container hor_1">
                                    <div>
                                        <div class="row">
                                            <div class="col-md-12 mb-1-6 mb-lg-1-9">
                                                <%= getCourseResponse.getDescription() %>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div id="accordion" class="accordion-style1">
                                                    <div class="card">
                                                        <div class="card-header" id="headingOne">
                                                            <h5 class="mb-0">
                                                                <button class="btn btn-link" data-bs-toggle="collapse"
                                                                        data-bs-target="#collapseOne"
                                                                        aria-expanded="true"
                                                                        aria-controls="collapseOne">
                                                                    Section 1: Welcome to the Courses
                                                                </button>
                                                            </h5>
                                                        </div>
                                                        <div id="collapseOne" class="collapse show"
                                                             aria-labelledby="headingOne" data-bs-parent="#accordion">
                                                            <div class="card-body">
                                                                <ul class="curriculum-lists">
                                                                    <li>
                                                                        <div class="titles">
                                                                            <i class="fas fa-play-circle"></i>
                                                                            <h3>
                                                                                Lecture 1.0
                                                                            </h3>
                                                                            <h5 class="display-29 display-lg-28 display-xl-27 mb-0">
                                                                                <a href="#!">Introduction of java</a>
                                                                            </h5>
                                                                            <div class="access-type">
                                                                                <i class="fas fa-eye"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="intro">
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Published - 15 Aug
                                                                                </p>
                                                                            </div>
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Duration: 1 hours 30 min
                                                                                </p>
                                                                                <a href="#!">Preview</a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="titles">
                                                                            <i class="fas fa-file"></i>
                                                                            <h3>
                                                                                Lecture 1.2
                                                                            </h3>
                                                                            <h5 class="display-29 display-lg-28 display-xl-27 mb-0">
                                                                                <a href="#!">Basic development</a>
                                                                            </h5>
                                                                            <div class="access-type">
                                                                                <i class="ti-lock"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="intro">
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Published - 28 Apr
                                                                                </p>
                                                                            </div>
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Duration: 3 hour 45 min
                                                                                </p>
                                                                                <a href="#!">Preview</a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card">
                                                        <div class="card-header" id="headingTwo">
                                                            <h5 class="mb-0">
                                                                <button class="btn btn-link collapsed"
                                                                        data-bs-toggle="collapse"
                                                                        data-bs-target="#collapseTwo"
                                                                        aria-expanded="false"
                                                                        aria-controls="collapseTwo">
                                                                    Section 2: How to use Java
                                                                </button>
                                                            </h5>
                                                        </div>
                                                        <div id="collapseTwo" class="collapse"
                                                             aria-labelledby="headingTwo" data-bs-parent="#accordion">
                                                            <div class="card-body">
                                                                <ul class="curriculum-lists">
                                                                    <li>
                                                                        <div class="titles">
                                                                            <i class="fas fa-play-circle"></i>
                                                                            <h3>
                                                                                Lecture 1.0
                                                                            </h3>
                                                                            <h5 class="display-29 display-lg-28 display-xl-27 mb-0">
                                                                                <a href="#!">Introduction of java</a>
                                                                            </h5>
                                                                            <div class="access-type">
                                                                                <i class="fas fa-eye"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="intro">
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Published - 15 Aug
                                                                                </p>
                                                                            </div>
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Duration: 1 hour 30 min
                                                                                </p>
                                                                                <a href="#!">Preview</a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="titles">
                                                                            <i class="fas fa-file"></i>
                                                                            <h3>
                                                                                Lecture 1.2
                                                                            </h3>
                                                                            <h5 class="display-29 display-lg-28 display-xl-27 mb-0">
                                                                                <a href="#!">Basic development</a>
                                                                            </h5>
                                                                            <div class="access-type">
                                                                                <i class="ti-lock"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="intro">
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Published - 28 Apr
                                                                                </p>
                                                                            </div>
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Duration: 3 hour 45 min
                                                                                </p>
                                                                                <a href="#!">Preview</a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card">
                                                        <div class="card-header" id="headingThree">
                                                            <h5 class="mb-0">
                                                                <button class="btn btn-link collapsed"
                                                                        data-bs-toggle="collapse"
                                                                        data-bs-target="#collapseThree"
                                                                        aria-expanded="false"
                                                                        aria-controls="collapseThree">
                                                                    Section 3: Final chapters
                                                                </button>
                                                            </h5>
                                                        </div>
                                                        <div id="collapseThree" class="collapse"
                                                             aria-labelledby="headingThree" data-bs-parent="#accordion">
                                                            <div class="card-body">
                                                                <ul class="curriculum-lists">
                                                                    <li>
                                                                        <div class="titles">
                                                                            <i class="fas fa-play-circle"></i>
                                                                            <h3>
                                                                                Lecture 1.0
                                                                            </h3>
                                                                            <h5 class="display-29 display-lg-28 display-xl-27 mb-0">
                                                                                <a href="#!">Introduction of java</a>
                                                                            </h5>
                                                                            <div class="access-type">
                                                                                <i class="fas fa-eye"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="intro">
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Published - 15 Aug
                                                                                </p>
                                                                            </div>
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Duration: 1 hour 30 min
                                                                                </p>
                                                                                <a href="#!">Preview</a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="titles">
                                                                            <i class="fas fa-file"></i>
                                                                            <h3>
                                                                                Lecture 1.2
                                                                            </h3>
                                                                            <h5 class="display-29 display-lg-28 display-xl-27 mb-0">
                                                                                <a href="#!">Basic development</a>
                                                                            </h5>
                                                                            <div class="access-type">
                                                                                <i class="ti-lock"></i>
                                                                            </div>
                                                                        </div>
                                                                        <div class="intro">
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Published - 28 Apr
                                                                                </p>
                                                                            </div>
                                                                            <div class="item">
                                                                                <p class="alt-font">
                                                                                    Duration: 3 hour 45 min
                                                                                </p>
                                                                                <a href="#!">Preview</a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="row mb-1-6 mb-lg-1-9 mb-xl-2-5">
                                            <div class="col-md-12">
                                                <h4 class="display-27 display-md-25 display-xl-20 font-weight-800 mb-1-6 text-capitalize">
                                                    Reviews</h4>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="bg-very-light-gray text-center">
                                                            <div class="rating-box">
                                                                <span class="rating-number">5</span>
                                                                <ul class="list-unstyled">
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                    <li><i class="fa fa-star"></i></li>
                                                                </ul>
                                                                <span class="display-30 text-color font-weight-800">8 Ratings</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="row">
                                                            <div class="col-sm-12 mb-3">
                                                                <div class="progress-text">
                                                                    <div class="row">
                                                                        <div class="col-7">5 Stars</div>
                                                                        <div class="col-5 text-end">95%</div>
                                                                    </div>
                                                                </div>
                                                                <div class="progress progress-medium">
                                                                    <div class="animated custom-bar progress-bar slideInLeft"
                                                                         style="width: 95%;" aria-valuemax="100"
                                                                         aria-valuemin="0" aria-valuenow="10"
                                                                         role="progressbar"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12 mb-3">
                                                                <div class="progress-text">
                                                                    <div class="row">
                                                                        <div class="col-7">4 Stars</div>
                                                                        <div class="col-5 text-end">70%</div>
                                                                    </div>
                                                                </div>
                                                                <div class="progress progress-medium">
                                                                    <div class="animated custom-bar progress-bar slideInLeft"
                                                                         style="width: 70%;" aria-valuemax="100"
                                                                         aria-valuemin="0" aria-valuenow="10"
                                                                         role="progressbar"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12 mb-3">
                                                                <div class="progress-text">
                                                                    <div class="row">
                                                                        <div class="col-7">3 Stars</div>
                                                                        <div class="col-5 text-end">45%</div>
                                                                    </div>
                                                                </div>
                                                                <div class="progress progress-medium">
                                                                    <div class="animated custom-bar progress-bar slideInLeft"
                                                                         style="width: 45%;" aria-valuemax="100"
                                                                         aria-valuemin="0" aria-valuenow="10"
                                                                         role="progressbar"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12 mb-3">
                                                                <div class="progress-text">
                                                                    <div class="row">
                                                                        <div class="col-7">2 Stars</div>
                                                                        <div class="col-5 text-end">30%</div>
                                                                    </div>
                                                                </div>
                                                                <div class="progress progress-medium">
                                                                    <div class="animated custom-bar progress-bar slideInLeft"
                                                                         style="width: 30%;" aria-valuemax="100"
                                                                         aria-valuemin="0" aria-valuenow="10"
                                                                         role="progressbar"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <div class="progress-text">
                                                                    <div class="row">
                                                                        <div class="col-7">1 Stars</div>
                                                                        <div class="col-5 text-end">15%</div>
                                                                    </div>
                                                                </div>
                                                                <div class="progress progress-medium">
                                                                    <div class="animated custom-bar progress-bar slideInLeft"
                                                                         style="width: 15%;" aria-valuemax="100"
                                                                         aria-valuemin="0" aria-valuenow="10"
                                                                         role="progressbar"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb-1-6 mb-lg-1-9 mb-xl-2-5">
                                            <h4 class="display-27 display-md-25 display-lg-24 display-xl-20 font-weight-800 mb-1-6 text-capitalize">
                                                Comments</h4>
                                            <div class="col-lg-12">
                                                <div class="comment-box">
                                                    <div class="author-thumb">
                                                        <img class="border-radius-50" src="img/avatar/avatar-15.jpg"
                                                             alt="...">
                                                    </div>
                                                    <div class="ps-10 ps-md-11">
                                                        <div class="mb-3">
                                                            <h6 class="display-29 display-lg-28 font-weight-800"><a
                                                                    href="#!">Denis Irwin</a></h6>
                                                            <div class="review-rating">
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p class="mb-3 display-30 display-md-29 alt-font text-color font-weight-500">
                                                            Excepteur sint occaecat cupidatat non proident, sunt in
                                                            culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <div class="font-weight-800">
                                                            <a href="#!" class="display-30 display-md-29"> <i
                                                                    class="fa fa-reply display-31 pe-2"
                                                                    aria-hidden="true"></i> Reply </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-box">
                                                    <div class="author-thumb">
                                                        <img class="border-radius-50" src="img/avatar/avatar-10.jpg"
                                                             alt="...">
                                                    </div>
                                                    <div class="ps-10 ps-md-11">
                                                        <div class="mb-3">
                                                            <h6 class="display-29 display-lg-28 font-weight-800"><a
                                                                    href="#!">Bruno Roach</a></h6>
                                                            <div class="review-rating">
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p class="mb-3 display-30 display-md-29 alt-font text-color font-weight-500">
                                                            Excepteur sint occaecat cupidatat non proident, sunt in
                                                            culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <div class="font-weight-800">
                                                            <a href="#!" class="display-30 display-md-29"> <i
                                                                    class="fa fa-reply display-31 pe-2"
                                                                    aria-hidden="true"></i> Reply </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-box">
                                                    <div class="author-thumb">
                                                        <img class="border-radius-50" src="img/avatar/avatar-13.jpg"
                                                             alt="...">
                                                    </div>
                                                    <div class="ps-10 ps-md-11">
                                                        <div class="mb-3">
                                                            <h6 class="display-29 display-lg-28 font-weight-800"><a
                                                                    href="#!">John Martin</a></h6>
                                                            <div class="review-rating">
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p class="mb-3 display-30 display-md-29 alt-font text-color font-weight-500">
                                                            Excepteur sint occaecat cupidatat non proident, sunt in
                                                            culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <div class="font-weight-800">
                                                            <a href="#!" class="display-30 display-md-29"> <i
                                                                    class="fa fa-reply display-31 pe-2"
                                                                    aria-hidden="true"></i> Reply </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-box mb-0">
                                                    <div class="author-thumb">
                                                        <img class="border-radius-50" src="img/avatar/avatar-09.jpg"
                                                             alt="...">
                                                    </div>
                                                    <div class="ps-10 ps-md-11">
                                                        <div class="mb-3">
                                                            <h6 class="display-29 display-lg-28 font-weight-800"><a
                                                                    href="#!">John Martin</a></h6>
                                                            <div class="review-rating">
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                            </div>
                                                        </div>
                                                        <p class="mb-3 display-29 alt-font text-color font-weight-500">
                                                            Excepteur sint occaecat cupidatat non proident, sunt in
                                                            culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <div class="font-weight-800">
                                                            <a href="#!" class="display-30 display-md-29"> <i
                                                                    class="fa fa-reply display-31 pe-2"
                                                                    aria-hidden="true"></i> Reply </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="comment-form">
                                                <h4 class="display-27 display-md-25 display-lg-24 display-xl-20 font-weight-800 mb-1-6 text-capitalize">
                                                    Leave A Comment</h4>
                                                <!-- Form -->
                                                <form>
                                                    <div class="row">
                                                        <div class="form-group">
                                                            <textarea name="reply" rows="6" class="form-control h-100"
                                                                      placeholder="Your Reply"></textarea>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" name="name"
                                                                       placeholder="Your Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                <input type="email" class="form-control" name="email"
                                                                       placeholder="Email Address">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <button type="submit" class="butn"><i
                                                                class="fas fa-plus-circle icon-arrow before"></i><span
                                                                class="label">Submit</span><i
                                                                class="fas fa-plus-circle icon-arrow after"></i>
                                                        </button>
                                                    </div>
                                                </form>
                                                <!-- End Form -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--  start courses list right-->
                <div class="col-md-12 col-lg-4">
                    <div class="ps-lg-1-6 ps-xl-1-9">
                        <div class="sidebar">
                            <div class="widget">
                                <div class="widget-title">
                                    <h3>강좌 상세정보</h3>
                                </div>
                                <ul class="course-list">
                                    <li><span><i
                                            class="ti-time pe-2"></i>수강 기간</span><%= getCourseResponse.getStartDate() %>
                                        ~ <%= getCourseResponse.getLastDate() %>
                                    </li>
                                    <li><span><i
                                            class="ti-files pe-2"></i>과목</span><%= getCourseResponse.getSubjectName() %>
                                    </li>
                                    <li><span><i
                                            class="ti-menu-alt pe-2"></i>가격</span><%= getCourseResponse.getPrice() %>
                                    </li>
                                    <li><span><i
                                            class="ti-user pe-2"></i>남은 자리</span><%= getCourseResponse.getRemainedSeat() %>
                                    </li>
                                    <li><span><i
                                            class="ti-medall pe-2"></i>신청 진행 여부</span><%= getCourseResponse.getRemainedSeat() <= 0 ? "신청 마" : "진행 중" %>
                                    </li>
                                    <li><span><i
                                            class="ti-stats-up pe-2"></i>개설 시간</span><%= getCourseResponse.getCreatedAt() %>
                                    </li>
                                    <li><span><i
                                            class="ti-world pe-2"></i>업데이트 시간</span><%= getCourseResponse.getModifiedAt() == null || getCourseResponse.getModifiedAt().equals("null") ? getCourseResponse.getCreatedAt() : getCourseResponse.getModifiedAt() %>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  end courses list right-->

            </div>
        </div>
    </section>

    <div style="position: fixed; bottom: 20px; right: 20px;">
        <form action="/register-reservation.do" method="POST">
            <input type="hidden" name="courseId" value="<%= getCourseResponse.getId() %>"/>
            <button type="submit" class="btn btn-primary">수강 신청</button>
        </form>
    </div>

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