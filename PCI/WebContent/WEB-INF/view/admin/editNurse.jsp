<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="adminResources/images/favicon.png">
    <title>Elite Hospital Admin Template - Hospital admin dashboard web app kit</title>
    <!-- Custom CSS -->
    <link href="adminResources/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
	function fn()
	{
		var x=document.getElementById("pass")
		if(x.type==="password")
			{
				x.type="text";
			}
		else
			{
				x.type="password";
			
			}
		
	}
	</script>
</head>

<body class="skin-megna fixed-layout">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Elite Hospital</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="admin.html">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="adminResources/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="adminResources/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <span class="hidden-xs"><span class="font-bold">elite</span>hospital</span>
                    </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <jsp:include page="header.jsp"></jsp:include>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <jsp:include page="menu.jsp"></jsp:include>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h4 class="text-themecolor">Add Nurse</h4>
                    </div>
                    <div class="col-md-7 align-self-center text-right">
                        <div class="d-flex justify-content-end align-items-center">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="admin.html">Home</a></li>
                                <li class="breadcrumb-item active">Manage Nurse</li>
                                <li class="breadcrumb-item active">Edit Nurse</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                 <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Edit Nurse</h4>
                                <f:form class="form-material form-horizontal" modelAttribute="data" action="updatenurse.html">
                                      <f:hidden path="nurseId"/>
                                      <f:hidden path="lvo.loginId"/>
                                    
                                    <div class="form-group">
                                        <h5>First Name <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <f:input type="text" path="firstName" name="text" class="form-control" required="required" data-validation-required-message="This field is required"/> </div>
                                        <div class="form-control-feedback"></div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <h5>Last Name <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <f:input type="text" path="lastName" name="text" class="form-control" required="required" data-validation-required-message="This field is required"/> </div>
                                        <div class="form-control-feedback"></div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Mobile No <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <f:input type="text" path="mobileNumber" name="text" class="form-control" required="required" data-validation-required-message="This field is required"/> </div>
                                        <div class="form-control-feedback"></div>
                                    </div>
                                   <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <div class="controls">                                    
                                            <f:input type="email" path="lvo.email" class="form-control" id="exampleInputEmail1" required="required" placeholder="Enter email"/></div>
                                     <div class="form-control-feedback"></div>
                                        </div>
                                         
                                   <div class="form-group">
                                        <label>Password</label>
                                        <f:input type="password" path="lvo.password" id="pass" class="form-control" required="required" value=""/> 
                                        <input type="checkbox" onclick="fn()">Show Password
                                        </div>
                                      
                                      <div class="form-group row">
                                        <label for="example-date-input" class="col-2 col-form-label">Birth Date</label>
                                            <f:input class="form-control" path="birthDate" type="date" value="2011-08-19" required="required" id="example-date-input"/>
                                        </div>
                                      
                                      
                                    
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                  
                                    
                                    <!-- <div class="form-group">
                                        <h5>Email Field <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="email" name="email" class="form-control" required data-validation-required-message="This field is required"> </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Password Input Field <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="password" name="password" class="form-control" required data-validation-required-message="This field is required"> </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Repeat Password Input Field <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="password" name="password2" data-validation-match-match="password" class="form-control" required> </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>File Input Field <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="file" name="file" class="form-control" required> </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Input with Icon <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Addon To Right" data-validation-required-message="This field is required">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-dollar"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Maximum Character Length <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="maxChar" class="form-control" required data-validation-required-message="This field is required" maxlength="10">
                                        </div>
                                        <div class="form-control-feedback"><small>Add <code>maxlength='10'</code> attribute for maximum number of characters to accept. </small></div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Minimum Character Length <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="minChar" class="form-control" required data-validation-required-message="This field is required" minlength="6">
                                        </div>
                                        <div class="form-control-feedback"><small>Add <code>minlength="6"</code> attribute for minimum number of characters to accept.</small></div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Only Numbers <span class="text-danger">*</span></h5>
                                        <div class="input-group">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="fa fa-dollar"></i></span>
                                            </div>
                                            <input type="number" name="onlyNum" class="form-control" required data-validation-required-message="This field is required">
                                            <div class="input-group-append">
                                                <span class="input-group-text">0.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Maximum Number <span class="text-danger">*</span></h5>
                                        <input type="text" name="maxNum" class="form-control" required data-validation-required-message="This field is required" max="25">
                                        <div class="form-control-feedback"> <small><i>Must be lower than 25</i></small> - <small>Add <code>max</code> attribute for maximum number to accept. Also use <code>data-validation-max-message</code> attribute for max failure message</small> </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Minimum Number <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="minNum" class="form-control" required data-validation-required-message="This field is required" min="10">
                                        </div>
                                        <div class="form-control-feedback"><small><i>Must be higher than 10</i></small> - <small>Add <code>min</code> attribute for minimum number to accept. Also use <code>data-validation-min-message</code> attribute for min failure message</small></div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Text Input Range <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="text" class="form-control" required data-validation-required-message="This field is required" minlength="10" maxlength="20" placeholder="Enter number between 10 &amp; 20"> </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Input with Button <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Search" required> <span class="input-group-btn">
                                                  <button class="btn btn-info" type="button">Go!</button>
                                                </span> </div>
                                        </div>
                                    </div> -->
                                    <!-- <div class="form-group">
                                        <h5>No Characters, Only Numbers <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" name="noChar" class="form-control" required data-validation-containsnumber-regex="(\d)+" data-validation-containsnumber-message="No Characters Allowed, Only Numbers"> </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Pattern <span class="text-danger">*</span> <small><i>Must start with 'a' and end with 'z'</i></small></h5>
                                        <div class="controls">
                                            <input type="text" name="pattern" pattern="a.*z" data-validation-pattern-message="Must start with 'a' and end with 'z'" class="form-control" required>
                                            <div class="form-control-feedback"><small>Add <code>pattern</code> attribute to set input pattern. Also use <code>data-validation-pattern-message</code> attribute for pattern failure message</small></div>
                                        </div>
                                    </div> -->
                                    <!-- <div class="form-group">
                                        <h5>Enter URL <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" class="form-control" placeholder="Add URL" data-validation-regex-regex="((http[s]?|ftp[s]?):\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*" data-validation-regex-message="Only Valid URL's">
                                            <div class="form-control-feedback"><small>Add <code>data-validation-regex-regex</code> attribute for regular expression. Also use <code>data-validation-regex-message</code> attribute for regex failure message</small></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <h5>Enter Email Address <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" class="form-control" placeholder="Email Address" data-validation-regex-regex="([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})" data-validation-regex-message="Enter Valid Email"> </div>
                                    </div> -->
                                   <!--  <div class="form-group">
                                        <h5>Enter Date <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <input type="text" class="form-control" placeholder="MM/DD/YYYY" data-validation-regex-regex="([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})" data-validation-regex-message="Enter Valid Email"> </div>
                                    </div> -->
                                   <!--  <div class="form-group">
                                        <h5>Basic Select <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <select name="select" id="select" required class="form-control">
                                                <option value="">Select Your City</option>
                                                <option value="1">India</option>
                                                <option value="2">USA</option>
                                                <option value="3">UK</option>
                                                <option value="4">Canada</option>
                                                <option value="5">Dubai</option>
                                            </select>
                                        </div>
                                    </div> -->
                                  <!--   <div class="form-group">
                                        <h5>Textarea <span class="text-danger">*</span></h5>
                                        <div class="controls">
                                            <textarea name="textarea" id="textarea" class="form-control" required placeholder="Textarea text"></textarea>
                                        </div>
                                    </div> -->
                                    <!-- <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h5>Checkbox <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" required value="single" class="custom-control-input" id="customCheck1">
                                                        <label class="custom-control-label" for="customCheck1">Check this custom checkbox</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> -->
                                        <!-- <div class="col-md-6">
                                            <div class="form-group">
                                                <h5>Checkbox Group <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" value="x" name="styled_checkbox" required class="custom-control-input" id="customCheck2">
                                                            <label class="custom-control-label" for="customCheck2">I am unchecked</label>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" value="y" name="styled_checkbox" class="custom-control-input" id="customCheck3">
                                                            <label class="custom-control-label" for="customCheck3">I am unchecked too</label>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                                    <!-- <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h5>Select Max 2 Checkbox<span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="styled_max_checkbox" data-validation-maxchecked-maxchecked="2" data-validation-maxchecked-message="Don't be greedy!" required class="custom-control-input" id="customCheck4">
                                                            <label class="custom-control-label" for="customCheck4">I am unchecked checkbox</label>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="styled_max_checkbox" class="custom-control-input" id="customCheck5">
                                                            <label class="custom-control-label" for="customCheck5">I am unchecked too</label>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="styled_max_checkbox" class="custom-control-input" id="customCheck6">
                                                            <label class="custom-control-label" for="customCheck6">You can check me</label>
                                                        </div>
                                                    </fieldset>
                                                </div> <small>Select any 2 options</small> </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h5>Minimum 2 Checkbox selection<span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" value="1" data-validation-minchecked-minchecked="2" data-validation-minchecked-message="Choose at least two" name="styled_min_checkbox" required class="custom-control-input" id="customCheck7">
                                                            <label class="custom-control-label" for="customCheck7">I am unchecked checkbox</label>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" value="2" name="styled_min_checkbox" class="custom-control-input" id="customCheck8">
                                                            <label class="custom-control-label" for="customCheck8">I am unchecked checkbox too</label>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" value="3" name="styled_min_checkbox" class="custom-control-input" id="customCheck9">
                                                            <label class="custom-control-label" for="customCheck9">You can check me</label>
                                                        </div>
                                                    </fieldset>
                                                </div> <small>Select any 2 options</small> </div>
                                        </div>
                                    </div> -->
                                    <!-- <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h5>Radio Buttons <span class="text-danger">*</span></h5>
                                                <fieldset class="controls">
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" value="1" name="styled_radio" required id="styled_radio1" class="custom-control-input">
                                                        <label class="custom-control-label" for="styled_radio1">Check me</label>
                                                    </div>
                                                </fieldset>
                                                <fieldset>
                                                    <div class="custom-control custom-radio">
                                                        <input type="radio" value="2" name="styled_radio" id="styled_radio2" class="custom-control-input">
                                                        <label class="custom-control-label" for="styled_radio2">or me</label>
                                                    </div>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <h5>Inline Radio Buttons <span class="text-danger">*</span></h5>
                                                <div class="controls">
                                                    <fieldset>
                                                        <div class="custom-control custom-radio">
                                                            <input type="radio" value="Yes" name="styled_inline_radio" required id="styled_radio_inline1" class="custom-control-input">
                                                            <label class="custom-control-label" for="styled_radio_inline1">Check me</label>
                                                        </div>
                                                    </fieldset>
                                                    <fieldset>
                                                        <div class="custom-control custom-radio">
                                                            <input type="radio" value="No" name="styled_inline_radio" id="styled_radio_inline2" class="custom-control-input">
                                                            <label class="custom-control-label" for="styled_radio_inline2">or me</label>
                                                        </div>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                       -->              <div class="text-xs-right">
                                        <button type="submit" class="btn btn-info">Submit</button>
                                        <button class="btn btn-inverse">Cancel</button>
                                    </div>
                                </f:form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <div class="right-sidebar">
                    <div class="slimscrollright">
                        <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                        <div class="r-panel-body">
                            <ul id="themecolors" class="m-t-20">
                                <li><b>With Light sidebar</b></li>
                                <li><a href="javascript:void(0)" data-skin="skin-default" class="default-theme">1</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-green" class="green-theme">2</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-red" class="red-theme">3</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-blue" class="blue-theme">4</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-purple" class="purple-theme">5</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-megna" class="megna-theme working">6</a></li>
                                <li class="d-block m-t-30"><b>With Dark sidebar</b></li>
                                <li><a href="javascript:void(0)" data-skin="skin-default-dark" class="default-dark-theme ">7</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-green-dark" class="green-dark-theme">8</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-red-dark" class="red-dark-theme">9</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-blue-dark" class="blue-dark-theme">10</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-purple-dark" class="purple-dark-theme">11</a></li>
                                <li><a href="javascript:void(0)" data-skin="skin-megna-dark" class="megna-dark-theme ">12</a></li>
                            </ul>
                            <ul class="m-t-20 chatonline">
                                <li><b>Chat option</b></li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/1.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/2.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/3.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/4.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/5.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/6.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/7.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)"><img src="adminResources/images/8.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="adminResources/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="adminResources/js/popper.min.js"></script>
    <script src="adminResources/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="adminResources/js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="adminResources/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="adminResources/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="adminResources/js/sticky-kit.min.js"></script>
    <script src="adminResources/js/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="adminResources/js/custom.min.js"></script>
    <script src="adminResources/js/pages/validation.js"></script>
    <script>
    ! function(window, document, $) {
        "use strict";
        $("input,select,textarea").not("[type=submit]").jqBootstrapValidation();
    }(window, document, jQuery);
    </script>
</body>

</html>