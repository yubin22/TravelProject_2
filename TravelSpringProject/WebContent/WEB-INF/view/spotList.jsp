<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dto" class="model.SaveLocationDTO" scope="request" />
<jsp:useBean id="list" type="java.util.Collection" scope="request" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">
<meta http-equiv="Content-Type">
<title>여행지 목록 페이지</title>
<link rel="stylesheet" href="assets/vendors/animate/animate.css">

<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">

<script type="text/javascript">
	function checkId() {
		if (document.spotInfo.id.value == "") {
			alert("로그인 해주세요.");
			location.href = "loginForm.sp";
		} else {
			alert("저장한 목록 보시겠습니까?");
			document.spotInfo.submit();
		}
	}
</script>
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
			<a class="navbar-brand m-auto" href="#"> <span class="brand-txt">그곳이
					알고싶다</span>
			</a>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="myList.sp"
					class="btn btn-primary ml-xl-4">My page</a></li>
				<li class="nav-item"><a href="main.sp"
					class="btn btn-primary ml-xl-4">Home</a></li>
			</ul>
		</div>
	</nav>

	<!-- Page Header -->
	<header class="header header-mini">
		<div class="header-title">recommendation</div>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">recommendation</li>
				<li class="breadcrumb-item"><a href="mainAction.sp">My page</a></li>
			</ul>
		</nav>
	</header>
	<!-- End Of Page Header -->
	<!-- RECOMMENDATION Section  -->
	<div id="1"
		class="container-fluid bg-dark text-light py-5 text-center wow fadeIn">
		<div class="row justify-content-center">
			<div class="col-sm-7 col-md-4 mb-5">
				<ul class="nav nav-pills nav-justified mb-3" id="pills-tab"
					role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="pills-home-tab" data-toggle="pill" href="#tokyo" role="tab"
						aria-controls="pills-home" aria-selected="true">도쿄</a></li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#osaka" role="tab"
						aria-controls="pills-profile" aria-selected="false">오사카</a></li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#hokkaido"
						role="tab" aria-controls="pills-profile" aria-selected="false">홋카이도</a></li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#okinawa"
						role="tab" aria-controls="pills-profile" aria-selected="false">오키나와</a></li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#nagoya"
						role="tab" aria-controls="pills-profile" aria-selected="false">나고야</a></li>
					<li class="nav-item"><a class="nav-link"
						id="pills-profile-tab" data-toggle="pill" href="#fukuoka"
						role="tab" aria-controls="pills-profile" aria-selected="false">후쿠오카</a></li>
				</ul>
			</div>
		</div>

		<form name="spotInfo" action="saveAction.sp" method="get">
			<div class="tab-content" id="pills-tabContent">
				<!-- 도쿄 -->
				<div class="tab-pane fade show active" id="tokyo" role="tabpanel"
					aria-labelledby="pills-home-tab">
					<div class="row">
						<c:forEach items="${list}" var="li">
							<div class="col-md-4">
								<div class="card bg-transparent border my-3 my-md-0">
									<img src="${li.picture}"
										class="rounded-0 card-img-top mg-responsive">
									<div class="card-body">
										<p class="text-center mb-4">
											${li.locationName} ${li.prefecture} ${li.region}<br> <br>
											<input type="hidden" name="locationNum"
												value='${li.locationNum}'> <input type="button"
												class="btn btn-primary circle" value="♡"
												onclick="javascript:window.location='spotInfo.sp?locationNum=${li.locationNum}'" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 오사카 -->
				<div class="tab-pane fade" id="osaka" role="tabpanel"
					aria-labelledby="pills-profile-tab">
					<div class="row">
						<c:forEach items="${list}" var="li">
							<div class="col-md-4 my-3 my-md-0">
								<div class="card bg-transparent border">
									<img src="${li.picture}"
										class="rounded-0 card-img-top mg-responsive">
									<div class="card-body">
										<p class="text-center mb-4">
											${li.locationName} ${li.prefecture} ${li.region}<br> <br>
											<input type="hidden" name="locationNum"
												value='${li.locationNum}'> <input type="button"
												class="btn btn-primary circle" value="♡"
												onclick="javascript:window.location='spotInfo.sp?locationNum=${li.locationNum}'" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 홋카이도 -->
				<div class="tab-pane fade" id="hokkaido" role="tabpanel"
					aria-labelledby="pills-profile-tab">
					<div class="row">
						<c:forEach items="${list}" var="li">
							<div class="col-md-4 my-3 my-md-0">
								<div class="card bg-transparent border">
									<img src="${li.picture}"
										class="rounded-0 card-img-top mg-responsive">
									<div class="card-body">
										<p class="text-center mb-4">
											${li.locationName} ${li.prefecture} ${li.region}<br> <br>
											<input type="hidden" name="locationNum"
												value='${li.locationNum}'> <input type="button"
												class="btn btn-primary circle" value="♡"
												onclick="javascript:window.location='spotInfo.sp?locationNum=${li.locationNum}'" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 오키나와 -->
				<div class="tab-pane fade" id="okinawa" role="tabpanel"
					aria-labelledby="pills-profile-tab">
					<div class="row">
						<c:forEach items="${list}" var="li">
							<div class="col-md-4 my-3 my-md-0">
								<div class="card bg-transparent border">
									<img src="${li.picture}"
										class="rounded-0 card-img-top mg-responsive">
									<div class="card-body">
										<p class="text-center mb-4">
											${li.locationName} ${li.prefecture} ${li.region}<br> <br>
											<input type="hidden" name="locationNum"
												value='${li.locationNum}'> <input type="button"
												class="btn btn-primary circle" value="♡"
												onclick="javascript:window.location='spotInfo.sp?locationNum=${li.locationNum}'" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 나고야 -->
				<div class="tab-pane fade" id="nagoya" role="tabpanel"
					aria-labelledby="pills-profile-tab">
					<div class="row">
						<c:forEach items="${list}" var="li">
							<div class="col-md-4 my-3 my-md-0">
								<div class="card bg-transparent border">
									<img src="${li.picture}"
										class="rounded-0 card-img-top mg-responsive">
									<div class="card-body">
										<p class="text-center mb-4">
											${li.locationName} ${li.prefecture} ${li.region}<br> <br>
											<input type="hidden" name="locationNum"
												value='${li.locationNum}'> <input type="button"
												class="btn btn-primary circle" value="♡"
												onclick="javascript:window.location='spotInfo.sp?locationNum=${li.locationNum}'" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 후쿠오카 -->
				<div class="tab-pane fade" id="fukuoka" role="tabpanel"
					aria-labelledby="pills-profile-tab">
					<div class="row">
						<c:forEach items="${list}" var="li">
							<div class="col-md-4 my-3 my-md-0">
								<div class="card bg-transparent border">
									<img src="${li.picture}"
										class="rounded-0 card-img-top mg-responsive">
									<div class="card-body">
										<p class="text-center mb-4">
											${li.locationName} ${li.prefecture} ${li.region}<br> <br>
											<input type="hidden" name="locationNum"
												value='${li.locationNum}'> <input type="button"
												class="btn btn-primary circle" value="♡"
												onclick="javascript:window.location='spotInfo.sp?locationNum=${li.locationNum}'" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</form>


		<!--  gallary Section  -->
		<div id="gallary"
			class="text-center bg-dark text-light has-height-md middle-items wow fadeIn"></div>
		<div class="gallary row">
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/tf-1.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>규카츠 모토무라</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/tf-2.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>이치란 라멘</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/tf-3.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>레드록</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/tf-4.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>니혼바시 텐동</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/of-1.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>아지노야</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/of-2.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>츠루동탄</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/of-3.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>아부라야</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/of-4.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>와나카</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hf-1.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>찬찬야키</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hf-2.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>이시카리나베</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hf-3.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>이카메시</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hf-4.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>가이센동</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/okf-1.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>유난기</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/okf-2.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>후지야마 드래곤 카레</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/okf-3.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>소바마치카도</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/okf-4.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>얏빠리 스테이크</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/nf-1.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>기타하치</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/nf-2.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>시암 가든</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/nf-3.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>마메야겐지</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/nf-4.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>세카이노야마찬</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hkf-1.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>치카에</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hkf-2.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>오오야마</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hkf-3.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>텐진점보</p>
				</a>
			</div>
			<div class="col-sm-6 col-lg-3 gallary-item wow fadeIn">
				<img src="assets/imgs/hkf-4.JPG" class="gallary-img"> <a
					href="#" class="gallary-overlay"> <i
					class="gallary-text-table-cell"></i>
					<p>시푸도</p>
				</a>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		//서버로 전송 할 데이터
		const form = {
			id : '${login.id}',
			locationNum : '${info.locationNum}'
		};

		//저장버튼 누르면
		$('.btn_cart').click(function() {
			$.ajax({
				url : 'saveAction.sp',
				type : 'GET',
				data : form,
				success : function(result) {
					cartAlert(result);
				}
			})
		});

		function cartAlert(result) {
			if (result == '0') {
				alert("추가를 하지 못하였습니다.");
			} else if (result == '1') {
				alert("추가되었습니다.");
			} else if (result == '2') {
				alert("이미 추가되어져 있습니다.");
			}
		};
	</script>

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

	<!-- google maps -->
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCtme10pzgKSPeJVJrG1O3tjR6lk98o4w8&callback=initMap"></script>

	<!-- Travel js -->
	<script src="assets/js/travel.js"></script>


</body>
</html>