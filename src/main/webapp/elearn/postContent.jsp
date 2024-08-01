<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
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
  <script>function openContentJSP() {
    var openInputUrl = "post_contentForm.do";
    window.open(openInputUrl,'_self');
  }


  function openInputJSP() {
    var openInputUrl = "post_insertForm.do";
    window.open(openInputUrl,'_self');
  }

  function openInputJSP() {
    var openInputUrl = "post_insertForm.do";
    window.open(openInputUrl,'_self');
  }

  </script>
  <style>
    .accordion-style1 .btn-link:after {
      display: none;
    }
  </style>
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
  <%@include file="header.jsp"%>

  <!-- PAGE TITLE
  ================================================== -->
  <section class="page-title-section bg-img cover-background top-position1 left-overlay-dark" data-overlay-dark="9" data-background="img/bg/bg-04.jpg">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h1>Contents</h1>
        </div>
        <div class="col-md-12">
          <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="post_listForm.do">Q&A List</a></li>
          </ul>
        </div>
      </div>
    </div>
  </section>


  <!-- FAQ
================================================== -->
  <section>
    <div class="container">
      <div class="section-heading">
        <h2 class="h1 mb-0">교수님</h2>
        <span class="sub-title">Q&A</span>
      </div>


        <div class="row">
          <div class="col-md-10 mx-auto">
            <div id="accordion1" class="accordion-style1">
              <div class="card">
                <div class="card-header" id="headingOne">
                  <h5 class="mb-0">
                    <button class="btn btn-link" data-bs-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                      ${post.subject}
                    </button>
                  </h5>
                </div>
                <div id="collapseFive" class="collapse show" aria-labelledby="headingFive" data-bs-parent="#accordion1">
                  <div class="card-body">
                    ${post.content}
                    ${post.writer_id}
                    <p>
                      userid = ${user_Id}
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>


      <c:choose>
        <c:when test="${user_Id eq post.writer_id}">
          <button type="button" style="margin: 1em; float:right;" class="btn btn-outline-success">
            <a href="post_updateForm.do?post_id=${post.id}&post_subject=${post.subject}&post_content=${post.content}" class="button">수정</a>
          </button>
        </c:when>
        <c:otherwise>
          <!-- user_id와 post.writer_id가 다른 경우 실행될 내용 -->
          없서 냥냥
        </c:otherwise>
      </c:choose>


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