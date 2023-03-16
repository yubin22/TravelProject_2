<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:useBean id="login" type="model.LoginDTO" scope="session" />
<head>
<meta charset="UTF-8">
<!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>메인 페이지</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">

<link rel="stylesheet" href="assets/vendors/animate/animate.css">
<link rel="stylesheet" href="https://kit.fontawesome.com/9ba8b02e73.css"
	crossorigin="anonymous">
<link rel='stylesheet' href='style.css' type='text/css' />
<!--chart -->

<script src="https://kit.fontawesome.com/9ba8b02e73.js"
	crossorigin="anonymous"></script>


<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">

<script type="text/javascript">
	// 로그아웃 담당으로 이동
	function logout() {
		location.href = "logoutAction.sp";
	}
</script>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

	<!-- Navbar -->
	<nav
		class="custom-navbar navbar navbar-expand-lg navbar-dark fixed-top"
		data-spy="affix" data-offset-top="10">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#home">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#recommendation">Recommendation</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#checkList">CheckList</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#currency">Currency</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#weather">Weather</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#chart">Traveler</a>
				</li>
			</ul>
			<a class="navbar-brand m-auto" href="#"><span class="brand-txt">그곳이
					알고싶다</span> </a>
			<ul class="navbar-nav">
				<li><a href="mainAction.sp">${login.id}님</a></li>
				<li class="nav-item"><a href="myList.sp?id=${login.id}"
					class="btn btn-primary ml-xl-4"><i class="ti-heart"></i></a></li>
				<li class="nav-item"><a href="spotList.sp"
					class="btn btn-primary ml-xl-4">Schedule list</a></li>
				<li class="nav-item"><a href="logoutAction.sp"
					class="btn btn-primary ml-xl-4">Logout</a></li>
			</ul>
		</div>
	</nav>
	<!-- header -->
	<header id="home" class="header">
		<div class="overlay text-white text-center">
			<h2 class="display-2 font-weight-bold my-3">그곳이 알고싶다</h2>
		</div>
	</header>

	<!-- RECOMMENDATION Section  -->
	<div id="recommendation"
		class="container-fluid bg-dark text-light py-5 text-center wow fadeIn">
		<h2 class="section-title py-5">추천 관광지</h2>
		<div class="row justify-content-center">
			<div class="col-sm-7 col-md-4 mb-5">
				<ul class="nav nav-pills nav-justified mb-3" id="pills-tab"
					role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="pills-home-tab" data-toggle="pill" href="#example_1"
						role="tab" aria-controls="pills-home" aria-selected="true">Season</a></li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#example_2"
						role="tab" aria-controls="pills-profile" aria-selected="false">Theme</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="example_1" role="tabpanel"
				aria-labelledby="pills-home-tab">
				<div class="row">
					<div class="col-md-4">
						<div class="card bg-transparent border my-3 my-md-0">
							<img src="assets/imgs/season-1.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">가와치후지엔</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card bg-transparent border my-3 my-md-0">
							<img src="assets/imgs/season-2.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">히메지성</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card bg-transparent border my-3 my-md-0">
							<img src="assets/imgs/season-3.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">오마가리 불꽃 축제</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card bg-transparent border my-3 my-md-0">
							<img src="assets/imgs/season-4.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">가이엔 은행나무 가로수</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card bg-transparent border my-3 my-md-0">
							<img src="assets/imgs/season-5.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">기요미즈데라</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card bg-transparent border my-3 my-md-0">
							<img src="assets/imgs/season-6.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">니세코 스키장</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane fade" id="example_2" role="tabpanel"
				aria-labelledby="pills-profile-tab">
				<div class="row">
					<div class="col-md-4 my-3 my-md-0">
						<div class="card bg-transparent border">
							<img src="assets/imgs/theme-1.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">아오니 온천</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4 my-3 my-md-0">
						<div class="card bg-transparent border">
							<img src="assets/imgs/theme-2.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">네부타 마츠리</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4 my-3 my-md-0">
						<div class="card bg-transparent border">
							<img src="assets/imgs/theme-3.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">야쿠시마 원시림</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4 my-3 my-md-0">
						<div class="card bg-transparent border">
							<img src="assets/imgs/theme-4.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">도코나메</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4 my-3 my-md-0">
						<div class="card bg-transparent border">
							<img src="assets/imgs/theme-5.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">SL야마구치호</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-4 my-3 my-md-0">
						<div class="card bg-transparent border">
							<img src="assets/imgs/theme-6.JPG"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<h4 class="pt20 pb20"></h4>
								<p class="text-white">요코테 골목식당</p>
								<button class="btn btn-primary circle"
									onClick="location.href='myList.sp'">
									<i class="ti-heart"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<h1>
		<input class="btn btn-primary btn-lg" type="button"
			onClick="javascript:window.location='spotList.sp'" value="추천 더보기">
	</h1>


	<!-- checkList Section  -->
	<div id="checkList"
		class="container-fluid wow fadeIn bg-dark text-light has-height-lg middle-items">
		<h2 class="section-title my-5 text-center">CHECK LIST</h2>
		<div class="row mt-3 mb-5">
			<div class="col-md-4 my-3 my-md-0">
				<div class="testmonial-card">
					<h3 class="testmonial-title">항공</h3>
					<h6 class="testmonial-subtitle"></h6>
					<div class="testmonial-body">
						<p>-</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 my-3 my-md-0">
				<div class="testmonial-card">
					<h3 class="testmonial-title">비자</h3>
					<h6 class="testmonial-subtitle"></h6>
					<div class="testmonial-body">
						<p>90일 무비자</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 my-3 my-md-0">
				<div class="testmonial-card">
					<h3 class="testmonial-title">전압</h3>
					<h6 class="testmonial-subtitle"></h6>
					<div class="testmonial-body">
						<p>110V</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 my-3 my-md-0">
				<div class="testmonial-card">
					<h3 class="testmonial-title">언어</h3>
					<h6 class="testmonial-subtitle"></h6>
					<div class="testmonial-body">
						<p>일본어</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 my-3 my-md-0">
				<div class="testmonial-card">
					<h3 class="testmonial-title">시차</h3>
					<h6 class="testmonial-subtitle"></h6>
					<div class="testmonial-body">
						<p>한국과 동일</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 my-3 my-md-0">
				<div class="testmonial-card">
					<h3 class="testmonial-title">물가</h3>
					<h6 class="testmonial-subtitle"></h6>
					<div class="testmonial-body">
						<p>한국대비 비쌈</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--  Currency Section  -->
	<div id="currency" class="container-fluid wow fadeIn" data-wow-duration="1.5s">
		<div class="row">
			<div class="col-lg-6 has-img-bg"></div>
			<div class="col-lg-6">
				<div class="row justify-content-center">
					<div class="col-sm-8 py-5 my-5">
						<h2 class="mb-4">CURRENCY</h2>
						<div class="country_inner_box">
							<div class="country_info_box_title"></div>
							<div class="exchange_box">
								<div class="exchange_left" data-id="1">
									<b>일본</b><br> <span>JPY</span>
								</div>
								<input type="text" class="exchange_input" data-no="1" value=" 1" />
							</div>
							<div class="exchange_center">=</div>
							<div class="exchange_box">
								<div class="exchange_left" data-id="2">
									<b>대한민국</b><br> <span>KRW</span>
								</div>
								<input type="text" class="exchange_input" data-no="2"
									value=" 9.69" />
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Weather Section -->
	<div
		class="container-fluid has-bg-overlay text-center text-light has-height-lg middle-items"
		id="weather">
			<h2 class="section-title mb-5">Weather</h2>
			<a class="weatherwidget-io"
				href="https://forecast7.com/en/36d20138d25/japan/"
				data-label_1="JAPAN" data-label_2="WEATHER">JAPAN WEATHER</a>
			<script>
				!function(d, s, id) {
					var js, fjs = d.getElementsByTagName(s)[0];
					if (!d.getElementById(id)) {
						js = d.createElement(s);
						js.id = id;
						js.src = 'https://weatherwidget.io/js/widget.min.js';
						fjs.parentNode.insertBefore(js, fjs);
					}
				}(document, 'script', 'weatherwidget-io-js');
			</script>
	</div>




	<!-- Taraveler Section (chart) -->
	<div
		class="container-fluid has-bg-overlay text-center text-light has-height-lg middle-items"
		id="chart">
		<h2 class="section-title mb-5">TRAVELER</h2>
		<h5>2019/2022년 해외여행객 출국 현황 비교 (단위: 명)</h5>
		<canvas id="line-chart"></canvas>
		<script
			src="https://cdn.jsdelivr.net/npm/chart.js@4.0.1/dist/chart.umd.min.js"></script>
		<script>
			new Chart(document.getElementById("line-chart"), {
				type : 'line',
				data : {
					labels : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ],
					datasets : [
							{
								data : [ 779383, 715804, 585586, 566624,
										603394, 611867, 561675, 308730, 201252,
										197281, 205000, 248000 ],
								label : "2019년",
								borderColor : "#3cba9f",
								fill : false
							},
							{
								data : [ 1264, 913, 6694, 7699, 8805, 11168,
										20384, 28515, 32764, 122959, 315400,
										456100 ],
								label : "2022년",
								borderColor : "#e43202",
								fill : false
							} ]
				},
				options : {
					title : {
						display : true,
						text : '국민 일본관광객'
					}
				}
			});
		</script>
	</div>
	<!-- page footer  -->
	<div
		class="container-fluid bg-dark text-light has-height-md middle-items border-top text-center wow fadeIn">
		<div class="row">
			<div class="col-sm-4">
				<h3>EMAIL US</h3>
				<P class="text-muted">penguin3832@gmail.com</P>
				<P class="text-muted">mistty8917@gmail.com</P>
				<P class="text-muted">luckman0830@gmail.com</P>
				<P class="text-muted">zxc930405@gmail.com</P>
			</div>
			<div class="col-sm-4">
				<h3>CALL US</h3>
				<P class="text-muted">010-2467-0701</P>
			</div>
			<div class="col-sm-4">
				<h3>FIND US</h3>
				<P class="text-muted">서울시 금천구 벚꽃로 254</P>
			</div>
		</div>
	</div>
	<div class="bg-dark text-light text-center border-top wow fadeIn">
		<p class="mb-0 py-3 text-muted small">
			&copy; Copyright
			<script>
				document.write(new Date().getFullYear())
			</script>
			Made <i class="ti-heart text-danger"></i> By Team 떠나고 싶은 사람들
		</p>
	</div>
	<!-- end of page footer -->

	<!-- core  -->
	<script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
	<script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

	<!-- bootstrap affix -->
	<script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

	<!-- wow.js -->
	<script src="assets/vendors/wow/wow.js"></script>

	<!-- Travel js -->
	<script src="assets/js/travel.js"></script>
</body>
</html>


