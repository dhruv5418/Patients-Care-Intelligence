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
    
    <!-- page css -->
    <link href="adminResources/css/login-register-lock.css" rel="stylesheet">
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

<body class="skin-blue card-no-border">
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
    <section id="wrapper">
        <div class="login-register" style="background-image:url(adminResources/images/login-register.jpg);">
            <div class="login-box card">
                <div class="card-body">
                    
                   <form class="form-horizontal form-material" id="forgetform" name="form" action="step2.html" method="post">
                        <h3 class="box-title m-b-20">Change Password</h3>
                        <div class="form-group "><span id="otpMatch"></span>
                            <div class="col-xs-12">
                                <label for="OTP">OTP</label>
                    			<input class="form-control" id="OTP" type="text" onkeyup="match()" name="OTP" class="validate">
                        </div>
                        </div>
                        <div class="form-group">
                        <div class="col-xs-12">
                            <label for="password">Password</label>
                    	<input class="form-control" id="password" type="password" name="password" class="validate">
                          </div>   
                          </div>   
                          <div class="form-group">
                        <div class="col-xs-12">
                            <label for="Confirmpassword">Confirm Password</label>
                    	<input class="form-control" id="Confirmpassword" type="password" name="Confirmpassword" class="validate">
                          </div>             
                        </div>
                        
                        <div class="form-group text-center">
                            <div class="col-xs-12 p-b-20">
                                <button class="btn btn-block btn-lg btn-info btn-rounded" type="submit">Change Password</button>
                            </div>
                        </div>
                       
                       
                    </form>
             </div>
            </div>
        </div>
    </section>
    
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
    <!--Custom JavaScript -->
    <script type="text/javascript">
        $(function() {
            $(".preloader").fadeOut();
        });
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        });
        // ============================================================== 
        // Login and Recover Password 
        // ============================================================== 
        $('#to-recover').on("click", function() {
            $("#loginform").slideUp();
            $("#recoverform").fadeIn();
        });
    </script>
    
</body>

</html>