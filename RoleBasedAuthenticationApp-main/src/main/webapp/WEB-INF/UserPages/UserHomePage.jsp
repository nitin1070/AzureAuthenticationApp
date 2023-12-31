<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
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
            <a href="${pageContext.request.contextPath}/UserPageServlet"><img src="images/logo.png"> Altered Security</a>
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
</div>













    <div class="slide-one-item home-slider owl-carousel">

      <div class="site-blocks-cover overlay" style="background-image: url(images/UserImages/user1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
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

      <div class="site-blocks-cover overlay" style="background-image: url(images/UserImages/user2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
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
        <div class="row mb-5 justify-content-center">
          <div class="col-12 text-center">
            <h2 class="font-weight-light text-black display-4">Our Specialty</h2>
          </div>
          <div class="col-md-7 text-center">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum iusto eaque qui illo cumque officia nobis assumenda odit perferendis ipsam dolore.</p>
          </div>
        </div>
        <div class="row no-gutters align-items-stretch h-100">
          <div class="col-lg-6">
            <div class="row no-gutters align-items-stretch h-100 half-sm">
              <div class="col-md-6 bg-image bg-sm-height" style="background-image: url('images/img_4_colored.jpg');" data-aos="fade" data-aos-delay="0"></div>
              <div class="col-md-6 bg-light text">
                <div class="p-4">
                  <h2 class="h5 mb-3 text-black line-height-sm">Automative Manufacturing</h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In ipsum error perspiciatis odit ullam officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium voluptatum vel natus, repellat at optio.</p>
                  <p class="mb-0"><a href="#" class=""><small class="text-uppercase font-weight-bold text-black">Read More</small></a></p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="row no-gutters align-items-stretch h-100 half-sm">
              <div class="col-md-6 bg-image order-md-2 order-lg-1 bg-sm-height" style="background-image: url('images/img_1_colored.jpg');" data-aos="fade" data-aos-delay="200"></div>
              <div class="col-md-6 bg-light text order-md-1 order-lg-2">
                <div class="p-4">
                  <h2 class="h5 mb-3 text-black line-height-sm">Mechanical Engineering</h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In ipsum error perspiciatis odit ullam officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, cupiditate officia recusandae velit sint totam.</p>
                  <p class="mb-0"><a href="#" class=""><small class="text-uppercase font-weight-bold text-black">Read More</small></a></p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="row no-gutters align-items-stretch h-100 half-sm">
              <div class="col-md-6 bg-image order-md-1 order-lg-2 bg-sm-height" style="background-image: url('images/img_2_colored.jpg');" data-aos="fade" data-aos-delay="300"></div>
              <div class="col-md-6 bg-light text order-md-2 order-lg-1">
                <div class="p-4">
                  <h2 class="h5 mb-3 text-black line-height-sm">Oil &amp; Gas Energy</h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In ipsum error perspiciatis odit ullam officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias fugiat facilis quasi ratione ducimus ipsam!</p>
                  <p class="mb-0"><a href="#" class=""><small class="text-uppercase font-weight-bold text-black">Read More</small></a></p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="row no-gutters align-items-stretch h-100 half-sm">
              <div class="col-md-6 bg-image order-md-2 bg-sm-height" style="background-image: url('images/img_3_colored.jpg');" data-aos="fade" data-aos-delay="400"></div>
              <div class="col-md-6 bg-light text order-md-1">
                <div class="p-4">
                  <h2 class="h5 mb-3 text-black line-height-sm">Industrial Construction</h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In ipsum error perspiciatis odit ullam officia. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium ullam est alias minus, expedita autem.</p>
                  <p class="mb-0"><a href="#" class=""><small class="text-uppercase font-weight-bold text-black">Read More</small></a></p>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

    </div>















    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6 bg-image bg-sm-height mb-5 mb-md-0 order-md-2" style="background-image: url('images/img_1_colored.jpg');" data-aos="fade-up"></div>
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

   




<!-- 
    <div class="site-section bg-light">
      <div class="container">

        <div class="block-13 nonloop-block-13 owl-carousel" data-aos="fade">

          <div class="p-4">
            <div class="block-47 d-flex">
              <div class="block-47-image d-none d-sm-block">
                <img src="images/person_1.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <blockquote class="block-47-quote">
                <p>&ldquo;Magnam iure fugit recusandae nobis a amet, officiis laboriosam repudiandae? Quis nostrum numquam ducimus quo ab laboriosam qui expedita, cupiditate ex, sed dignissimos facere provident dolores, eius distinctio quas aliquid.&rdquo;</p>
                <cite class="block-47-quote-author">&mdash; John doe, CEO <a href="#">XYZ Inc.</a></cite>
              </blockquote>
            </div>
          </div>

          <div class="p-4">
            <div class="block-47 d-flex">
              <div class="block-47-image d-none d-sm-block">
                <img src="images/person_2.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <blockquote class="block-47-quote">
                <p>&ldquo;Magnam iure fugit recusandae nobis a amet, officiis laboriosam repudiandae? Quis nostrum numquam ducimus quo ab laboriosam qui expedita, cupiditate ex, sed dignissimos facere provident dolores, eius distinctio quas aliquid.&rdquo;</p>
                <cite class="block-47-quote-author">&mdash; John doe, CEO <a href="#">XYZ Inc.</a></cite>
              </blockquote>
            </div>
          </div>

          <div class="p-4">
            <div class="block-47 d-flex">
              <div class="block-47-image d-none d-sm-block">
                <img src="images/person_3.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <blockquote class="block-47-quote">
                <p>&ldquo;Magnam iure fugit recusandae nobis a amet, officiis laboriosam repudiandae? Quis nostrum numquam ducimus quo ab laboriosam qui expedita, cupiditate ex, sed dignissimos facere provident dolores, eius distinctio quas aliquid.&rdquo;</p>
                <cite class="block-47-quote-author">&mdash; John doe, CEO <a href="#">XYZ Inc.</a></cite>
              </blockquote>
            </div>
          </div>

          <div class="p-4">
            <div class="block-47 d-flex">
              <div class="block-47-image d-none d-sm-block">
                <img src="images/person_4.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <blockquote class="block-47-quote">
                <p>&ldquo;Magnam iure fugit recusandae nobis a amet, officiis laboriosam repudiandae? Quis nostrum numquam ducimus quo ab laboriosam qui expedita, cupiditate ex, sed dignissimos facere provident dolores, eius distinctio quas aliquid.&rdquo;</p>
                <cite class="block-47-quote-author">&mdash; John doe, CEO <a href="#">XYZ Inc.</a></cite>
              </blockquote>
            </div>
          </div>

         
        </div>
        

      </div>
    </div> -->

   
   <!-- ===== video section ====== -->
   
   
    <!-- <div class="site-block-half d-block d-lg-flex site-block-video" data-aos="fade">
      <div class="image bg-image order-2" style="background-image: url(images/hero_bg_1.jpg); ">
        <a href="https://vimeo.com/channels/staffpicks/93951774" class="play-button popup-vimeo"><span class="icon-play"></span></a>
      </div>
      <div class="text order-1">
        <h2 class="site-heading text-black mb-3">See Our <strong>Video</strong></h2>
        <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id cum vel, eius nulla inventore aperiam excepturi molestias incidunt, culpa alias repudiandae, a nobis libero vitae repellendus temporibus vero sit natus.</p>
        <p>Dolores perferendis ipsam animi fuga, dolor pariatur aliquam esse. Modi maiores minus velit iste enim sunt iusto, dolore totam consequuntur incidunt illo voluptates vero quaerat excepturi. Iusto dolor, cum et.</p>
      </div>
      
    </div> -->
   
    





<br><br><br>
    <div class="promo py-5 bg-primary" data-aos="fade">
      <div class="container text-center">
        <h2 class="d-block mb-0 font-weight-light text-white"><a href="#" class="text-white d-block">Contact Us </a></h2>
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
            Copyright &copy; <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All Rights Reserved | This template is made with <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://www.alteredsecurity.com/" target="_blank" >Altered Security</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>


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