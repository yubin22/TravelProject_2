<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>마이페이지</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">
<!-- css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/travel.css">


<script src='assets/fullcalendar/packages/core/main.js'></script>
<script src='assets/fullcalendar/packages/interaction/main.js'></script>
<script src='assets/fullcalendar/packages/daygrid/main.js'></script>
<script src='assets/fullcalendar/packages/timegrid/main.js'></script>
<script src='assets/fullcalendar/packages/list/main.js'></script>


<script src='assets/dist/index.global.js'></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {

		var containerEl = document.getElementById('external-events-list');
		new FullCalendar.Draggable(containerEl, {
			itemSelector : '.fc-event',
			eventData : function(eventEl) {
				return {
					title : eventEl.innerText.trim()
				}
			}
		});
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
			},
			editable : true,
			droppable : true, // this allows things to be dropped onto the calendar
			drop : function(arg) {
				// is the "remove after drop" checkbox checked?
				if (document.getElementById('drop-remove').checked) {
					// if so, remove the element from the "Draggable Events" list
					arg.draggedEl.parentNode.removeChild(arg.draggedEl);
				}
			}
		});
		calendar.render();

	});
</script>
<style>
body {
	font-size: 14px;
}

#external-events {
	position: fixed;
	left: 20px;
	top: 100px;
	width: 150px;
	padding: 0 10px;
	border: 1px solid #ccc;
	background: #eee;
	text-align: left;
}

#external-events h4 {
	font-size: 16px;
	margin-top: 0;
	padding-top: 1em;
}

#external-events .fc-event {
	margin: 3px 0;
	cursor: move;
}

#external-events p {
	margin: 1.5em 0;
	font-size: 11px;
	color: #666;
}

#external-events p input {
	margin: 0;
	vertical-align: middle;
}

#calendar-wrap {
	margin-left: 200px;
}

#calendar {
	max-width: 1100px;
	margin: 0 auto;
}
</style>
<script type="text/javascript">
	// 로그아웃 담당으로 이동
	function logout() {
		location.href = "logoutAction.sp";
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
		
		<!-- 회원 정보 변경 / 탈퇴 -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#myPage">My
						page</a></li>
				<li class="nav-item"><a class="nav-link" href="update.sp">회원
						정보 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="deleteForm.sp">회원
						탈퇴</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="myList.sp?id=${login.id}"
					class="btn btn-primary ml-xl-4"><i class="ti-heart"></i></a></li>
				<li class="nav-item"><a href="spotList.sp"
					class="btn btn-primary ml-xl-4">List</a></li>
				<li class="nav-item"><a href="logoutAction.sp"
					class="btn btn-primary ml-xl-4">Logout</a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Header -->
	<header id="myPage"
		class="header header-mini bg-dark text-light text-center">
		<div class="header-title">${login.id}'s plan</div>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<!-- ${login.id} -->
				<jsp:useBean id="login" class="model.LoginDTO" scope="session" />
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">My page</li>
				<li class="breadcrumb-item active"><a href="logoutAction.sp"
					aria-current="page">Logout</a></li>
			</ul>
		</nav>
	</header>
	<!-- End Of Page Header -->
	<div id='external-events-list'>
		<div id='calendar'></div>
	</div>
	<br>
	

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