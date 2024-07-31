<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=utf-8"
         import="javax.sql.DataSource, java.sql.Connection"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="java.util.*" %>


    <!-- FOOTER ================================================== -->
    <footer class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 mb-2-5 mb-lg-0">
                    <a href="index.jsp" class="footer-logo">
                       <h2 style="color:#ff7029">철강 HRD</h2>
                    </a>
                    <p class="mb-1-6 text-white">
                        오프라인 시범예약 사이트입니다.
                    </p>
                    <form class="quform newsletter" action="quform/newsletter-two.php" method="post" enctype="multipart/form-data" onclick="">

                        <div class="quform-elements">

                            <div class="row">

                                <!-- Begin Text input element -->
                                <div class="col-md-12">
                                    <div class="quform-element mb-0">

                                    </div>
                                </div>
                                <!-- End Text input element -->

                                <!-- Begin Submit button -->
                                <div class="col-md-12">

                                    <div class="quform-loading-wrap text-start"><span class="quform-loading"></span></div>
                                </div>
                                <!-- End Submit button -->
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6 col-lg-2 mb-2-5 mb-lg-0">
                    <div class="ps-md-1-6 ps-lg-1-9">
                        <h3 class="text-primary h5 mb-2-2">회원</h3>
                        <ul class="footer-list">
                            <li><a href="about.html">회원가입</a></li>
                            <li><a href="courses-list.html">로그인</a></li>
                            <li><a href="instructors.html">게시글</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 mb-2-5 mb-md-0">
                    <div class="ps-lg-1-9 ps-xl-2-5">
                        <h3 class="text-primary h5 mb-2-2">예약</h3>
                        <ul class="footer-list">
                            <li><a href="blog-grid.html">강의</a></li>
                            <li><a href="portfolio.html">강좌</a></li>
                            <li><a href="faq.html">FAQ</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="ps-md-1-9">
                        <h3 class="text-primary h5 mb-2-2">결제</h3>
                        <ul class="footer-list">
                            <li><a href="blog-grid.html">강의</a></li>
                            <li><a href="portfolio.html">강좌</a></li>
                            <li><a href="faq.html">FAQ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-bar text-center">
                <p class="mb-0 text-white font-weight-500">&copy; <span class="current-year"></span> Produced by<a href="index.jsp" class="text-secondary"> HRD</a></p>
            </div>
        </div>
    </footer>

