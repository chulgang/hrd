<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=utf-8"
         import="javax.sql.DataSource, java.sql.Connection"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

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
                                    <li><a href="contact.html">Contact</a></li>

                                </ul>
                                <!-- end menu area -->

                                <!-- start attribute navigation -->
                                <div class="attr-nav align-items-xl-center ms-xl-auto main-font">
                                    <ul>
                                        <li class="search"><a href="#!"><i class="fas fa-search"></i></a></li>
                                        <li class="d-none d-xl-inline-block"><a href="contact.html" class="butn md text-white"><i class="fas fa-plus-circle icon-arrow before"></i><span class="label">Apply Now</span><i class="fas fa-plus-circle icon-arrow after"></i></a></li>
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
    <section class="page-title-section bg-img cover-background top-position1 left-overlay-dark" data-overlay-dark="9" data-background="img/bg/bg-04.jpg">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <h1>Update</h1>
                </div>
                <div class="col-md-12">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="#!">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- QUICK CONTACT
    ================================================== -->


    <!-- CONTACT FORM
    ================================================== -->
    <section class="bg-very-light-gray">
        <div class="container">
            <div style = "margin: 0 auto;" class="col-lg-6">
                <div class="faq-form">
                    <h2 class="mb-4 text-primary">Update</h2>
                    <form class="contact quform" name="f" action="post_insert.do" method="post">
                        <div class="quform-elements">
                            <div>

                                <!-- Begin Text input element -->
                                <div class="col-md-6">
                                    <div class="quform-element form-group">
                                        <label for="111">제목<span class="quform-required">*</span></label>
                                        <div class="quform-input">
                                            <input class="form-control" id="111" type="text" name="subject" placeholder="제목" />
                                        </div>
                                    </div>
                                </div>
                                <!-- End Text input element -->

                                <!-- Begin Text input element -->
                                <div class="col-md-6">
                                    <div class="quform-element form-group">
                                        <label for="username">글쓴이<span class="quform-required">*</span></label>
                                        <div class="quform-input">
                                            <input class="form-control" disabled="disabled" id="username" type="text" value="${writer}" name="username" />
                                        </div>
                                    </div>
                                </div>
                                <!-- End Text input element -->

                                <!-- Begin Text input element -->
                                <div class="col-md-6">
                                    <div class="quform-element form-group">
                                        <label for="222">내용<span class="quform-required">*</span></label>
                                        <div class="quform-input">
                                            <textarea style="height: 150px; width:200%; max-width:200%;" class="form-control" id="222" name="content" placeholder="내용"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Text input element -->

                                <%--                                    <!-- Begin Text input element -->--%>
                                <%--                                    <div class="col-md-6">--%>
                                <%--                                        <div class="quform-element form-group">--%>
                                <%--                                            <label for="full_name">성명</label>--%>
                                <%--                                            <div class="quform-input">--%>
                                <%--                                                <input class="form-control" id="full_name" type="text" name="full_name" placeholder="성명" />--%>
                                <%--                                            </div>--%>
                                <%--                                        </div>--%>
                                <%--                                    </div>--%>
                                <%--                                    <!-- End Text input element -->--%>



                                <%--                                    <!-- Begin Captcha element -->--%>
                                <%--                                    <div class="col-md-12">--%>
                                <%--                                        <div class="quform-element">--%>
                                <%--                                            <div class="form-group">--%>
                                <%--                                                <label for="phone">핸드폰번호</label>--%>
                                <%--                                                <div class="quform-input">--%>
                                <%--                                                    <input class="form-control" id="phone" type="text" name="phone" placeholder="핸드폰 번호" />--%>
                                <%--                                                </div>--%>
                                <%--                                            </div>--%>

                                <%--                                        </div>--%>
                                <%--                                    </div>--%>
                                <%--                                    <!-- End Captcha element -->--%>

                                <!-- Begin Submit button -->

                                <div class="col-md-12">
                                    <div class="quform-submit-inner">
                                        <button type="button" class="butn secondary" onclick="submit()" ><i class="far fa-paper-plane icon-arrow before"></i><span class="label">글쓰기</span><i class="far fa-paper-plane icon-arrow after"></i></button>
                                        <button type="button" class="butn secondary" onclick="location.href='post_delete.do?post_id=${post.id}'"><i class="far fa-paper-plane icon-arrow before"></i><span class="label">삭제</span><i class="far fa-paper-plane icon-arrow after"></i></button>
                                    </div>
                                    <div class="quform-loading-wrap text-start"><span class="quform-loading"></span></div>
                                </div>
                                <!-- End Submit button -->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER
    ================================================== -->
    <%@include file="footer.jsp"%>

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