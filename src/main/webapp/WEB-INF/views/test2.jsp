<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 500px;
	width: 500px;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
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
	</script>
	<script>
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
		//document.getElementById("yaddress").value
		});
	}
	</script>
	<script>
	$(function() {
		calladd();
	})
</script>

</head>
<body>


	<input type="text" id="yaddress">

	<input type="button" onclick="calladd()" value="검색">

	<div id="map"></div>
</body>
</html>
