<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0048)http://bootstrapk.com/examples/starter-template/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://bootstrapk.com/favicon.ico">

    <title>Hubstel</title>
    
    
	
    <!-- Bootstrap core CSS -->
    <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/pixel.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="resources/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
<style>
input[type="text"]{
      width:30%;
      height:100%;
      font-size:1em;
      padding-left: 5px;
      display:inline;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 300;
    letter-spacing: 0.3px;
}

p {
	font-size:17px;
	padding-bottom:10px;
}

h1 {
	font-weight: 650;
}

button {
	color:white;
	background-color:#2aabd2;
	letter-spacing: 0.7px;
}

.b{
	font-weight: 600;
}
</style>

<script src="/pp/resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	
	function signupForm(){
		window.open('signupForm','pop','resizable=no scrollbars=yes top=80 left=500 width=500 height=430');
		return false;
	}


</script>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/pp/" style="font-weight: 600;">Hubstel</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/pp/">Home</a></li>
            <li><a href="http://bootstrapk.com/examples/starter-template/#about">About</a></li>
            <li><a href="http://bootstrapk.com/examples/starter-template/#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>


    <div class="container">
	 <div class="starter-template" style="padding-top:150px;">
        
        <section class="min-vh-100 d-flex align-items-center">
            <div class="bg-img-holder section-image top-0 left-0 col-lg-6 col-xl-7 z-10 vh-100 d-none d-lg-block"
                data-background="../../img/pages/blog.jpg">
            </div>
                <div class="row align-items-center">
                    
                                <div class=" text-sm-center">
                                    <h1>Login</h1>
                                    <p class="text-gray mb-0">Sign in to your account to continue.</p>
                                </div>
							<div class="btn-wrapper my-4" style="display:inline-flex; width:500px;">
								<div style= "width:50%;  margin:auto;">
								<a href="#" style= "width:40%; background-color:#FFAB00; color:white;" class="btn btn-sm btn-icon mb-1 mb-sm-0">Google</a>
								<a href="#" style= "width:40%; background-color:#FFAB00; color:white;" class="btn  btn-sm btn-icon mb-1 mb-sm-0">Facebook</a>
							 	</div>
							 <span class="clearfix"></span> 
							
							</div>
							
							<div style= "width:500px; margin:auto; vertical-align:center; padding-top:20px; padding-bottom:10px;">
							<span>
							<input type="email" style="margin-bottom:10px;"  class="form-control" id="input-email" placeholder="Enter email" required> 
							<input class="form-control" placeholder="Password" type="password" required>
							</span>
							
							<div style= "width:500px; margin:auto; vertical-align:center; padding-top:10px; padding-bottom:10px;">
								<div>
								<button type="submit" class="btn btn-block">Login</button>
							</div>
							</div>
							
							<div class="b" style= "display:inline-flex; width:500px;">
								<div style= "width: 50%; text-align:left;">
								<small>Not registered?</small> 
								<a href="javascript:signupForm()" class="small font-weight-bold">Create account</a>
								</div>
								<div style="width: 50%; text-align:right;">
								<a href="#!" class="small text-right">Lost password?</a>
								</div>
							</div>
						</div>
                      </div>
        </section>
    </main>
        
		</div>
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="resources/js/ie10-viewport-bug-workaround.js"></script>
  

</body></html>