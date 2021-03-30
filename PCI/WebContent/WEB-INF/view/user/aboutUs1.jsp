<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Medical City - Multi Theme For Hospital, Health Care, Clinic, Nursing and Doctor Html Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

<!-- Favicone Icon -->
<link rel="shortcut icon" type="image/x-icon" href="userResources/images/favicon.ico">
<!-- CSS -->
<link href="http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=lato:400,100,200,300,500" rel="stylesheet" type="text/css">
<link href="userResources/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="userResources/css/jquery-ui.css" rel="stylesheet" type="text/css">
<link href="userResources/css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="userResources/css/ionicons.css" rel="stylesheet" type="text/css">
<link href="userResources/css/owl.carousel.css" rel="stylesheet" type="text/css">
<link href="userResources/css/owl.transitions.css" rel="stylesheet" type="text/css">
<!--Main Slider-->
<link href="userResources/css/settings.css" type="text/css" rel="stylesheet" media="screen">
<link href="userResources/css/layers.css" type="text/css" rel="stylesheet" media="screen">
<link href="userResources/css/style.css" rel="stylesheet" type="text/css">
<link href="userResources/css/responsive.css" rel="stylesheet" type="text/css">
<!--Theme Color-->
<link href="userResources/css/default.css" rel="stylesheet" id="theme-color" type="text/css">
</head>
<body>
<!--loader-->
<div id="preloader">
  <div class="sk-circle">
    <div class="sk-circle1 sk-child"></div>
    <div class="sk-circle2 sk-child"></div>
    <div class="sk-circle3 sk-child"></div>
    <div class="sk-circle4 sk-child"></div>
    <div class="sk-circle5 sk-child"></div>
    <div class="sk-circle6 sk-child"></div>
    <div class="sk-circle7 sk-child"></div>
    <div class="sk-circle8 sk-child"></div>
    <div class="sk-circle9 sk-child"></div>
    <div class="sk-circle10 sk-child"></div>
    <div class="sk-circle11 sk-child"></div>
    <div class="sk-circle12 sk-child"></div>
  </div>
</div>
<!--loader--> 
<!-- Site Wraper -->
<div class="wrapper"> 
  
  <!-- HEADER -->
   <header id="header" class="header header-1">
    <jsp:include page="header1.jsp"></jsp:include>
     <jsp:include page="menu1.jsp"></jsp:include>
   </header>
  <!-- END HEADER --> 
  
  <!-- CONTENT --> 
  <!-- Intro Section -->
  <section class="inner-intro bg-img overlay-bg-color light-color parallax parallax-background">
    <div class="container">
      <div class="row title">
        <h2 class="h2">About</h2>
        <div class="page-breadcrumb"> <a href="user.html">Home</a>/<span>About</span> </div>
      </div>
    </div>
  </section>
  <!-- Intro Section --> 
  <!-- About Section -->
  <section class="about-section ptb">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 pb-xs-30"> <img src="userResources/images/image5.jpg" alt="" /> </div>
        <div class="col-sm-6"> <span class="sub-title">Welcome to Hospitals</span>
          <h2>Best Medical & Health care Needs to Our Patients</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut volutpat rutrum eros amet sollicitudin interdum. Suspendisse pulvinar, velit nec pharetra interdum, ante tellus ornare mi, et mollis tellus neque vitae elit. Mauris adipiscing mauris fringilla turpis interdum sed pulvinar nisi malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          <p>Donec sed odio dui. Nulla vitae elit libero, a pharetra augue. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
          <a class="btn btn-md btn-color-line xs-hidden mt-15">Read More</a> </div>
      </div>
    </div>
  </section>
  <!-- About Section --> 
  <!-- About Section -->
  <section class="we-best">
    <div class="booking-section">
      <div class="left-block bg-color float-none-xs" >
        <div class="treatment light-color float-none-xs">
          <h3>WHY WE ARE BEST</h3>
         
          <p class="lead">Cras dapibus Vivamus elementum semper nisi Aenean vulputate </p>
          <ul>
            <li> <i class="ion-thumbsup icon-circle"></i> <strong>WELL EXPERIENCED DOCTORS</strong>
              <p>Cras dapibus Vivamus elementum semper nisi Aenean vulputate eleifend tellus Aenean. </p>
            </li>
            <li> <i class="ion-clipboard icon-circle"></i> <strong>FREE MEDICAL COUNSELING</strong>
              <p>Cras dapibus Vivamus elementum semper nisi Aenean vulputate eleifend tellus Aenean. </p>
            </li>
            <li> <i class="ion-android-wifi icon-circle"></i> <strong>ONLINE BILL PAYMENT</strong>
              <p>Cras dapibus Vivamus elementum semper nisi Aenean vulputate eleifend tellus Aenean. </p>
            </li>
          </ul>
        </div>
      </div>
      <div class="right-block float-none-xs bg-leftside"> </div>
    </div>
  </section>
  
  <!-- Team Section -->
  <section id="team" class="fadeIn ptb ptb-sm-80 text-center">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 pb-15 col-sm-offset-2">
          <h3>Meet Our Specialists</h3>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
        </div>
      </div>
      <div class="spacer-15"></div>
      
      <!--Team Carousel -->
      <div class="row">
        <div id="team-carousel" class="owl-carousel team-carousel nf-carousel-theme">
          <div class="item dental">
            <div class="team-item nf-col-padding">
              <div class="team-item-img"> <img src="userResources/images/doctor1.jpg" alt="" />
                <div class="team-item-detail">
                  <div class="team-item-detail-inner light-color">
                    <h5>Dr. Mitchell KAPPOS</h5>
                    <p>Similique sunt culpa qui officia deserunt mollitia animi dolorum fuga.</p>
                    <ul class="social">
                      <li><a href="javascript:avoid(0);"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-linkedin"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                    <a class="btn btn-md btn-white-line xs-hidden mt-15">Read More</a> </div>
                </div>
              </div>
              <div class="team-item-info">
                <h5>Dr. Mitchell KAPPOS</h5>
                <p class="">Dental</p>
                <a class="btn btn-md btn-color-line xs-hidden mt-15">book appointment</a> </div>
            </div>
          </div>
          <div class="item gynaecological">
            <div class="team-item nf-col-padding">
              <div class="team-item-img"> <img src="userResources/images/doctor2.jpg" alt="" />
                <div class="team-item-detail">
                  <div class="team-item-detail-inner light-color">
                    <h5>Dr. Leonardo da Vinci</h5>
                    <p>Similique sunt culpa qui officia deserunt mollitia animi dolorum fuga.</p>
                    <ul class="social">
                      <li><a href="javascript:avoid(0);"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-linkedin"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                    <a class="btn btn-md btn-white-line xs-hidden mt-15">Read More</a> </div>
                </div>
              </div>
              <div class="team-item-info">
                <h5>Dr. Leonardo da Vinci</h5>
                <p class="">Gynaecological</p>
                <a class="btn btn-md btn-color-line xs-hidden mt-15">book appointment</a> </div>
            </div>
          </div>
          <div class="item pediatric">
            <div class="team-item nf-col-padding">
              <div class="team-item-img"> <img src="userResources/images/doctor3.jpg" alt="" />
                <div class="team-item-detail">
                  <div class="team-item-detail-inner light-color">
                    <h5>Dr. Sneha Doe</h5>
                    <p>Similique sunt culpa qui officia deserunt mollitia animi dolorum fuga.</p>
                    <ul class="social">
                      <li><a href="javascript:avoid(0);"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-linkedin"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                    <a class="btn btn-md btn-white-line xs-hidden mt-15">Read More</a> </div>
                </div>
              </div>
              <div class="team-item-info">
                <h5>Dr. Sneha Doe</h5>
                <p class="">Pediatric Clinic</p>
                <a class="btn btn-md btn-color-line xs-hidden mt-15">book appointment</a> </div>
            </div>
          </div>
          <div class="item surgeon">
            <div class="team-item nf-col-padding">
              <div class="team-item-img"> <img src="userResources/images/doctor4.jpg" alt="" />
                <div class="team-item-detail">
                  <div class="team-item-detail-inner light-color">
                    <h5>Dr. Mixi Lee</h5>
                    <p>Similique sunt culpa qui officia deserunt mollitia animi dolorum fuga.</p>
                    <ul class="social">
                      <li><a href="javascript:avoid(0);"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-linkedin"></i></a></li>
                      <li><a href="javascript:avoid(0);"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                    <a class="btn btn-md btn-white-line xs-hidden mt-15">Read More</a> </div>
                </div>
              </div>
              <div class="team-item-info">
                <h5>Dr. mixi Lee</h5>
                <p class="">Surgeon</p>
                <a class="btn btn-md btn-color-line xs-hidden mt-15">book appointment</a> </div>
            </div>
          </div>
        </div>
      </div>
      <!--End Team Carousel --> 
    </div>
  </section>
  <!-- End Team Section -->
  
  <div class="fact-counter-wrapper ptb pt-50">
    <div class="container text-center">
      <div class="row">
        <div class="col-sm-3">
          <div class="single-fact">
            <div class="icon-box"> <i class="fa fa-heartbeat"></i> </div>
            <span class="counter" data-count="365">0</span>
            <p>Satisfied  Patients</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="single-fact">
            <div class="icon-box"> <i class="fa fa-user-md"></i> </div>
            <span class="counter" data-count="155">0</span>
            <p>Qualified Doctors</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="single-fact">
            <div class="icon-box"> <i class="fa fa-hospital-o"></i> </div>
            <span class="counter" data-count="200">0</span>
            <p>Hospital Rooms</p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="single-fact">
            <div class="icon-box"> <i class="fa fa-gift "></i> </div>
            <span class="counter" data-count="100">0</span>
            <p>Awards Won</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- FOOTER -->
    <jsp:include page="footer1.jsp"></jsp:include>
  <!-- END FOOTER --> 
  
  <!-- Scroll Top --> 
  <a class="scroll-top"> <i class="fa fa-angle-double-up"></i> </a> 
  <!-- End Scroll Top --> 
  
</div>
<!-- Site Wraper End --> 
<!-- Quick Enquiry form popup -->
<div class="modal join-now-form">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
        <header class="page-header">
          <h2>Quick Enquiry</h2>
        </header>
      </div>
      <div class="modal-body">
        <form>
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group col-xs-12 col-sm-6">
                <label for="name-join">Name<span>*</span></label>
                <input type="text" class="form-control" id="name-join">
              </div>
              <div class="form-group col-xs-12 col-sm-6">
                <label for="date-birth">Date Of Birth<span>*</span></label>
                <input type="text" class="form-control datepicker" id="date-birth">
                <i class="fa fa-calendar"></i> </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group col-xs-12 col-sm-6">
                <label for="email-join">Email<span>*</span></label>
                <input type="text" class="form-control" id="email-join">
              </div>
              <div class="form-group col-xs-12 col-sm-6">
                <label for="phone-join">Phone<span>*</span></label>
                <input type="text" class="form-control" id="phone-join">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group col-xs-12 col-sm-6">
                <label for="select-hospital">Select Our Hospital<span>*</span></label>
                <select class="form-control" id="select-hospital">
                  <option>Medical City Hospital abc</option>
                  <option>Medical City Hospital abc</option>
                  <option>Medical City Hospital abc</option>
                  <option>Medical City Hospital abc</option>
                  <option>Medical City Hospital abc</option>
                </select>
              </div>
              <div class="form-group col-xs-12 col-sm-6">
                <label for="select-file">Add A New File</label>
                <input type="file" class="form-control" id="select-file">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group col-xs-12">
                <label for="message-join">Query<span>*</span></label>
                <textarea class="form-control" id="message-join"></textarea>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="form-group col-xs-12">
                <button type="button" class="btn btn-default pull-right"> Submit </button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    <!-- /.modal-content --> 
  </div>
  <!-- /.modal-dialog --> 
</div>
<!-- Quick Enquiry form popup --> 
<!-- Quick Enquiry form popup -->
<div class="modal emergency-call">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
        <header class="page-header">
          <h2>EMERGENCY CALL</h2>
        </header>
      </div>
      <div class="modal-body ptb-15">
        <div class="row pt-30 b-brdr">
          <div class="form-group col-xs-12 col-sm-4 col-sm-offset-3 ">
            <h5>Emergency No.</h5>
            <strong><i class="fa fa-phone-square"></i> <a href="javascript:avoid(0);">+(001) 01235-12365 </a></strong> </div>
          <div class="form-group col-xs-12 col-sm-4">
            <h5>Emergency No.</h5>
            <strong><i class="fa fa-phone-square"></i> <a href="javascript:avoid(0);">+(001) 01235-12365 </a></strong> </div>
        </div>
        <div class="row pt-30 b-brdr">
          <div class="form-group col-xs-12 col-sm-4 col-sm-offset-3 ">
            <h5>Emergency No.</h5>
            <strong><i class="fa fa-phone-square"></i> <a href="javascript:avoid(0);">+(001) 01235-12365 </a></strong> </div>
          <div class="form-group col-xs-12 col-sm-4">
            <h5>Emergency No.</h5>
            <strong><i class="fa fa-phone-square"></i> <a href="javascript:avoid(0);">+(001) 01235-12365 </a></strong> </div>
        </div>
        <div class="row pt-30 b-brdr">
          <div class="form-group col-xs-12 col-sm-4 col-sm-offset-3 ">
            <h5>Emergency No.</h5>
            <strong><i class="fa fa-phone-square"></i> <a href="javascript:avoid(0);">+(001) 01235-12365 </a></strong> </div>
          <div class="form-group col-xs-12 col-sm-4">
            <h5>Emergency No.</h5>
            <strong><i class="fa fa-phone-square"></i> <a href="javascript:avoid(0);">+(001) 01235-12365 </a></strong> </div>
        </div>
      </div>
    </div>
    <!-- /.modal-content --> 
  </div>
  <!-- /.modal-dialog --> 
</div>
<!-- Quick Enquiry form popup --> 

<script src="userResources/js/jquery-1.12.4.min.js" type="text/javascript"></script> 
<script src="userResources/js/plugin/jquery.easing.js" type="text/javascript"></script> 
<script src="userResources/js/jquery-ui.js" type="text/javascript"></script> 
<script src="userResources/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="userResources/js/owl.carousel.min.js" type="text/javascript"></script> 
<script src="userResources/js/jquery.appear.js" type="text/javascript"></script> 
<!-- revolution Js --> 
<script type="text/javascript" src="userResources/js/jquery.themepunch.tools.min.js"></script> 
<script type="text/javascript" src="userResources/js/jquery.themepunch.revolution.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.slideanims.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.layeranimation.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.navigation.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.parallax.min.js"></script> 
<script type="text/javascript" src="userResources/js/jquery.revolution.js"></script> 
<!-- revolution Js --> 
<script src="userResources/js/isotope.pkgd.min.js" type="text/javascript"></script> 
<script src="userResources/js/masonry.pkgd.min.js" type="text/javascript"></script> 
<script src="userResources/js/custom.js" type="text/javascript"></script>
</body>
</html>
