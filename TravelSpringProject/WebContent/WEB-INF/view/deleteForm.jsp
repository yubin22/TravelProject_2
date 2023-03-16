<!-- ${login.id} --><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:useBean id="login" type="model.LoginDTO" scope="session" />
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>회원 탈퇴</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">

<link rel="stylesheet" href="assets/vendors/animate/animate.css">

<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">
<link rel="stylesheet" href="assets/css/form.css">
<script type="text/javascript">
	// 비밀번호 미입력시 경고창
	function checkValue() {
		if (document.deleteForm.pwd.value == "") {
			alert("비밀번호를 입력하지 않았습니다.");
			document.deleteForm.pwd.focus();
		}
	}
	//취소 시 main.sp로 이동
	function mypage() {
		location.href = "main.sp";
	}
</script>
</head>
<body>
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
				<li class="nav-item"><a class="nav-link" href="mainAction.sp">My
						page</a></li>
				<li class="nav-item"><a class="nav-link" href="update.sp">회원
						정보 수정</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="main.sp"
					class="btn btn-primary ml-xl-4">Home</a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Header -->
	<header class="header header-mini">
		<div class="header-title">회원 탈퇴</div>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">회원 탈퇴</li>
				<li class="breadcrumb-item"><a href="mainAction.sp">My page</a></li>
			</ul>
		</nav>
	</header>
	<!-- End Of Page Header -->
	<form name="deleteForm" action="deleteAction.sp" method="get"
		onsubmit="return confirm('정말 탈퇴 하시겠습니까?')">
		<div class="loginbox">
			<fieldset>
				<legend>비밀번호 확인</legend>
				<br>
				<label>비밀번호</label> <br>
				<input type="hidden" name="id"
					value='<jsp:getProperty property="id" name="login"/>' /> <input
					type="password" name="pwd" size="12" maxlength="12" />
				<ul>
					<li><button style="width: 70px; height: 50px;" type="submit">탈퇴</button></li>
					<li><input
						style="background-color: #ff214f; color: #fff; font-size: 14px; font-weight: bold;"
						, type="button" onclick="mypage()" value="취소"></li>
				</ul>
			</fieldset>
		</div>
	</form>
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


