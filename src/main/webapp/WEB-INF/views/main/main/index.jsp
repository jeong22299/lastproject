<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<!-- Fullcalendar css-->
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
<link href="/resources/assets/plugins/fullcalendar/fullcalendar.print.min.css" rel="stylesheet" media="print">
<link href="/resources/assets/plugins/multislider/multislider.css" rel="stylesheet">
<!-- Internal Owl Carousel css-->
<link href="/resources/assets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
<!-- Internal Owl Carousel js-->
<script src="/resources/assets/plugins/owl-carousel/owl.carousel.js"></script>
<!-- 사원 -->
<input type="hidden"	id="empCd" value="<sec:authentication property="principal.employeeVO.empCd" />"/>
<sec:authorize access="hasAnyRole('ROLE_A01','ROLE_A02')">
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 28px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">ToDO</h5>
			<h5><a href="" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<br><br><br><br><br><br>
	</div>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 72px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">일정</h5>
			<h5><a href="/calendar/calendar" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
			<div id="calendar" style="margin-left:5%; width:90%"></div>
			<br>
	</div>
	<br><br>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 28px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">메일</h5>
			<h5><a href="" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<br><br><br><br><br><br>
	</div>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 72px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">결재</h5>
			<h5><a href="" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<br><br><br><br><br><br>
	</div>
	<br><br>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 28px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">공지사항</h5>
			<h5><a href="" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<br><br><br><br><br><br>
	</div>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 72px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">커뮤니티</h5>
			<h5><a href="" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<br><br><br><br><br><br>
	</div>
</sec:authorize>

<!-- 관리자 -->
<sec:authorize access="hasRole('ROLE_A03')">
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 28px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">메일</h5>
			<h5><a href="" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<br><br><br><br><br><br>
	</div>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 72px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">가입 승인 대기</h5>
			<h5><a href="/account/account" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<div id="owl-demo2"
			class="owl-carousel owl-carousel-icons2 owl-loaded owl-drag">

			<div class="owl-stage-outer">
				<div class="owl-stage">
				<c:forEach var="notPosiList" items="${notPosiList}"  varStatus="stat">
					<div class="owl-item">
						<div class="item">
							<div class="card">
								<div class="card-body user-card text-center">
									<div class="mt-2">
										<h5 class="mb-1">${notPosiList.empNm}</h5>
										<p class="mb-1"><fmt:formatDate value='${notPosiList.empSignDt}' pattern='yyyy년 MM월 dd일' /></p>
										<span class="text-muted"><i class="far fa-check-circle text-success me-1"></i>${notPosiList.empCd}</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</c:forEach>
				</div>
			</div>
		</div>
		<br>
	</div>
	<br><br>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 28px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">회의실 예약관리</h5>
			<h5><a href="/meet/book" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<div class="table-responsive border">
			<table class="table text-nowrap text-md-nowrap table-hover mg-b-0" style="border-top: 0px;">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Position</th>
						<th>Salary</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Joan Powell</td>
						<td>Associate Developer</td>
						<td>$450,870</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Gavin Gibson</td>
						<td>Account manager</td>
						<td>$230,540</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Julian Kerr</td>
						<td>Senior Javascript Developer</td>
						<td>$55,300</td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td>Cedric Kelly</td>
						<td>Accountant</td>
						<td>$234,100</td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td>Samantha May</td>
						<td>Junior Technical Author</td>
						<td>$43,198</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="card custom-card" style="width: 47rem; display: inline-block; margin-left: 72px;">
		<div class="card-body h-100">
			<h5 class="card-title" style="float: left;">결재</h5>
			<h5><a href="" class="card-title text-muted" style="float: right;">자세히</a></h5>
		</div>
		<hr>
		<br><br><br><br><br><br><br><br><br><br><br><br>
	</div>
	<br><br>



</sec:authorize>
<script>
//Full Calendar
document.addEventListener('DOMContentLoaded', function () {

	var calendarEl = document.getElementById('calendar');
	var eventsData;
	var empCd = $("#empCd").val();
	let data = {"empCd":empCd};
	
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";
	$.ajax({
		url: '/calendar/schedule',
		type: 'POST',
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data),
		async: false, 
		beforeSend:function(xhr){
			xhr.setRequestHeader(header, token);
		},
		success: function(result) {
			eventsData = result;
			console.log("eventsData : " , eventsData);
		}	
	});
	var calendar = new FullCalendar.Calendar(calendarEl, {
		locale : 'ko',
		height:160,
		initialView: 'listWeek',
		headerToolbar: false,
		navLinks: false, // can click day/week names to navigate views
		businessHours: true, 
		editable: false,
		selectable: false,
		selectMirror: false,
		droppable: false,
		editable: false,
		dayMaxEvents: false,
		events:eventsData
	});

	calendar.render();
});
</script>

<!-- Moment js-->
<script src="/resources/assets/plugins/moment/min/moment.min.js"></script>
<!-- Datepicker js-->
<script src="/resources/assets/plugins/jquery-ui/ui/widgets/datepicker.js"></script>
<!-- Full-calendar js-->
<script src="/resources/assets/plugins/fullcalendar/fullcalendar.min.js"></script>
<!-- Multislider js -->
<script src="/resources/assets/plugins/multislider/multislider.js"></script>
<script src="/resources/assets/js/carousel.js"></script>
