<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>회원 확인</title>
<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">
<link rel="stylesheet" href="assets/css/form.css">
<script type="text/javascript">
	function checkP()
	{
	    if(document.update.pwd.value =="")
	    {//아이디 
	        alert("비밀번호를 입력하세요");    
	        document.update.pwd.focus();
		}else{
    		document.update.submit();
    	}
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
				<li class="nav-item"><a class="nav-link" href="deleteForm.sp">회원
						탈퇴</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="main.sp"
					class="btn btn-primary ml-xl-4">Home</a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Header -->
	<header class="header header-mini bg-dark text-light text-center">
		<div class="header-title">회원 확인</div>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">회원 확인</li>
				<li class="breadcrumb-item"><a href="logoutAction.sp">Logout</a></li>
			</ul>
		</nav>
	</header>
	<!-- End Of Page Header -->
	<!-- 회원 정보 수정 전 비밀번호 체크 -->
	<form name="update" action="updateForm.sp" method="get">
	<div class="loginbox">
		<!-- 일반 회원 정보 변경:session에 로그인 필수 -->
		<jsp:useBean id="login" type="model.LoginDTO" scope="session" />
		<fieldset>
			<legend>회원 확인</legend>
				<br><label>비밀번호</label>
				<br><input type="hidden" name="id"
					value='<jsp:getProperty property="id" name="login"/>' /> <input
					type="password" name="pwd" size="12" maxlength="12" />
				<button onclick="checkP()">수정하기</button>
		</fieldset>
		</div>
	</form>

	<!-- page footer  -->
	<div class="bg-dark text-light text-center border-top wow fadeIn">
		<p class="mb-0 py-3 text-muted small">
			&copy; Copyright
			<script>document.write(new Date().getFullYear())</script>
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


