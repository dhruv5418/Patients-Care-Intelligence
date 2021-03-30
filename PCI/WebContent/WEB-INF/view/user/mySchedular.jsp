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
    <jsp:include page="header.jsp"></jsp:include>
   <jsp:include page="menu.jsp"></jsp:include>
  </header>
  <!-- END HEADER --> 
  
  <!-- Intro Section -->
  <section class="inner-intro bg-img overlay-bg-color light-color parallax parallax-background">
    <div class="container">
      <div class="row title">
        <h2 class="h2">My Schedule</h2>
        <div class="page-breadcrumb"> <a href="user.html">Home</a>/<span>My Schedule</span> </div>
      </div>
    </div>
  </section>
   <section class="ptb ptb-sm-80">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2 text-center">
          <h2>CHECK YOUR SCHEDULE</h2>
          <p class="lead">Do your work as per your schedule.</p>
          <!-- You're not going to hit a ridiculously long phone menu when you call us. Your email isn't going to the inbox abyss, never to be seen or heard from again. At Choice Screening, we provide the exceptional service we'd want to experience ourselves! -->
        </div>
      </div>
     
        </div>
    
    <!-- Map Section -->
    <!-- Map Section -->
    
  </section>
  <!-- End Intro Section --> 
  <!-- Contact Section -->
  <section class="ptb ptb-sm-80">
  <div class="container">
    <div class="container contact-form pt-80 mt-up">
      <div class="row">
        <div class="col-sm-12">
           <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
            
             <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                        
                                            <tr>
                                            	<th>Schedular Id</th>
                                                <th>Word Details</th>
                                                <th>Nurse Name</th>
                                                <th>Start Date</th>
                                                <th>Start Time</th>
                                                <th>End Date</th>
                                                <th>End Time</th>
                                                <th>Placed Date</th>                                   
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                         <c:forEach items="${list}" var="x">
                                            <tr>
                                            	<td>${x.schedularId}</td>
                                                <td>${x.wardVO.wardName}</td>
                                                <td>${x.nurseVO.firstName}</td>
                                                <td>${x.startDate}</td>
                                                <td>${x.startTime}</td>
                                                <td>${x.endDate}</td>
                                                <td>${x.endTime}</td>
                                                <td>${x.currentDate}</td>
                                          
                                            </tr>
                                          </c:forEach> 
                                        </tbody>
                                    </table>
            
         
          <!-- END Contact FORM --> 
        </div>
      </div>
    </div>
   </div>
  </section>
  <!-- Contact Section --> 
  
  <!-- FOOTER -->
  <jsp:include page="footer.jsp"></jsp:include>
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
<script src="userResources/js/jquery.easing.js" type="text/javascript"></script> 
<script src="userResources/js/jquery-ui.js" type="text/javascript"></script> 
<script src="userResources/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="userResources/js/owl.carousel.min.js" type="text/javascript"></script> 
<!-- revolution Js --> 
<script type="text/javascript" src="userResources/js/jquery.themepunch.tools.min.js"></script> 
<script type="text/javascript" src="userResources/js/jquery.themepunch.revolution.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.slideanims.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.layeranimation.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.navigation.min.js"></script> 
<script type="text/javascript" src="userResources/js/revolution.extension.parallax.min.js"></script> 
<script type="text/javascript" src="userResources/js/jquery.revolution.js"></script> 
<!-- revolution Js --> 
<script src="userResources/js/gmap.js" type="text/javascript"></script> 
<script src="http://maps.google.com/maps/api/js?sensor=true"></script> 

<script src="userResources/js/isotope.pkgd.min.js" type="text/javascript"></script> 
<script src="userResources/jsuserResources/masonry.pkgd.min.js" type="text/javascript"></script> 
<script src="userResources/js/custom.js" type="text/javascript"></script> 
<script type="text/javascript" src="userResources/js/validation.js"></script>
</body>
</html>
