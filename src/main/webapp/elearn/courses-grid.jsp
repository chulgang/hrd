<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="org.chulgang.hrd.course.dto.GetCoursesResponse" %>
<%@ page import="static org.chulgang.hrd.course.util.RequestConstant.COURSES_ATTRIBUTE_NAME" %>
<%@ page import="static org.chulgang.hrd.course.util.RequestConstant.SIZE_PARAMETER_NAME" %>
<%@ page import="static org.chulgang.hrd.course.util.RequestConstant.*" %>
<%@ page import="org.chulgang.hrd.users.dto.UsersLoginResponse" %>

<%
    GetCoursesResponse getCoursesResponse = (GetCoursesResponse) request.getAttribute(COURSES_ATTRIBUTE_NAME);
    int pageCount = getCoursesResponse.getPageCount();
    int size = (int) request.getAttribute(SIZE_PARAMETER_NAME);
    int pageNumber = (int) request.getAttribute(PAGE_NUMBER_PARAMETER_NAME);

    UsersLoginResponse usersLoginResponse
            = (UsersLoginResponse) request.getSession().getAttribute(LOGIN_SESSION_ATTRIBUTE_NAME);
    boolean isTeacher = usersLoginResponse != null && usersLoginResponse.getRole().equals("teacher");
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
                                <span class="input-groep-addon cursor-pointer">
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
                                            <li><a href="courses-grid.html">Courses</a></li>
                                            <li><a href="courses-list.html">Courses</a></li>
                                            <li><a href="course-details.jsp">Courses</a></li>
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
                    <h1>Courses</h1>
                </div>
                <div class="col-md-12">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#!">Courses</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- ONLINE COURSES
    ================================================== -->
    <section>
        <div class="container">
            <div class="section-heading">
                <span class="sub-title">COURSES</span>
                <h2 class="h1 mb-0">개설 강좌 목록</h2>
            </div>
            <div class="row g-xxl-5 mt-n2-6">
                    <% for (int i = 0; i < getCoursesResponse.size(); i++) {
                %>
                <div class="col-md-6 col-xl-4 mt-2-6">
                    <div class="card card-style1 p-0 h-100">
                        <div class="card-img rounded-0">
                            <div class="image-hover">
                                <img class="rounded-top" src="img/content/courses-01.jpg" alt="...">
                            </div>
                            <a href="courses-list.html"
                               class="course-tag"><%= getCoursesResponse.get(i).getSubjectName() %>
                            </a>
                            <a href="#!"><i class="far fa-heart"></i></a>
                        </div>
                        <div class="card-body position-relative pt-0 px-1-9 pb-1-9">
                            <div class="card-author d-flex">
                                <div class="avatar">
                                    <img class="rounded-circle" src="img/avatar/avatar-01.jpg" alt="...">
                                </div>
                                <h4 class="mb-0 h6"><%= getCoursesResponse.get(i).getTeacherName() %>
                                </h4>
                            </div>
                            <div class="pt-6">
                                <h3 class="h4 mb-4"><a
                                        href="course-details.do?id=<%= getCoursesResponse.get(i).getId() %>"><%= getCoursesResponse.get(i).getName() %>
                                </a></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="display-30"><i
                                            class="ti-agenda me-2"></i><%= getCoursesResponse.get(i).getStartDate() %>
                                        ~ <%= getCoursesResponse.get(i).getLastDate() %>
                                    </div>
                                    <div class="display-30"><i
                                            class="ti-user me-2"></i><%= getCoursesResponse.get(i).getRemainedSeat() %>
                                    </div>
                                    <div class="display-30"><i
                                            class="fas fa-star me-1 display-32 text-warning"></i><%= getCoursesResponse.get(i).getAverageScore() %>
                                    </div>
                                </div>
                                <div class="dotted-seprator pt-4 mt-4 d-flex justify-content-between align-items-center">
                                    <%
                                        if (getCoursesResponse.get(i).getRemainedSeat() <= 0) {
                                    %>
                                    <span class="badge-soft">신청 종료</span>
                                    <%
                                    } else {
                                    %>
                                    <span class="badge-soft">신청 진행 중</span>
                                    <%
                                        }
                                    %>
                                    <h5 class="text-primary mb-0"><%= getCoursesResponse.get(i).getPrice() %>원</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <%
                    }
                %>
                <div class="row">
                    <div class="col-sm-12">
                        <!-- start pager  -->
                        <div class="text-center mt-6 mt-lg-7">
                            <div class="pagination text-extra-dark-gray">
                                <ul>
                                    <%
                                        for (int i = 1; i <= pageCount; i++) {
                                            if (i == pageNumber) {
                                    %>
                                    <li class="active"><a href="#!" class="page-numbers"><%= i %>
                                    </a></li>
                                    <%
                                            continue;
                                        }
                                    %>
                                    <li>
                                        <a href=<%= GET_COURSES_SECOND_REQUEST_URL %>?size=<%= size %>&pageNumber=<%= i %>
                                           class="page-numbers"><%= i %>
                                        </a></li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </div>
                        </div>
                        <!-- end pager -->
                    </div>
                    <div class="text-end mt-4">
                        <% if (isTeacher) { %>
                        <a href="<%= REGISTER_COURSE_FIRST_REQUEST_URL %>" class="btn btn-primary">강좌 개설 예약</a>
                        <% } %></div>
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