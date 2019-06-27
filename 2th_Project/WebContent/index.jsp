
<%@page import="af.Test01"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Safety-First System</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Carlos Alvarez - Alvarez.is">

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />

<link href="css/main.css" rel="stylesheet">
<link href="css/font-style.css" rel="stylesheet">
<link href="css/flexslider.css" rel="stylesheet">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/lineandbars.js"></script>

<script type="text/javascript" src="js/dash-charts.js"></script>
<script type="text/javascript" src="js/gauge.js"></script>

<!-- NOTY JAVASCRIPT -->
<script type="text/javascript" src="js/noty/jquery.noty.js"></script>
<script type="text/javascript" src="js/noty/layouts/top.js"></script>
<script type="text/javascript" src="js/noty/layouts/topLeft.js"></script>
<script type="text/javascript" src="js/noty/layouts/topRight.js"></script>
<script type="text/javascript" src="js/noty/layouts/topCenter.js"></script>

<!-- You can add more layouts if you want -->
<script type="text/javascript" src="js/noty/themes/default.js"></script>
<!-- <script type="text/javascript" src="assets/js/dash-noty.js"></script> This is a Noty bubble when you init the theme-->
<script type="text/javascript"
	src="http://code.highcharts.com/highcharts.js"></script>
<script src="js/jquery.flexslider.js" type="text/javascript"></script>

<script type="text/javascript" src="js/admin.js"></script>

<style type="text/css">
body {
	padding-top: 60px;
}

table {
	background-color: #4f4f4f;
	border-spacing: 0px 0px;
}

td {
	width: 30px;
	height: 30px;
	text-align: center;
	font-size: 15px;
	border: 2px solid #cacaca;
}

td : {
	border: #ffffff;
}
</style>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


<!-- Google Fonts call. Font Used Open Sans & Raleway -->
<link href="http://fonts.googleapis.com/css?family=Raleway:400,300"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet" type="text/css">

<script type="text/javascript">
	$(document).ready(function() {

		$("#btn-blog-next").click(function() {
			$('#blogCarousel').carousel('next')
		});
		$("#btn-blog-prev").click(function() {
			$('#blogCarousel').carousel('prev')
		});

		$("#btn-client-next").click(function() {
			$('#clientCarousel').carousel('next')
		});
		$("#btn-client-prev").click(function() {
			$('#clientCarousel').carousel('prev')
		});

	});

	$(window).load(function() {

		$('.flexslider').flexslider({
			animation : "slide",
			slideshow : true,
			start : function(slider) {
				$('body').removeClass('loading');
			}
		});
	});
</script>


<script language="javascript" type="text/javascript">
	var today = new Date(); // 오늘 날짜//지신의 컴퓨터를 기준으로
	//today 에 Date객체를 넣어줌 //ex)5일  
	function prevCalendar() {

		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); // 현재 달 
	}

	function nextCalendar() {

		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();
	}

	function buildCalendar() {// 현재 달fur
		var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); // 이번 달의 첫째 날
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); // 이번 달의 마지막 날
		var tblCalendar = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
		var tblCalendarYM = document.getElementById("calendarYM"); // yyyy년 m월 출력할 곳
		tblCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월"; // yyyy년 m월 출력
		// 기존 테이블에 뿌려진 줄, 칸 삭제

		while (tblCalendar.rows.length > 2) {
			tblCalendar.deleteRow(tblCalendar.rows.length - 1);
		}
		var row = null;
		row = tblCalendar.insertRow();
		var cnt = 0;
		// 1일이 시작되는 칸을 맞추어 줌
		for (i = 0; i < nMonth.getDay(); i++) {
			cell = row.insertCell();
			cnt = cnt + 1;
		}

		for (i = 1; i <= lastDate.getDate(); i++) {
			cell = row.insertCell();
			cell.innerHTML = i;
			cnt = cnt + 1;
			if (cnt % 7 == 0)// 1주일이 7일 이므로
				row = calendar.insertRow();// 줄 추가
		}

	}
</script>

<link href="css/watch.css" rel="stylesheet" />
</head>
<body>

	<!-- NAVIGATION MENU -->

	<div class="navbar-nav navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><span><img
						src="images/logo30.png" alt=""></span> SF-SYS</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp"><i
							class="icon-home icon-white"></i> Home</a></li>
					<li><a href="tables.jsp"><i class="icon-th icon-white"></i>
							Tables</a></li>
					<li><a href="user.jsp"><i class="icon-user icon-white"></i>
							User</a></li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div class="container">

		<!-- FIRST ROW OF BLOCKS -->
		<div class="row">

			<!-- USER PROFILE BLOCK -->
			<div class="col-sm-3 col-lg-3">
				<div class="dash-unit">
					<dtitle>Calendar</dtitle>
					<hr style="margin-bottom: 13px">
					<div>
						<table id="calendar" boarder="3" align="center">
							<tr>
								<td><label onclick="prevCalendar()"> < </label></td>
								<td colspan="5" align="center" id="calendarYM">yyyy년 m월</td>
								<td><label onclick="nextCalendar()"> > </label></td>
							</tr>
							<tr>
								<td align="center">일</td>
								<td align="center">월</td>
								<td align="center">화</td>
								<td align="center">수</td>
								<td align="center">목</td>
								<td align="center">금</td>
								<td align="center">토</td>
							</tr>

						</table>
						<script language="javascript" type="text/javascript">
							buildCalendar();
						</script>
					</div>
				</div>
			</div>

			<!-- DONUT CHART BLOCK -->
			<div class="col-sm-3 col-lg-3">
				<div class="dash-unit">
					<dtitle>Site Bandwidth</dtitle>
					<hr>
					<div id="load"></div>
					<h2>45%</h2>
				</div>
			</div>

			<!-- DONUT CHART BLOCK -->
			<div class="col-sm-3 col-lg-3">
				<div class="dash-unit">
					<dtitle>Disk Space</dtitle>
					<hr>
					<div id="space"></div>
					<h2>65%</h2>
				</div>
			</div>

			<div class="col-sm-3 col-lg-3">

				<!-- LOCAL TIME BLOCK -->
				<div class="half-unit">
					<dtitle>Local Time</dtitle>
					<hr style="margin-bottom: 0px">
					<div class="clockcenter">
						<digiclock> <!-- id='divClock' class="clock" -->
						<div id="clock" class="dark">
							<div class="display">
								<div class="weekdays"></div>
								<div class="ampm"></div>
								<div class="alarm"></div>
								<div class="digits"></div>
							</div>
						</div>
						</digiclock>

						<script
							src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
						<script
							src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.0.0/moment.min.js"></script>
						<script src="jquery.digitalclock.js"></script>
					</div>
				</div>

				<!-- SERVER UPTIME -->
				<div class="half-unit">
					<dtitle>Current Weather</dtitle>
					<hr>
					<div class="cont">
						<p>
							<img src="images/up.png" alt="">
							<bold>Up</bold>
							| 356ms.
						</p>
					</div>
				</div>

			</div>
		</div>
		<!-- /row -->


		<!-- SECOND ROW OF BLOCKS -->
		<div class="row" style="padding-right: 15px; padding-left: 15px;">

			<!-- MAIL BLOCK -->
			<div class="dash-unit" style="height: 500px;">
				<dtitle>Crime Map</dtitle>
				<hr style="margin-bottom: 0px">
				<iframe src="map_ver5.html" width="100%" height="470px"> </iframe>

			</div>
			<!-- /dash-unit -->

			<!-- /span3 -->


		</div>
		<!-- /row -->


		<!-- THIRD ROW OF BLOCKS -->
		<div class="row">
			<div class="col-sm-3 col-lg-3">

				<!-- LIVE VISITORS BLOCK -->
				<div class="half-unit">
					<dtitle>Live Visitors</dtitle>
					<hr>
					<div class="cont">
						<p>
							<bold>388</bold>
						</p>
						<p>
							<img src="images/up-small.png" alt=""> 412 Max. | <img
								src="images/down-small.png" alt=""> 89 Min.
						</p>
					</div>
				</div>
				<!-- TOTAL SUBSCRIBERS BLOCK -->
				<div class="half-unit">
					<dtitle>Total Subscribers</dtitle>
					<hr>
					<div class="cont">
						<p>
							<bold>14.744</bold>
						</p>
						<p>98 Subscribed Today</p>
					</div>
				</div>
			</div>



			<!-- LATEST NEWS BLOCK -->
			<div class="col-sm-3 col-lg-3" style="width: 75%">
				<div class="dash-unit">
					<dtitle>Latest News</dtitle>
					<hr>
					<div class="info-user">
						<span aria-hidden="true" class="li_news fs2"></span>
					</div>
					<br>
					<div class="text">
						<p style="height: 500px;">

							<% Test01 t = new Test01();
							 	t.crw(request, response);
							 	
							 %>
							<%= session.getAttribute("list_len")%><br><br>
							<%=session.getAttribute("list_len1")%><br><br>
							<%=session.getAttribute("list_len2")%><br><br>
							<%=session.getAttribute("list_len3")%><br><br>

						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /row -->





	</div>
	<!-- /container -->
	<!-- <div id="footerwrap">
		<footer class="clearfix"></footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<p>
						<img src="images/logo.png" alt="">
					</p>
					<p>Blocks Dashboard Theme - Crafted With Love - Copyright 2013</p>
				</div>

			</div>
			/row
		</div>
		/container
	</div> -->
	<!-- /footerwrap -->

</body>
</html>