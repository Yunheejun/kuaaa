<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap&subset=korean" rel="stylesheet">
<style>
html, body {
	width: 100px; /* 정렬하려는 요소의 넓이를 반드시 지정 */
	margin: 0 auto;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
}

input {
display: inline;
}


div {
	display: inline;
}

.hc {
	position: absolute;
	text-align:center;
	width: auto;
	left: 0;
	right: 0;
	margin-left: auto;
	margin-right: auto;
} /* 가로 중앙 정렬 */

.vc {
	height: 40px;
	top: 0;
	bottom: 0;
	margin-top: auto;
	margin-bottom: auto;
} /* 세로 중앙 정렬 */
</style>

<script src="/pp/resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	var address = "";
	function search() {
		address = document.getElementById("address").value;
		location.href = "test2?address=" + address;
	}
</script>
</head>
<body>
	<div class="hc vc" style= "bottom:100px; color:blue;">
	안녕하세요 Hubstel 입니다.
	</div>
	<span class="hc vc" style="color:dark-grey; font-weight: 400;">
		주소 찾기　<input type="text" id="address" style= "width:200px;">
		　<button type="button" onclick="search()">검색</button>
</span>



</body>
</html>
