<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%> 
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Industrie &mdash; Colorlib Website Template</title>
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
              <a href="#" class="p-2 pl-0"><span class="icon-twitter"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-linkedin"></span></a>
              <a href="#" class="p-2 pl-0"><span class="icon-instagram"></span></a>
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
  

    <div class="site-blocks-cover inner-page overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7 text-center">
            <h1 class="mb-5">The <strong>News</strong></h1>
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_4.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_2.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_3.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_4.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4">
            <div class="post-entry bg-white">
              <div class="image">
                <img src="images/img_1.jpg" alt="Image" class="img-fluid">
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Lorem ipsum dolor sit amet</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat beatae doloremque, ex corrupti perspiciatis.</p>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-12 text-center">
            <div class="site-block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    
    <footer class="site-footer border-top">
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
                <h3 class="footer-heading mb-4">Navigations</h3>
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
                <h3 class="footer-heading mb-4">Quick Menu</h3>
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
              <div class="col-md-12"><h3 class="footer-heading mb-4">Europe</h3></div>
              <div class="col-md-6">
                <p>London - 2398 <br> 10 Japson Street</p>    
              </div>
              <div class="col-md-6">
                Tel. + (123) 3240-345-9348 <br>
                Mail. europe@youdomain.com
              </div>
            </div>

            <div class="row">
              <div class="col-md-12"><h3 class="footer-heading mb-4">USA</h3></div>
              <div class="col-md-6">
                <p>New York - 2398 <br> 10 Hadson Carl Street</p>    
              </div>
              <div class="col-md-6">
                Tel. + (123) 3240-345-9348 <br>
                Mail. usa@youdomain.com
              </div>
            </div>
            
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
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