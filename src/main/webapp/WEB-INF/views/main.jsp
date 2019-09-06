<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0048)http://bootstrapk.com/examples/starter-template/ -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

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
input[type="text"] {
	width: 30%;
	height: 100%;
	font-size: 1em;
	padding-left: 5px;
	display: inline;
}

html, body {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 300;
	letter-spacing: 0.3px;
}

h1 {
	font-size: 35px;
	font-weight: 600;
}

h2 {
	font-size: 20px;
	font-weight: 600;
}

p {
	font-size: 15px;
	padding-bottom: 10px;
}

button {
	letter-spacing: 0.7px;
	background-color: #2aabd2;
	color: white;
}

.loginApi {
	background-color: #fff;
	border: 1px solid #d6d6d6;
	color: #4a4a4a;
	border-radius: 4px;
	height: 44px;
	padding: 6px 12px;
	vertical-align: center;
}
</style>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="878418668504-o095oma848mo979d6bm2md3eoopobrtn.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="/pp/resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	var address = "";
	function search() {
		address = document.getElementById("address").value;
		location.href = "map?address=" + address;
	}

	function signupForm() {
		$('#login').css('display', 'none');
		$('#findPassword').css('display', 'none');
		$('#signup').css('display', '');
	}

	function findPassword() {
		$('#signup').css('display', 'none');
		$('#login').css('display', 'none');
		$('#findPassword').css('display', '');
	}

	function openModal() {
		$('#signup').css('display', 'none');
		$('#findPassword').css('display', 'none');
		$('#login').css('display', '');
	}

	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function() {
			console.log('user signed out')
		})
		auth2.disconnect();
		$.ajax({
			url : "logout",
			data : {
				userid : "userid"
			},
			success : function() {
				alert("로그아웃 완료")
			}
		})
	}
	function onSignIn(googleUser) {
		// Useful data for your client-side scripts:
		var profile = googleUser.getBasicProfile();
		console.log("ID: " + profile.getId()); // Don't send this directly to your server!
		console.log('Full Name: ' + profile.getName());
		console.log('Given Name: ' + profile.getGivenName());
		console.log('Family Name: ' + profile.getFamilyName());
		console.log("Image URL: " + profile.getImageUrl());
		console.log("Email: " + profile.getEmail());
		var aa = document.getElementById("text").value;
		aa = profile.getId();
		// The ID token you need to pass to your backend:
		var id_token = googleUser.getAuthResponse().id_token;
		console.log("ID Token: " + id_token);
	}
</script>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/pp/" style="font-weight: 600;">Hubstel</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/pp/">Home</a></li>
					<li><a
						href="http://bootstrapk.com/examples/starter-template/#contact">Contact</a></li>
					<li style="margin-left: 830px;" id="testBtn"><a href="#"
						onclick="openModal()">Login</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">

		<div class="starter-template" style="padding-top: 20%;">

			<!-- 모달 로그인 Modal-->
			<div class="modal fade" id="testModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document" style="width: 450px;">
					<div class="modal-content">
						<div class="modal-header"
							style="display: inline-flex; width: 100%;">
							<div style="width: 98%; margin-left: 10px">
								<h5 class="modal-title" id="exampleModalLabel">Hubstel</h5>
							</div>
							<span><button class="close" type="button"
									data-dismiss="modal" aria-label="Close">X</button> </span>
						</div>
						<div class="modal-body">
							<section class="min-vh-100 d-flex align-items-center">
								<div
									class="bg-img-holder section-image top-0 left-0 col-lg-6 col-xl-7 z-10 vh-100 d-none d-lg-block"></div>
								<div class="row align-items-center" id="login">

									<div class=" text-sm-center">
										<h2>Login</h2>
										<p class="text-gray mb-0">Log in for exclusive member
											deals</p>
									</div>
									<div class="btn-wrapper my-4"
										style="display: inline-flex; width: 300px;">
										<div style="width: 100%; margin: auto;">
											<span class=" loginApi" data-onsuccess="onSignIn"
												data-theme="dark" style="margin-right: 2.5px;"><a
												href="#" style="width: 30%; height: 33px;"
												class="btn btn-sm  mb-1 mb-sm-0"> <img
													src="https://static.tacdn.com/img2/google/G_color_40x40.png"
													style="margin-bottom: 2px; width: 15px; text-align: left; margin-right: 10px;"
													alt=""> Googlegg
											</a> </span> <span class=" loginApi" style="margin-left: 2.5px;">
												<a href="#"
												style="width: 30%; height: 33px; margin-right: 12px;"
												class="btn btn-sm  mb-1 mb-sm-0"> <img
													src="https://static.tacdn.com/img2/facebook/icn-FB2.png"
													style="margin-bottom: 2px; width: 15px; text-align: left; margin-right: 5px;"
													alt=""> Facebook
											</a>
											</span>
										</div>
										<span class="clearfix"></span>
									</div>

									<div
										style="width: 300px; margin: auto; vertical-align: center; padding-top: 20px; padding-bottom: 10px;">
										<span> <input type="email" style="margin-bottom: 10px;"
											class="form-control" id="input-email"
											placeholder="Enter email" required> <input
											class="form-control" placeholder="Password" type="password"
											required>
										</span>

										<div
											style="width: 300px; margin: auto; vertical-align: center; padding-top: 10px; padding-bottom: 10px;">
											<div>
												<button type="submit" class="btn btn-block">Login</button>
											</div>
										</div>

										<div class="b" style="display: inline-flex; width: 300px;">
											<div style="width: 60%; text-align: left;">
												<small>Not registered?</small> <a
													href="javascript:signupForm()"
													class="small font-weight-bold">Create account</a>
											</div>
											<div style="width: 40%; text-align: right;">
												<a href="javascript:findPassword();"
													class="small text-right">Lost password?</a>
											</div>
										</div>
									</div>
								</div>

								<!--모달 회원가입 -->
								<div class="row align-items-center" id="signup"
									style="display: none;">

									<div class=" text-sm-center">
										<h2>Sign up</h2>
										<p class="text-gray mb-0">Create your account to continue.</p>
									</div>

									<div
										style="width: 300px; margin: auto; padding-top: 20px; padding-bottom: 10px;">
										<span> <input type="email" style="margin-bottom: 10px;"
											class="form-control" id="input-email"
											placeholder="Enter email" required> <input
											class="form-control" placeholder="Password" type="password"
											required>
										</span>

										<div
											style="width: 300px; margin: auto; vertical-align: center; padding-top: 10px; padding-bottom: 10px;">
											<div>
												<button type="submit" class="btn btn-block">Sign up</button>
											</div>

										</div>
										<div class="b" style="display: inline-flex; width: 300px;">
											<div style="width: 60%; text-align: left;">
												<small>Already have an account?</small> <a
													href="javascript:openModal()"
													class="small font-weight-bold">Login</a>
											</div>
										</div>
									</div>
								</div>


								<!--모달 비밀번호 찾기 -->
								<div class="row align-items-center" id="findPassword"
									style="display: none;">

									<div class=" text-sm-center">
										<h2>Forgot your password?</h2>
										<p class="text-gray mb-0">
											No problem. Just enter your email address below. <br>
											we’ll send you a link to reset it.
										</p>
									</div>


									<div
										style="width: 300px; margin: auto; vertical-align: center; padding-top: 20px;">
										<span> <input type="email" style="margin-bottom: 10px;"
											class="form-control" id="input-email"
											placeholder="Enter email" required>
										</span>

										<div
											style="width: 300px; margin: auto; vertical-align: center; padding-bottom: 10px;">
											<div>
												<button type="submit" class="btn btn-block">Send</button>
											</div>

										</div>
										<div class="b" style="display: inline-flex; width: 300px;">
											<div style="width: 60%; text-align: left;">
												<small>Already have an account?</small> <a
													href="javascript:openModal()"
													class="small font-weight-bold">Login</a>
											</div>
										</div>

									</div>
								</div>
							</section>
							</main>

						</div>
						<div class="modal-footer" style="margin-top: 20px;">
							<a class="btn" id="modalY" href="#">Continue</a>
							<button class="btn" type="button" data-dismiss="modal">Cancel</button>
						</div>
					</div>
				</div>
			</div>

			<h1>Welcome to Hubstel</h1>
			<p>Find your ideal hotel and compare prices from different
				websites.</p>
			<span> <input type="text" placeholder="where to?"
				class="form-control" id="address">

				<button type="button" class="btn animate-up-2 btn-pill"
					onclick="search()">Search</button>
			</span>
		</div>

	</div>
	<!-- /.container -->



	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="resources/js/ie10-viewport-bug-workaround.js"></script>

	<script>
		$('#testBtn').click(function(e) {
			e.preventDefault();
			$('#testModal').modal("show");
		});
	</script>

</body>
</html>