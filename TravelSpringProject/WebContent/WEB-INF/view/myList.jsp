<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>장바구니</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">

<link rel="stylesheet" href="assets/vendors/animate/animate.css">

<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">

</head>

<body data-spy="scroll" data-target=".navbar" data-offset="40" id="up">
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
				<li class="nav-item"><a class="nav-link" href="#mylist"><i
						class="ti-heart text-danger"></i></a></li>
				<li class="nav-item"><a class="nav-link" href="makeList.sp">Make
						plans</a></li>
				<!-- 계획 만들기 -->
				<li class="nav-item"><a class="nav-link" href="spotList.sp">추천
						더보기</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="main.sp"
					class="btn btn-primary ml-xl-4">Home</a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Header -->
	<header class="header header-mini">
		<div class="header-title">
			<i class="ti-heart"></i>
		</div>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">wannago</li>
				<li class="breadcrumb-item"><a href="mainAction.sp">My page</a></li>
			</ol>
		</nav>
	</header>
	<!-- End Of Page Header -->

<div id="1"
		class="container-fluid bg-dark text-light py-5 text-center wow fadeIn">
		<div class="row justify-content-center">
			<div class="col-sm-7 col-md-4 mb-5">
				<ul class="nav nav-pills nav-justified mb-3" id="pills-tab"
					role="tablist">
					<li>Make your plans ⇨ </li>
					<li class="nav-item"><a href="makeList.sp"
					class="btn btn-primary ml-xl-4">here</a></li>
				</ul>
			</div>
		</div>
	<div class="tab-content" id="pills-tabContent">
		<div class="tab-pane fade show active" role="tabpanel"
			aria-labelledby="pills-home-tab">
			<div class="row">
				<c:forEach items="${save}" var="sa">
					<div class="col-md-4">
						<div class="card bg-transparent border my-3 my-md-0">
							<img src="${sa.picture}"
								class="rounded-0 card-img-top mg-responsive">
							<div class="card-body">
								<p class="text-center mb-4">
									${sa.locationName} ${sa.prefecture}<br> <br>
									<input type="button"
										class="btn btn-primary circle" value="delete"
										onclick="javascript:window.location='delete.sp?locationNum=${sa.locationNum}'" />
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

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