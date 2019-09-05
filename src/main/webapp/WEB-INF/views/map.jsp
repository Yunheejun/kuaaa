<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0048)http://bootstrapk.com/examples/starter-template/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
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

p {
	font-size: 17px;
	padding-bottom: 10px;
}

button {
	color:white;
	background-color:#2aabd2;
	letter-spacing: 0.7px;
}

#map {
	height: 500px;
	width: 1200px;
}
</style>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvhC1lXElYjWlGa3mUicvJgDKX-C8-u64&callback=initMap" async defer></script>
<script src="/pp/resources/js/jquery-3.4.1.js"></script>
<script>
	var key = "AIzaSyCvhC1lXElYjWlGa3mUicvJgDKX-C8-u64"
	//지도 위도경도 배열
	var params = {};
	var formatted;
	var locc;
	
	function calladd() {
		if($("#yaddress").val()=="" || $("#yaddress").val == null){
		window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
		var address = params.address;
		$("#yaddress").val(decodeURI(address));
		}
		var address = document.getElementById("yaddress").value;
		if (address == "")
			address = "대한민국";

		$.ajax({
			//json 데이터보기
			//https://maps.googleapis.com/maps/api/geocode/json?address=%EB%B6%80%EC%82%B0&key=AIzaSyCvhC1lXElYjWlGa3mUicvJgDKX-C8-u64 
			url : "https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyCvhC1lXElYjWlGa3mUicvJgDKX-C8-u64&address="
					+ encodeURIComponent(address)
					,
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			dataType : 'json',
			success : function(loca) {
				//위도
				var lat = loca.results[0].geometry.location.lat;
				//경도
				var lng = loca.results[0].geometry.location.lng;
				locc = {
					"lat" : lat,
					"lng" : lng
				};

				formatted = loca.results[0].formatted_address;

				initMap();
			}
		})
	}
	
	var map;
	function initMap() {
		var myLatLng = locc;
		map = new google.maps.Map(document.getElementById('map'), {
			center : locc,
			zoom : 15,
			center : myLatLng
		});
	
		//해당 핑의 타이틀 마우스 올리면 뜨는 태그 (구글 제공)

		var marker = new google.maps.Marker({
			position : myLatLng,
			map : map,
			title : '해당 주소는 ' + formatted
		});
	}
	
	$(function() {
		calladd();
	})
	
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

      <div class="starter-template">
				<div>
					<input type="text" placeholder="where to?" class="form-control" id="yaddress">
					<button type="button" class="btn animate-up-2 btn-pill" onclick="calladd()">Search</button>
				</div>	
				
				<div id="map" style="text-align:center; width:100%; margin-top: 20px;">
				
				</div>
				
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