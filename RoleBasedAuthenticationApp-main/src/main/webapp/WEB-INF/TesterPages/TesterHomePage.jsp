<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Altered Security &mdash; Oil Corp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/fonts/icomoon/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/JSP_JS_CSS/css/style.css">
    
  </head>
  <body>
  
<div class="site-wrap">
  <div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close mt-3">
        <span class="icon-close2 js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div> <!-- .site-mobile-menu -->

  <div class="site-navbar-wrap bg-white">



<!--     <div class="site-navbar-top">
      <div class="container py-2">
        <div class="row align-items-center">
          <div class="col-6">
            <a href="https://twitter.com/AlteredSecurity" class="p-2 pl-0"><span class="icon-twitter"></span></a>
            <a href="https://www.linkedin.com/company/alteredsecurity/" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
          </div>
          <div class="col-6">
            <div class="d-flex ml-auto">
              <a href="#" class="d-flex align-items-center">
                <span class="icon-envelope mr-2"></span>
                <span class="d-none d-md-inline-block">contact@alteredsecurity.com</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div> -->

    <div class="site-navbar bg-light">
      <div class="container py-1">
        <div class="row align-items-center">
          <div class="col-2">
            <a href="${pageContext.request.contextPath}/TesterPageServlet"><img src="images/logo.png"> Altered Security</a>
          </div>
          <div class="col-10">
            <nav class="site-navigation text-right" role="navigation">
              <div class="container">
                <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                <ul class="site-menu js-clone-nav d-none d-lg-block">
                  <li class="has-children active"></li>
                  <li>
<%--                     <a href="${pageContext.request.contextPath}/TesterPageServlet">Home</a> --%>

                    <a href="#">Home</a>
                  </li>
                  <li>
                   <%--  <a href="${pageContext.request.contextPath}/PageController?action=services">Services</a> --%>
                     <a href="#">Services</a>
                  </li>
                 
                  
                  
                  <li>
                    <%-- <a href="${pageContext.request.contextPath}/PageController?action=contact">Contact</a> --%>
                    <a href="#">Contact</a>
                  </li>
                  
                  <li class="has-children">
                    <a href="#" class="d-flex align-items-center">
                      <span class="icon-user mr-2"></span>
                      <span class="d-none d-md-inline-block">User</span>
                    </a>
                    <ul class="dropdown">
                      <li><a href="#"> <c:out value="${sessionScope.user}" /> </a></li>
                      <li><a href="#">Settings</a></li>
                      <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                    </ul>
                  </li> 
                  
        
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>













    <div class="slide-one-item home-slider owl-carousel">

      <div class="site-blocks-cover overlay" style="background-image: url(${pageContext.request.contextPath}/JSP_JS_CSS/images/TesterImages/test1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-10">
              <h1 class="mb-5">Specialized Technical <strong>Solutions</strong></h1>
              <p>
                <a href="#" class="btn btn-primary py-3 px-5 rounded-0">Download</a>
                <a href="#" class="btn btn-white btn-outline-white py-3 px-5 rounded-0">Get In Touch</a>
              </p>
            </div>
          </div>
        </div>
      </div>  

      <div class="site-blocks-cover overlay" style="background-image: url(${pageContext.request.contextPath}/JSP_JS_CSS/images/TesterImages/test2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="col-md-10">
              <h1 class="mb-5">Specialized Technical <strong>Solutions</strong></h1>
              <p>
                <a href="#" class="btn btn-primary py-3 px-5 rounded-0">Download</a>
                <a href="#" class="btn btn-white btn-outline-white py-3 px-5 rounded-0">Get In Touch</a>
              </p>
            </div>
          </div>
        </div>
      </div>  

    </div>

    <div class="site-section border-bottom bg-light py-5">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center mb-5"><h2 class="text-black h6 font-weight-bold text-uppercase" data-aos="fade">Let the number speaks for us.</h2></div>
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="0">
            <div class="d-flex align-items-center">
              <div class="mr-3"><span class="flaticon-worker display-3 text-primary"></span></div>
              <div class="">
                <h2 class="text-black">7000+</h2> <strong class="text-black">Highly Especialized</strong> Employees
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
            <div class="d-flex align-items-center">
              <div class="mr-3"><span class="flaticon-planet-earth display-3 text-primary"></span></div>
              <div class="">
                <h2 class="text-black">90+</h2> <strong class="text-black">Countries</strong> World Wide
              </div>
            </div>
          </div>
          
          <div class="col-md-6 col-lg-4 mb-0 mb-lg-0" data-aos="fade" data-aos-delay="300">
            <div class="d-flex align-items-center">
              <div class="mr-3"><span class="flaticon-excavator display-3 text-primary"></span></div>
              <div class="">
                <h2 class="text-black">2900+</h2> <strong class="text-black">Finished</strong> Projects
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

    

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 bg-image bg-sm-height mb-5 mb-md-0 order-md-2" style="background-image: url('${pageContext.request.contextPath}/JSP_JS_CSS/images/TesterImages/4325058.jpg');" data-aos="fade-up"></div>
          <div class="col-md-6 pr-md-5 order-md-1">
            <h2 class="display-3 line-height-xs text-black mb-4">Let's grow <strong>together</strong></h2>
            <p class="mb-4">Magnam iure fugit recusandae nobis a amet, officiis laboriosam repudiandae? Quis nostrum numquam ducimus quo ab laboriosam qui expedita, cupiditate ex, sed dignissimos facere provident dolores, eius distinctio quas aliquid.</p>
            <ul class="site-block-check">
              <li>Magnam iure fugit recusandae</li>
              <li>Officiis laboriosam repudiandae</li>
              <li>Quis nostrum numquam</li>
            </ul>
            <p><a href="#" class="btn btn-outline-primary btn-sm rounded-0 p-2 px-4">Read More</a></p>
          </div>
        </div>
      </div>
    </div>

   










<br><br><br>
    
    
    <footer class="site-footer">
      <div class="container">
        



        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://www.alteredsecurity.com/" target="_blank" >Altered Security</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/jquery-3.3.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/jquery-ui.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/jquery.countdown.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/bootstrap-datepicker.min.js"></script>
  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/aos.js"></script>

  <script src="${pageContext.request.contextPath}/JSP_JS_CSS/js/main.js"></script>
    
  </body>
</html>