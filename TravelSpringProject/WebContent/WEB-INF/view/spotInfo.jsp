<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Information</title>
<script type="text/javascript">
function checkId(){
   if(document.spotInfo.id.value == ""){
      alert("로그인 해주세요.");
      location.href = "loginForm.sp";
   }else{
      alert("저장한 목록 보시겠습니까?");
      document.spotInfo.submit();
   }
}
</script>

<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">

<link rel="stylesheet" href="assets/vendors/animate/animate.css">

<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">
</head>
<body>
	<!-- Page Header -->
	<header class="header header-mini">
		<div class="header-title">Information</div>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Login</li>
				<li class="breadcrumb-item"><a href="register.sp">Sign up</a></li>
			</ul>
		</nav>
	</header>
	<!-- End Of Page Header -->

<div id="1"
		class="container-fluid bg-dark text-light py-5 text-center wow fadeIn">
		<div class="row justify-content-center">
			<div class="col-sm-7 col-md-4 mb-5">
				<ul class="nav nav-pills nav-justified mb-3" id="pills-tab"
					role="tablist">
					<li>SAVE</li>
				</ul>
			</div>
		</div>
	<form name="spotInfo" action="saveAction.sp" method="get">
		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" role="tabpanel"
				aria-labelledby="pills-home-tab">
				<div class="row">
						<div class="col-md-4">
							<div class="card bg-transparent border my-3 my-md-0">
								<img src="${info.picture}"
									class="rounded-0 card-img-top mg-responsive">
								<div class="card-body">
									<p class="text-center mb-4">
										${info.locationName} ${info.prefecture} ${info.region}<br> <br>
										<input type="hidden" name="id" value='${login.id}' /> <input
											type="hidden" name="locationNum" value='${info.locationNum}' /> <input
											type="button" class="btn btn-primary circle" onclick="checkId()"
											value="저장">
										<!-- 다시 여행지 페이지로  -->
										<input type="button" class="btn btn-primary circle"
											onclick="javascript:window.location='spotList.sp'" value="다른 여행지보기">
									</p>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
	</form>
</div>

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
				<li class="nav-item"><a href="myList.sp"
					class="btn btn-primary ml-xl-4">My page</a></li>
				<li class="nav-item"><a href="main.sp"
					class="btn btn-primary ml-xl-4">Home</a></li>
			</ul>
		</div>
	</nav>

	<!-- page footer  -->
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