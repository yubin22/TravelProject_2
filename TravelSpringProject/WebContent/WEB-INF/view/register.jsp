<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>회원가입</title>

<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">
<link rel="stylesheet" href="assets/vendors/animate/animate.css">


<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/travel.css">
<link rel="stylesheet" href="assets/css/form.css">
<script type="text/javascript">
	//입력 확인 함수 alert창, email은 null허용
	function join() {
		if (document.register.id.value == "") { //아이디
			alert("아이디를 입력해주세요.");
			document.register.id.focus();
		} else if (document.register.idDuplication.value != "idCheck") { //아이디 중복 채크
			alert("아이디 중복 체크를 해주세요.");
			document.register.idDuplication.focus();
		} else if (document.register.pwd.value == "") { //비밀번호
			alert("비밀번호를 입력해주세요.");
			document.register.pwd.focus();
		} else if (document.register.pwd.value != document.register.pwd1.value) { //비밀번호 확인
			alert("비밀번호를 동일하게 입력해주세요.");
			document.register.pwd1.focus();
		} else if (document.register.name.value == "") { //이름
			alert("이름을 입력해주세요.");
			document.register.name.focus();
		} else if (document.register.birth.value == "") { //생년월일
			alert("생일을 입력해주세요.");
			document.register.birth.focus();
		} else if (document.register.gender.value == "") { //성별
			alert("성별을 입력해주세요.");
			document.register.gender.focus();
		} else if (document.register.phone.value == "") { //휴대폰
			alert("전화번호를 입력해주세요.");
			document.register.phone.focus();
		} else if (document.register.address.value == "") { //주소
			alert("주소를 입력해주세요.");
			document.register.address.focus();
		} else {
			document.register.submit();
		}
	}

	//취소 시 로그인 페이지로
	function goLoginForm() {
		location.href = "loginForm.sp"
	}

	//아이디 중복 체크
	function dbCheckId() {
		if (document.register.id.value.length == 0
				|| document.register.id == "") {
			alert("아이디를 입력해주세요.");
			document.register.id.focus();
		} else {
			window.open("dbCheckId.sp?id=" + document.register.id.value);
		}
	}

	//다른 아이디로 변경했을때 다시 중복 확인
	function inputIdChk() {
		document.register.idDuplication.value = "idUnckeck";
		//document.register.checkId.disabled = false;
		document.register.checkId.style.cursor = "pointer";
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
		<div class="header-title">Sign Up</div>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.html">Home</a></li>
				<li class="breadcrumb-item"><a href="loginForm.sp">Login</a></li>
				<li class="breadcrumb-item active" aria-current="page">Sign Up</li>
			</ol>
		</nav>
	</header>
	<!-- End Of Page Header -->

	<!-- 회원가입 form 작성 -> registerAction.sp -> resgisterResult.jsp  -->
	<form name="register" action="registerAction.sp" method="get">
		<div class="loginbox">
			<fieldset>
				<legend>로그인 정보</legend>
				<br> <label id="title">아이디</label>
				<!-- 중복 체크 후 새로운 아이디 입력 시 중복 체크 안 된것으로 간주 -->
				<input type="text" name="id" maxlength="20" class="id_input" autocomplete="off"
					onkeydown="inputIdChk()">
				<!-- 중복 체크 버튼 -->
				<button class="btn btn-primary w-md" type="button"
					onclick="dbCheckId()" name="checkId" class="checkId">중복 확인</button>
				<!-- 중복 체크 여부 -->
				<input type="hidden" name="idDuplication" value="idUncheck">
				<label id="title">비밀번호</label> <input type="password" name="pwd"
					maxlength="15">
				<label id="title">비밀번호 재확인</label> <input type="password"
					name="pwd1" maxlength="15">
			</fieldset>
			<fieldset>
				<legend>개인 정보</legend>
				<br> <label id="title">이름</label> <input type="text"
					name="name" maxlength="40" autocomplete="off"> <label id="title">생년월일</label>
				<input type="date" name="birth" maxlength="9" placeholder="8자리"
					size="6" autocomplete="off">
				<script type="text/javascript"
					src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
				<label id="title">성별</label>
				<ul>
					<li><input type="radio" name="gender" value="남" checked>남</li>
					<li><input type="radio" name="gender" value="여">여</li>
				</ul>
				<label id="title">이메일</label> <input type="email" name="mail"
					maxlength="50" autocomplete="off"> <label id="title">휴대전화</label> <input
					type="tel" name="phone" autocomplete="off"> <br> <label id="title">주소</label>
				<input type="text" size="50" name="address" autocomplete="off">
				<ul>
					<li><button onclick="join()">가입</button></li>
					<li><button onclick="goLoginForm()">취소</button></li>
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

	<!-- Travel js -->
	<script src="assets/js/travel.js"></script>
</body>
</html>