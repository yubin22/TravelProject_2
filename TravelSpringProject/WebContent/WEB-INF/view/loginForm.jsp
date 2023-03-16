<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>로그인</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">

<link rel="stylesheet" href="assets/vendors/animate/animate.css">

<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">
<link rel="stylesheet" href="assets/css/form.css">

<script type="text/javascript">
   function checkLogin() {
      if (document.login.id.value == "") {//아이디 
         alert("아이디를 입력하세요");
         document.login.id.focus();
      } else if (document.login.pwd.value == "") {//비밀번호
         alert("비밀번호를 입력하세요");
         document.login.pwd.focus();
      } else {
         document.login.submit();
      }
   }

   // 회원가입 버튼 클릭시 회원가입 화면으로 이동
   function goRegisterForm() {
      location.href = "register.sp";
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
				<li class="nav-item"><a href="main.html"
					class="btn btn-primary ml-xl-4">Home</a></li>
			</ul>
		</div>
	</nav>

	<!-- Page Header -->
	<header class="header header-mini">
		<div class="header-title">Login</div>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.html">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Login</li>
				<li class="breadcrumb-item"><a href="register.sp">Sign up</a></li>
			</ol>
		</nav>
	</header>
	<!-- End Of Page Header -->


	<!-- form -->
	<form action="loginAction.sp" name="login" method="get">
		<div class="loginbox">
			<fieldset>
				<legend>로그인</legend>
				<br><label for="id">아이디</label> <input type="text" name="id"
					maxlength="50" placeholder="아이디를 입력해 주세요" required> <label
					for="pwd">비밀번호</label> <input type="password" name="pwd"
					maxlength="50" placeholder="비밀번호를 입력해 주세요" required>
				<ul>
					<li><a href="register.sp">회원가입</a></li>
				</ul>
				<!--데이터를 서버로 전송-->
				<button class="btn btn-primary w-md" onclick="checkLogin()">로그인</button>
			</fieldset>
		</div>
	</form>


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
