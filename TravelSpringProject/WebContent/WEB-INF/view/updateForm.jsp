<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>회원 정보 변경</title>
<!-- font icons -->
<link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">

<link rel="stylesheet" href="assets/vendors/animate/animate.css">

<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">
<link rel="stylesheet" href="assets/css/form.css">
<script type="text/javascript">
	//취소 시 메인 페이지로
	function goMain(){
		location.href="main.sp"
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
			<ul class="navbar-nav">
				<li class="nav-item"><a href="main.sp"
					class="btn btn-primary ml-xl-4">Home</a></li>
				<li class="nav-item"><a href="logoutAction.sp"
					class="btn btn-primary ml-xl-4">Logout</a></li>
			</ul>
		</div>
	</nav>
<!-- Page Header -->
	<header class="header header-mini">
		<div class="header-title">회원 정보 변경</div>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">회원 정보 변경</li>
				<li class="breadcrumb-item"><a href="mainAction.sp">My page</a></li>
			</ul>
		</nav>
	</header>
	<!-- End Of Page Header -->
	<form action="updateAction.sp" method="get">
		<jsp:useBean id="login" type="model.LoginDTO" scope = "request"/>
		<div class="loginbox">
			<fieldset>
			<legend>회원 정보 변경</legend>
				<br><label>id : </label>
						<input type="text" name="id" value='<jsp:getProperty property="id" name="login"/>' />
					
					<label>비밀번호 : </label>
						<input type="password" name="pwd" value='<jsp:getProperty property="pwd" name="login"/>'  size="12" maxlength="12"/>
					
					<label>이름 : </label>
						<input type="text" name="name" value='<jsp:getProperty property="name" name="login"/>'  size="12" maxlength="12"/>
					
			        <label id="title">생년월일 : </label>
			        	<input type="text" name="birth" value='<jsp:getProperty property="birth" name="login"/>' >


					<label id="title">성별 : </label>
						<input name="gender" value='<jsp:getProperty property="gender" name="login"/>'>
					
					<label>mail : </label><td>
						<input type="text" name="mail" value='<jsp:getProperty property="mail" name="login"/>' size="12" maxlength="50"/>
					
					<label id="title">휴대전화 : </label>
						<input  type="text" name="phone"  value='<jsp:getProperty property="phone" name="login"/>' />

					<label>주소 : </label>
						<input type="text" name="address" value='<jsp:getProperty property="address" name="login"/>'  size="50" maxlength="50"/>
					<ul>
						<li><button type = "submit">저장</button></li>
						<li><button onclick="goMain()">취소</button></li>
					</ul>
			</fieldset>
		</div>
	</form>
	


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


