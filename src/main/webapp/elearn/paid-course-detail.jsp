<%@ page contentType="text/html; charset=utf-8"
         import="javax.sql.DataSource, java.sql.Connection"%>
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
    <%@include file="header.jsp"%>

    <!-- PAGE TITLE
    ================================================== -->
    <section class="page-title-section bg-img cover-background top-position1 left-overlay-dark"
             data-overlay-dark="9" data-background="img/bg/bg-04.jpg">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <h1>수강 강좌</h1>
                </div>
                <div class="col-md-12">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#!">Event Details</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- EVENT DETAILS
    ================================================== -->
    <section class="courses">
        <div class="container">
            <div class="row">
                <!--  start courses list left-->
                <div class="col-md-12 col-lg-8 mb-2-9 mb-lg-0">
                    <div class="row">
                        <div class="col-md-12 mb-1-6 mb-md-1-9">
                            <div class="event-details-img position-relative">
                                <img class="border-radius-5" src="img/content/event-details-01.jpg" alt="...">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="event-seprator">
                                        <h2 class="text-primary">강좌 제목</h2>
                                        <ul
                                                class="event-info-list mb-4 pb-4 borders-bottom border-color-medium-gray">
                                            <li><i class="ti-calendar pe-2 text-secondary"></i>22 August, 2023</li>
                                            <li><i class="ti-time pe-2 text-secondary"></i>10.00 AM - 06.00 PM</li>
                                            <li><i class="ti-location-pin pe-2 text-secondary"></i>27 Street, New
                                                York</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-12 mb-1-9">
                                    <p class="alt-font font-weight-500 text-color">강의 설명</p>
                                    <h3>Event Overview</h3>
                                    <p class="alt-font font-weight-500 text-color">Lorem Ipsum is simply dummy text
                                        of the printing and typesetting industry. Lorem Ipsum has been the
                                        industry’s standard dummy tex an unknown printer took. Lorem Ipsum is simply
                                        dummy text of the printing.</p>
                                    <ul class="course-detail-list">
                                        <li><i
                                                class="ti-check-box vertical-align-middle text-secondary pe-2"></i>Basic
                                            knowledge of digital marketing terms</li>
                                        <li><i
                                                class="ti-check-box vertical-align-middle text-secondary pe-2"></i>Basic
                                            understanding of business</li>
                                        <li><i
                                                class="ti-check-box vertical-align-middle text-secondary pe-2"></i>Pen
                                            and paper for taking notes</li>
                                        <li><i
                                                class="ti-check-box vertical-align-middle text-secondary pe-2"></i>Internet
                                            connection</li>
                                        <li><i class="ti-check-box vertical-align-middle text-secondary pe-2"></i>No
                                            digital marketing experience required!</li>
                                    </ul>
                                </div>
                                <div class="col-md-12 mb-lg-1-9">
                                    <h3>Event Speakers</h3>
                                    <p class="alt-font font-weight-500 text-color mb-1-6">Even slightly believable.
                                        If you are going use a passage of Lorem Ipsum need equal blame belongs to
                                        those who fail in their duty through weakness of will, which is the same as
                                        saying through shrinking from toil and pain. These cases are perfectly
                                        simple and easy to distinguish.</p>
                                    <div class="row">
                                        <div class="col-md-6 mb-1-6 mb-sm-1-9 mb-lg-0">
                                            <div class="team-style1 text-center">
                                                <img src="img/team/team-01.jpg" class="border-radius-5" alt="...">
                                                <div class="team-info">
                                                    <h3 class="text-primary mb-1 h4">Murilo Souza</h3>
                                                    <span class="font-weight-600 text-secondary">Web Designer</span>
                                                </div>
                                                <div class="team-overlay">
                                                    <div class="d-table h-100 w-100">
                                                        <div class="d-table-cell align-middle">
                                                            <h3><a href="instructors-details.html"
                                                                   class="text-white">About Murilo Souza</a></h3>
                                                            <p class="text-white mb-0">I preserve each companion
                                                                certification and I'm an authorized AWS solutions
                                                                architect professional.</p>
                                                            <ul class="social-icon-style1">
                                                                <li><a href="#!"><i
                                                                        class="fab fa-facebook-f"></i></a></li>
                                                                <li><a href="#!"><i class="fab fa-twitter"></i></a>
                                                                </li>
                                                                <li><a href="#!"><i class="fab fa-youtube"></i></a>
                                                                </li>
                                                                <li><a href="#!"><i
                                                                        class="fab fa-linkedin-in"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-1-6 mb-sm-1-9 mb-lg-0">
                                            <div class="team-style1 text-center">
                                                <img src="img/team/team-02.jpg" class="border-radius-5" alt="...">
                                                <div class="team-info">
                                                    <h3 class="text-primary mb-1 h4">Balsam Samira</h3>
                                                    <span class="font-weight-600 text-secondary">Photographer</span>
                                                </div>
                                                <div class="team-overlay">
                                                    <div class="d-table h-100 w-100">
                                                        <div class="d-table-cell align-middle">
                                                            <h3><a href="instructors-details.html"
                                                                   class="text-white">About Balsam Samira</a></h3>
                                                            <p class="text-white mb-0">I preserve each companion
                                                                certification and I'm an authorized AWS solutions
                                                                architect professional.</p>
                                                            <ul class="social-icon-style1">
                                                                <li><a href="#!"><i
                                                                        class="fab fa-facebook-f"></i></a></li>
                                                                <li><a href="#!"><i class="fab fa-twitter"></i></a>
                                                                </li>
                                                                <li><a href="#!"><i class="fab fa-youtube"></i></a>
                                                                </li>
                                                                <li><a href="#!"><i
                                                                        class="fab fa-linkedin-in"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 mb-1-9">
                                    <h3>Event Schedule</h3>
                                    <p class="alt-font font-weight-500 text-color mb-1-6">Even slightly believable.
                                        If you are going use a passage of Lorem Ipsum need equal blame belongs to
                                        those who fail in their duty through weakness of will, which is the same as
                                        saying through shrinking from toil and pain. These cases are perfectly
                                        simple and easy to distinguish.</p>
                                    <div class="event-schedule-table table-responsive">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th class="time">Time</th>
                                                <th class="topics">Topics</th>
                                                <th class="speakers">Speakers</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="time">10.00 am to 10.30 am</td>
                                                <td class="topics">Registration and T-shirt distribution</td>
                                                <td class="speakers">-----------</td>
                                            </tr>
                                            <tr>
                                                <td class="time">10.35 am to 11.00 am</td>
                                                <td class="topics">Latest version of WordPress and it's Benefit
                                                </td>
                                                <td class="speakers">Alister Camble</td>
                                            </tr>
                                            <tr>
                                                <td class="time">11.05 am to 11.30 am</td>
                                                <td class="topics">Snacks &amp; Tea Break</td>
                                                <td class="speakers">-----------</td>
                                            </tr>
                                            <tr>
                                                <td class="time">11.35 am to 12.35 pm</td>
                                                <td class="topics">How to use latest version of WordPress</td>
                                                <td class="speakers">Ethan Smith</td>
                                            </tr>
                                            <tr>
                                                <td class="time">12.40 pm to 1.45 pm</td>
                                                <td class="topics">Future of WordPress</td>
                                                <td class="speakers">Keth Williams</td>
                                            </tr>
                                            <tr>
                                                <td class="time">1.50 pm to 2.15 pm</td>
                                                <td class="topics">Thanks giving &amp; closing </td>
                                                <td class="speakers">Organizer</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-12 event-seprator">
                                    <h3>Event Location</h3>
                                    <p class="alt-font font-weight-500 text-color mb-1-6">Duis aute irure dolor in
                                        reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                        pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis
                                        iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                                    <ul class="event-meta mb-4 ps-0">
                                        <li><i class="ti-location-pin"></i>Newyork City, USA</li>
                                        <li><i class="ti-mobile"></i>+012 (345) 6789</li>
                                    </ul>
                                    <iframe width="100%" height="400" id="gmap_canvas"
                                            src="https://maps.google.com/maps?q=london&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  end courses list left-->

                <!--  start courses list right-->
                <div class="col-md-12 col-lg-4">
                    <div class="ps-lg-1-6 ps-xl-1-9">

                        <div class="sidebar">

                            <div class="widget">
                                <div class="widget-title">
                                    <h3>강의 정보</h3>
                                </div>
                                <ul class="course-list">
                                    <li><span><i class="ti-ticket pe-2"></i>가격</span><span>$75.00</span>
                                    </li>
                                    <li><span><i class="ti-calendar pe-2"></i>수강 시작일</span><span>25 May, 2023</span>
                                    </li>
                                    <li><span><i class="ti-calendar pe-2"></i>수강 종료일</span><span>25 May, 2023</span>
                                    </li>
                                    <li><span><i class="ti-time pe-2"></i>시간</span><span>10:00 am to 6:00
                                                pm</span></li>
                                    <li><span><i class="ti-location-pin pe-2"></i>강의실</span><span>23 street, New
                                                York</span></li>
                                    <li><span><i class="ti-medall pe-2"></i>Seat</span><span>Yes</span></li>
                                    <li><span><i class="ti-world pe-2"></i>Language</span><span>English</span></li>
                                </ul>
                            </div>

                            <div class="widget">
                                <div class="widget-title">
                                    <h3>Share</h3>
                                </div>
                                <ul class="social-icons mb-0 ps-0">
                                    <li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#!"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#!"><i class="fab fa-instagram"></i></a></li>
                                    <li><a href="#!"><i class="fab fa-youtube"></i></a></li>
                                    <li><a href="#!"><i class="fab fa-linkedin-in"></i></a></li>
                                </ul>
                            </div>
                            <div class="widget">
                                <div class="btn">
                                    <h3>수강취소</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  end courses list right-->
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