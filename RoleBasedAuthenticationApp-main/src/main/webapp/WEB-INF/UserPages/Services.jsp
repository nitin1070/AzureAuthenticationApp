<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false"%>
    
    
    
    
<!DOCTYPE html>
<html lang="en">
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
      <div class="site-navbar-top">
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
      </div>
      <div class="site-navbar bg-light">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-2">
              <a href="index.html"><img src="images/logo.png"> Altered Security </a>
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">
                  <li class="has-children active"></li>
                  <li>
                    <a href="${pageContext.request.contextPath}/UserPageServlet">Home</a>
                  </li>
                  <li>
                    <a href="${pageContext.request.contextPath}/PageController?action=services">Services</a>
                  </li>
                 
                  
                  
                  <li>
                    <a href="${pageContext.request.contextPath}/PageController?action=contact">Contact</a>
                  </li>
                   <li>
                    <a href="${pageContext.request.contextPath}/PageController?action=news">News</a>
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

    <div class="site-blocks-cover inner-page" style="background-image: url(images/UserImages/user5.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-7">
            <span class="sub-text">Services That You Satisfied</span>
            <h1>Our <strong>Services</strong></h1>
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-md-6 text-center">
            <h2 class="display-4 text-black mb-5">See Our <strong>Services</strong></h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="site-block-feature-2 d-flex rounded mb-5">
              <div class="mr-3">
                <span class="icon flaticon-agreement font-weight-light "></span>
              </div>
              <div class="text">
                <h3>Sunt illum fugit doloremque</h3>
                <p>Sunt illum fugit doloremque eaque omnis dolor sint fuga eligendi quis magnam Laboriosam facilis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="site-block-feature-2 d-flex rounded mb-5">
              <div class="mr-3">
                <span class="icon flaticon-gears font-weight-light "></span>
              </div>
              <div class="text">
                <h3>Sunt illum fugit doloremque</h3>
                <p>Sunt illum fugit doloremque eaque omnis dolor sint fuga eligendi quis magnam Laboriosam facilis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="site-block-feature-2 d-flex rounded mb-5">
              <div class="mr-3">
                <span class="icon flaticon-excavator font-weight-light "></span>
              </div>
              <div class="text">
                <h3>Sunt illum fugit doloremque</h3>
                <p>Sunt illum fugit doloremque eaque omnis dolor sint fuga eligendi quis magnam Laboriosam facilis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="site-block-feature-2 d-flex rounded mb-5">
              <div class="mr-3">
                <span class="icon flaticon-industrial-robot font-weight-light "></span>
              </div>
              <div class="text">
                <h3>Sunt illum fugit doloremque</h3>
                <p>Sunt illum fugit doloremque eaque omnis dolor sint fuga eligendi quis magnam Laboriosam facilis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="site-block-feature-2 d-flex rounded mb-5 ng">
              <div class="mr-3">
                <span class="icon flaticon-industry font-weight-light "></span>
              </div>
              <div class="text">
                <h3>Sunt illum fugit doloremque</h3>
                <p>Sunt illum fugit doloremque eaque omnis dolor sint fuga eligendi quis magnam Laboriosam facilis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="site-block-feature-2 d-flex rounded mb-5">
              <div class="mr-3">
                <span class="icon flaticon-worker font-weight-light "></span>
              </div>
              <div class="text">
                <h3>Sunt illum fugit doloremque</h3>
                <p>Sunt illum fugit doloremque eaque omnis dolor sint fuga eligendi quis magnam Laboriosam facilis.</p>
              </div>
            </div>
          </div>

          

        </div>
      </div>
    </div>


    <div class="site-section site-block-3 bg-light">
      <div class="container">
        <div class="row align-items-stretch">
          <div class="col-lg-6 mb-5 mb-lg-0 bg-image bg-md-height" style="background-image: url('images/img_1_colored.jpg')"></div>
          <div class="col-lg-6 h-100">
            <div class="row row-items">
              <div class="col-md-6 mb-5 mb-md-0">
                <a href="#" class="d-flex text-center feature active p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-industry display-3"></span>
                    </span>
                    <h3><strong class="d-block">100+</strong> Companies</h3>
                  </span>
                </a>
              </div>
              <div class="col-md-6 mb-5 mb-md-0">
                <a href="#" class="d-flex text-center feature p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-worker display-3"></span>
                    </span>
                    <h3><strong class="d-block">7000+</strong> Employees</h3>
                  </span>
                </a>
              </div>
            </div>
            <div class="row row-items last">
              <div class="col-md-6 mb-5 mb-md-0">
                <a href="#" class="d-flex text-center feature p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-planet-earth display-3"></span>
                    </span>
                    <h3><strong class="d-block">90+</strong> Countries</h3>
                  </span>
                </a>
              </div>
              <div class="col-md-6 mb-5 mb-md-0">
                <a href="#" class="d-flex text-center active feature p-4 mb-4 bg-white">
                  <span class="align-self-center w-100">
                    <span class="d-block mb-3">
                      <span class="flaticon-excavator display-3"></span>
                    </span>
                    <h3><strong class="d-block">29+</strong> On Going Projects</h3>
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    <div class="promo py-5 bg-primary" data-aos="fade">
      <div class="container text-center">
        <h2 class="d-block mb-0 font-weight-light text-white"><a href="#" class="text-white d-block">Contact us for quotations</a></h2>
      </div>
    </div>
    
    <footer class="site-footer">
      <div class="container">
        

        <div class="row">
          <div class="col-lg-7">
            <div class="row">
              <div class="col-6 col-md-4 col-lg-4 mb-5 mb-lg-0">
                <h3 class="footer-heading mb-4">Company</h3>
                <ul class="list-unstyled">
                  <li><a href="#">About</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Approach</a></li>
                  <li><a href="#">Sustainability</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Careers</a></li>
                </ul>
              </div>
              <div class="col-6 col-md-4 col-lg-4 mb-5 mb-lg-0">
                <h3 class="footer-heading mb-4">Online Labs</h3>
                <ul class="list-unstyled">
                  <li><a href="#">About</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Approach</a></li>
                  <li><a href="#">Sustainability</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Careers</a></li>
                </ul>
              </div>
              <div class="col-6 col-md-4 col-lg-4 mb-5 mb-lg-0">
                <h3 class="footer-heading mb-4">Services </h3>
                <ul class="list-unstyled">
                  <li><a href="#">About</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Approach</a></li>
                  <li><a href="#">Sustainability</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Careers</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-5">
            <div class="row mb-5">
              <div class="col-md-12"><h3 class="footer-heading mb-4">Contact Us</h3></div>
              <div class="col-md-6">
                <p>Want to get in touch? We'd love to hear from you.
                  Here's how you can reach us...</p>    
              </div>
              <div class="col-md-6">
                
                Mail. contact@alteredsecurity.com
              </div>
            </div>

           
            
          </div>
        </div>

           

        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://www.alteredsecurity.com/" target="_blank" >AlteredSecurity</a>
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