
<%@page import="af.Weather"%>
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
<!-- <link href="css/flexslider.css" rel="stylesheet">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
 -->
<!-- <script type="text/javascript" src="js/lineandbars.js"></script>

<script type="text/javascript" src="js/dash-charts.js"></script>
<script type="text/javascript" src="js/gauge.js"></script> -->

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
	background-color: #3d3d3d;
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
		tblCalendarYM.innerHTML = today.getFullYear() + ". "
				+ (today.getMonth() + 1) + ""; // yyyy년 m월 출력
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

<!-- 구글 차트 작년 범죄율 -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ '', 20208 ],
				[ '', 95883 - 20208 ],

		]);

		var options = {
			legend : 'none',
			pieSliceText : 'none',
			pieHole : 0.68,
			chartArea : {
				'width' : '100%',
				'height' : '80%'
			},
			backgroundColor : "transparent",
			slices : {
				0 : {
					color : '#ff4f40'
				},
				1 : {
					color : '#3D3D3D'
				}
			},
			fontSize : 15,
		//pieStartAngle : 100,

		};

		var chart = new google.visualization.PieChart(document
				.getElementById('B_rate'));
		chart.draw(data, options);

	}
</script>

<!-- 구글차트 올해 범죄율 -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ '', 20208 ],
				[ '', 95883 - 20208 ],

		]);

		var options = {
			legend : 'none',
			pieSliceText : 'none',
			pieHole : 0.68,
			chartArea : {
				'width' : '100%',
				'height' : '80%'
			},
			backgroundColor : "transparent",
			slices : {
				0 : {
					color : '#ff4f40'
				},
				1 : {
					color : '#3D3D3D'
				}
			},
			fontSize : 15,
		//pieStartAngle : 100,

		};

		var chart = new google.visualization.PieChart(document
				.getElementById('C_rate'));
		chart.draw(data, options);

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
				<a class="navbar-brand" href="index.jsp"
					style="padding: 0px; padding-right: 20px; padding-top: 5px;"><span><img
						src="images/img2.png" width="75px" alt="img error"></span></a>
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
					<div style="width: 90%; margin: 0px auto;">
						<table id="calendar" boarder="3" align="center">
							<tr>
								<td><label onclick="prevCalendar()"> < </label></td>
								<td colspan="5" align="center" id="calendarYM">yyyy. m</td>
								<td><label onclick="nextCalendar()"> > </label></td>
							</tr>
							<tr>
								<td align="center" style="color: red;">Su</td>
								<td align="center">Mo</td>
								<td align="center">Tu</td>
								<td align="center">We</td>
								<td align="center">Th</td>
								<td align="center">Fr</td>
								<td align="center" style="color: blue;">Sa</td>
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
					<dtitle>2018 Crime Rate</dtitle>
					<hr>
					<div id="B_rate"></div>
					<h2>21.1%</h2>
				</div>
			</div>

			<!-- DONUT CHART BLOCK -->
			<div class="col-sm-3 col-lg-3">
				<div class="dash-unit">
					<dtitle>2019 Crime Rate</dtitle>
					<hr>
					<div id="C_rate"></div>
					<h2>11%</h2>

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
					<hr style="margin-bottom: 10px;">
					<div class="cont" align="center" style="margin-top: 15px;">
						<%
							Weather weather = new Weather();
							weather.newyork(request, response);
						%>
						<div >
							<%=session.getAttribute("weat_img")%>
						</div>
						<div >
							
							<%=session.getAttribute("weat_text")%><br> 
							Temp : <%=session.getAttribute("tm")%> °C<br> 
							Humidity : <%=session.getAttribute("hm")%> <br>
							Wind : <%=session.getAttribute("ws")%> <br>
						</div>
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
							<bold>11</bold>
						</p>
						<p>
							<img src="images/up-small.png" alt=""> 11 Max. | <img
								src="images/down-small.png" alt=""> 3 Min.
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
						<!-- bbc new crawling  -->
						<%-- <p>

							<%
								Test01 t = new Test01();
								t.crw(request, response);
							%>
							1.
							<%=session.getAttribute("list_len")%><br> <br> 2.
							<%=session.getAttribute("list_len1")%><br> <br> 3.
							<%=session.getAttribute("list_len2")%><br> <br> 4.
							<%=session.getAttribute("list_len3")%><br> <br>

						</p> --%>
						<p>
							<a style="color: white;"
								href="https://www.bbc.com/news/uk-wales-48797659">1.
								Anglesey crossbow death: Man, 38, charged with murder</a>
						</p>
						<p>
							<a style="color: white;"
								href="https://www.bbc.com/news/uk-england-northamptonshire-48802599">2.
								Little Harrowden death: Fifth person charged with murder</a>
						</p>
						<p>
							<a style="color: white;"
								href="https://www.bbc.com/news/uk-england-hereford-worcester-48790953">3.
								Droitwich murder: Police search for dog walker</a>
						</p>
						<p>
							<a style="color: white;"
								href="https://www.bbc.co.uk/news/uk-england-london-48787365">4.
								Abdi Ali murder: Man jailed for 'body in attic' murder</a>
						</p>



					</div>
				</div>
			</div>
		</div>
		<!-- /row -->





	</div>


	<div style="visibility: hidden;" align="center" id="footerwrap">

		<div style="float: left;">
			<!-- 맨하튼 -->
			<p>
				<%
					weather.manhattan(request, response);
				%>
				<%=session.getAttribute("weat_img")%>
			</p>

			<p style="margin-left: 40px;">
				도시 :<%=session.getAttribute("city")%><br>
				<%=session.getAttribute("weat_text")%><br> 온도 :
				<%=session.getAttribute("tm")%><br> 습도 :
				<%=session.getAttribute("hm")%><br> 풍속 :
				<%=session.getAttribute("ws")%><br>
			</p>
		</div>

		<div style="float: left;">
			<!-- 브룩클린 -->
			<p>
				<%
					weather.Brooklyn(request, response);
				%>
				<%=session.getAttribute("weat_img")%>
			</p>

			<p style="margin-left: 40px;">
				도시 :<%=session.getAttribute("city")%><br>
				<%=session.getAttribute("weat_text")%><br> 온도 :
				<%=session.getAttribute("tm")%><br> 습도 :
				<%=session.getAttribute("hm")%><br> 풍속 :
				<%=session.getAttribute("ws")%><br>
			</p>
		</div>

		<div style="float: left;">
			<!-- 퀸스 -->
			<p>
				<%
					weather.Queens(request, response);
				%>
				<%=session.getAttribute("weat_img")%>
			</p>

			<p style="margin-left: 40px;">
				도시 :<%=session.getAttribute("city")%><br>
				<%=session.getAttribute("weat_text")%><br> 온도 :
				<%=session.getAttribute("tm")%><br> 습도 :
				<%=session.getAttribute("hm")%><br> 풍속 :
				<%=session.getAttribute("ws")%><br>
			</p>
		</div>

		<div style="float: left;">
			<!-- 브롱스 -->
			<p>
				<%
					weather.Bronx(request, response);
				%>
				<%=session.getAttribute("weat_img")%>
			</p>

			<p style="margin-left: 40px;">
				도시 :<%=session.getAttribute("city")%><br>
				<%=session.getAttribute("weat_text")%><br> 온도 :
				<%=session.getAttribute("tm")%><br> 습도 :
				<%=session.getAttribute("hm")%><br> 풍속 :
				<%=session.getAttribute("ws")%><br>
			</p>
		</div>

		<div style="float: left;">
			<!-- 스태튼 -->
			<p>
				<%
					weather.Staten(request, response);
				%>
				<%=session.getAttribute("weat_img")%>
			</p>

			<p style="margin-left: 40px;">
				도시 :<%=session.getAttribute("city")%><br>
				<%=session.getAttribute("weat_text")%><br> 온도 :
				<%=session.getAttribute("tm")%><br> 습도 :
				<%=session.getAttribute("hm")%><br> 풍속 :
				<%=session.getAttribute("ws")%><br>
			</p>
		</div>
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