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
<title>makeList</title>
<!-- font icons -->
<link rel="stylesheet"
	href="assets/vendors/themify-icons/css/themify-icons.css">

<link rel="stylesheet" href="assets/vendors/animate/animate.css">

<!-- Bootstrap + Travel main styles -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/travel.css">

<!-- calendar -->
<script src='assets/fullcalendar/packages/core/main.js'></script>
<script src='assets/fullcalendar/packages/interaction/main.js'></script>
<script src='assets/fullcalendar/packages/daygrid/main.js'></script>
<script src='assets/fullcalendar/packages/timegrid/main.js'></script>
<script src='assets/fullcalendar/packages/list/main.js'></script>
<script src='assets/dist/index.global.js'></script>

<!-- map -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDeWfVAgYIBv-552O2moEspg1v8AyicAtI&callback=initMap"
	async defer></script>

<style>
box-wrap {
	margin-left: 200px;
}

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

.flex-container {
	display: flex;
	flex-wrap: nowrap;
}

.flex-container>div {
	width: 100px;
	margin: 10px;
	text-align: center;
	line-height: 75px;
	font-size: 30px;
}
</style>
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

      let map;
      let markers = [];
      const fixedLocations = [
        { lat: 35.392945, lng: 139.444294 },
        { lat: 35.710139, lng: 139.810833 },
        { lat: 35.632778, lng: 139.880556 },
        { lat: 34.687378, lng: 135.525844 },
      { lat: 34.668611, lng:135.5013893 },  
        { lat: 42.99, lng: 141.353444 },
      { lat: 42.99, lng: 141.353444 }
      ];
      
      //마커 "ABCDF" 추가   배열 값이라서 코드 11~16 좌표 지정 하면 그 위치에 고정 됨  
      const fixedLabels = "ABCDEF";
      let fixedMarkers = [];
      let labelIndex = 0;

        
      function initMap() {
        // Set the map options
        const options = {
          zoom: 5,
          center: { lat: 35.392945, lng: 139.444294  }
        };

        // 맵 생성 
        map = new google.maps.Map(document.getElementById("map"), options);

        // 고정 마커 생성
        for (let i = 0; i < fixedLocations.length; i++) {
          addFixedMarker(fixedLocations[i], fixedLabels[i]);
        }

       
        map.addListener("click", (event) => {
          addMarker(event.latLng);
        });
      }

      
      function addFixedMarker(location, label) {
        // 클릭 시  다중 마커 생성
          
        const marker = new google.maps.Marker({
          position: location,
          label: label,
          map: map
        });

        // Add the marker to the fixedMarkers array
        fixedMarkers.push(marker);
      }

      function addMarker(location) {
        // Create a new marker
        const marker = new google.maps.Marker({
          position: location,
          map: map
        });

        // Add a click event listener to the marker to open the infowindow
        /* marker.addListener("click", () => {
            let infowindow = new google.maps.InfoWindow();
          infowindow.setContent(`
            <div>
              <h4>마커 추가</h4>
              <p>위도: ${location.lat()}</p>
              <p>경도: ${location.lng()}</p>
            </div>
          `);
          infowindow.open(map, marker);
        });
        */

        // Add the marker to the markers array
        markers.push(marker);
      }

      function clearMarkers() {
        // 다중마커 삭제 코드
        for (let i = 0; i < markers.length; i++) {
          markers[i].setMap(null);
        }
        // 다중마커 전체 지움
        markers = [];
      }

      function deleteMarkers() {
        // Remove all markers from the map
        clearMarkers();
        // Remove all markers from the markers array
        markers = [];
      }
    </script>
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

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#makeList">Make
						plans</a></li>
				<li class="nav-item"><a class="nav-link" href="spotList.sp">추천
						더보기</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="main.sp"
					class="btn btn-primary ml-xl-4">Home</a></li>
				<li class="nav-item"><a href="mainAction.sp?id=${login.id}"
					class="btn btn-primary ml-xl-4">My page</a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Header -->
	<header id="makeList" class="header header-mini">
		<div class="header-title">계획 세우기</div>
		<nav aria-label="breadcrumb">
			<ul class="breadcrumb">
				<li class="breadcrumb-item"><a href="main.sp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Make my
					list</li>
				<li class="breadcrumb-item"><a
					href="mainAction.sp?id=${login.id}">My page</a></li>
			</ul>
		</nav>
	</header>
	<!-- End Of Page Header -->

	<div class="flex-container">
		<!-- map -->
		<div id="map" style="height: 400px; width: 400px; top: 90px; left: 200px;"></div>
		<div style="left: 100px; position: relative;"><button class="btn btn-primary circle" onclick="deleteMarkers()">reset</button></div>

		<!-- CALENDAR -->
		<span id='wrap'>
			<span id='external-events'>
				<span id='external-events-list'>
					<c:forEach items="${save}" var="sa">
						<span
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<span class='fc-event-main'>${sa.locationName}
								${sa.prefecture}</span>
						</span>
					</c:forEach>
				</span>
				<p>
					<input type='checkbox' id='drop-remove' /> <label
						for='drop-remove'>remove after drop</label> <a
						href="mainAction.sp?id=${login.id}" class="btn btn-primary">저장</a>
				</p>
			</span>

			<span id='calendar' style="height: 1200px; width: 1200px; left: 100px; position: relative;"></span>
		</span>
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

	<!-- Map js -->
	<script src="assets/js/map.js"></script>
</body>
</html>