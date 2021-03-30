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
<link href="userResources/cssowl.transitions.css" rel="stylesheet" type="text/css">
<link href="userResources/css/fullcalendar.min.css" rel="stylesheet" type="text/css">
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
  <!-- CONTENT -->
    <!-- Intro Section -->
  <section class="inner-intro bg-img overlay-bg-color light-color parallax parallax-background">
    <div class="container">
      <div class="row title">
        <h2 class="h2">Timetable</h2>
        <div class="page-breadcrumb"> <a>Home</a>/<span>Timetable</span> </div>
      </div>
    </div>
  </section>
  <!-- Intro Section --> 
  <div id="timetable" class="ptb-80">
  <div class="container">
          <div class="row">
            <div class="col-md-12">

 <!-- === FC Calendar Starts === -->
              <div class="fc-timetable-wrapper">
                <!-- Fc Calendar Filter -->
                <ul class="filter-departments list-inline">
                  <li><a class="active" data-filter="all" href="#">All</a></li>
                  <li><a data-filter="fc-departments-orthopaedics" class="orthopaedics" href="#orthopaedics">orthopaedics</a></li>
                  <li><a data-filter="fc-departments-gastroenterology" class="gastroenterology" href="#gastroenterology">gastroenterology</a></li>
                  <li><a data-filter="fc-departments-orthopaedics" class="orthopaedics" href="#orthopaedics">orthopaedics </a></li>
                  <li><a data-filter="fc-departments-dental" class="dental" href="#dental">Dental</a></li>
                  <li><a data-filter="fc-departments-cardiac-sciences" class="cardiac-sciences" href="#cardiac-sciences">cardiac-sciences</a></li>
                </ul>
                <!-- Fc Calendar Calendar -->
                <div id='calendar'></div>
              </div>
			   </div>
			    </div>
				 </div>

  </div>
  <!-- FOOTER -->
  <footer>
   <jsp:include page="footer.jsp"></jsp:include>
  </footer>

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
<script src="userResources/js/moment.min.js" type="text/javascript"></script>
<script src="userResources/js/fullcalendar.min.js" type="text/javascript"></script> 
 
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
  <!-- Fc Calendar Script -->
              <script>
                $(document).ready(function() {
                  $(".filter-departments a").on("click", function(e){
                    e.preventDefault();
                    var filterData = $(this).data("filter");
                    if (filterData == "all") {
                      $(".filter-departments a.active").removeClass("active");
                      $(this).addClass("active");
                      $(".fc-content-skeleton a.fc-event.hide").removeClass("hide");
                    } else {
                      $(".filter-departments a.active").removeClass("active");
                      $(this).addClass("active");
                      $(".fc-content-skeleton a.fc-event.hide").removeClass("hide");
                      $(".fc-content-skeleton a.fc-event").not("."+filterData).addClass("hide");
                    }
                  });

                  var monday = '2015-03-09T';
                  var tuesday = '2015-03-10T';
                  var wednesday = '2015-03-11T';
                  var thursday = '2015-03-12T';
                  var friday = '2015-03-13T';
                  var saturday = '2015-03-14T';
                  var sunday = '2015-03-15T';
                  $('#calendar').fullCalendar({
                   header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},

                    axisFormat: 'HH:mm - HH:mm',
                    minTime: '08:00:00',
                    maxTime: '24:00:00',
                    defaultView: 'agendaWeek',
                    defaultDate: '2015-03-09',
                    firstDay: 1,
                    slotDuration: '01:00:00',
                    columnFormat: 'dddd',
                    allDaySlot: false,
                    editable: false,
                    eventLimit: true,
                    windowResize: function(view) {
                    },
                    events: [
                      {
                        title: 'Orthopaedics Care 10:00 - 12:30',
                        start: monday+'10:00:00',
                        end: monday+'12:30:00',
                        url: 'service-single.html',
                        className: 'fc-departments-orthopaedics'
                      },
                      {
                        title: 'orthopaedics Care 08:00 - 11:00',
                        start: saturday+'08:00:00',
                        end: saturday+'11:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-orthopaedics'
                      },
                      {
                        title: 'orthopaedics Care 12:00 - 15:00',
                        start: thursday+'12:00:00',
                        end: thursday+'15:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-orthopaedics'
                      },
                      {
                        title: 'cardiac-sciences Care 08:00 - 09:00',
                        start: wednesday+'08:00:00',
                        end: wednesday+'09:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-cardiac-sciences'
                      },
                      {
                        title: 'cardiac-sciences Care 11:00 - 13:00',
                        start: tuesday+'11:00:00',
                        end: tuesday+'13:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-cardiac-sciences'
                      },
                      {
                        title: 'cardiac-sciences Care 16:00 - 19:00',
                        start: saturday+'16:00:00',
                        end: saturday+'19:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-cardiac-sciences'
                      },
                      {
                        title: 'orthopaedics Care 14:00 - 18:00',
                        start: tuesday+'14:00:00',
                        end: tuesday+'18:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-orthopaedics'
                      },
                      {
                        title: 'orthopaedics Care 11:00 - 14:30',
                        start: friday+'11:00:00',
                        end: friday+'14:30:00',
                        url: 'service-single.html',
                        className: 'fc-departments-orthopaedics'
                      },
                      {
                        title: 'gastroenterology Care 10:00 - 12:00',
                        start: wednesday+'10:00:00',
                        end: wednesday+'12:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-gastroenterology'
                      },
                      {
                        title: 'gastroenterology Care 16:30 - 8:30:',
                        start: friday+'16:30:00',
                        end: friday+'18:30:00',
                        url: 'service-single.html',
                        className: 'fc-departments-gastroenterology'
                      },
                      {
                        title: 'gastroenterology Care 11:30 - 13:00',
                        start: sunday+'11:30:00',
                        end: sunday+'13:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-gastroenterology'
                      },
                      {
                        title: 'Dental Care 14:00 - 16:30',
                        start: monday+'14:00:00',
                        end: monday+'16:30:00',
                        url: 'service-single.html',
                        className: 'fc-departments-dental'
                      },
                      {
                        title: 'Dental Care 17:00 - 19:00',
                        start: wednesday+'17:00:00',
                        end: wednesday+'19:00:00',
                        url: 'service-single.html',
                        className: 'fc-departments-dental'
                      },
                      {
                        title: 'Dental Care 08:00 - 10:30',
                        start: sunday+'08:00:00',
                        end: sunday+'10:30:00',
                        url: 'service-single.html',
                        className: 'fc-departments-dental'
                      }
                    ]
                  });
                  
                });
                
                //fix hour range
                $( window ).load(function() {
                  $("#calendar .fc-axis.fc-time").each(function() {
                    var each_range = $(this).children('span').html();
                    var range_array = each_range.split(' - ');
                    if( range_array[0] == range_array[1] ) {
                      var range_end_hour = range_array[1].split(':');
                      var h = parseInt(range_end_hour[0], 10) + 1;
                      $(this).children('span').html(range_array[0] + ' - ' + h + ':' + range_end_hour[1] )
                    }
                  });
                  if(window.location.hash) {
                    var hash = document.URL.substr(document.URL.indexOf('#')+1) 
                    console.log(hash);
                    $(".filter-departments a."+hash).trigger('click');
                    console.log($(".filter-departments a."+hash));
                  }
                });
              </script>
              <!-- === FC Calendar Ends === -->

</body>
</html>
