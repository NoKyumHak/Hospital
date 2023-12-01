<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/resources/css/mypage/mypageReserveView.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<form id="reserve_form" method="post">
			<div class="wrap">
				<div class="top_gnb_area">
					<h1>진료 예약 조회</h1>
				</div>
				<div class="caution_wrap">
					<div class="caution_fieldset">
						<fieldset id="caution">
							<legend>*주의 사항*</legend>
							<list>
							<li>당일 예약시간 20분 전에 내원하여 원무팀 수납/창구 방문 접수 후 진료 받으시기 바랍니다</li>
							<li>예약 변경/취소는 진료 1일전까지 꼭 연락 주시기 바랍니다.</li>
							</list>
						</fieldset>
					</div>
				</div>
				<div class="content_area">
					<div class="user_wrap">
						<input type="text" name="checkNum" value="${checkDetail.checkNum}">
						<input type="text" name="memberNum" value="${checkDetail.memberNum}">
						<div class="user_name">이름</div>
						<div class="user_input_box">
							<input class="user_input" name="memberName" readonly="readonly" value="${checkDetail.memberName}">
						</div>
					</div>
					<div class="idnum_wrap">
						<div class="idnum_name">주민 등록 번호</div>
						<div class="idnum_input_box">
							<input class="idnum_input" name="memberIDNum" maxlength="14" readonly="readonly" value="${checkDetail.memberIDNum}">
						</div>
					</div>
					<div class="phone_wrap">
						<div class="phone_name">전화 번호</div>
						<div class="phone_input_box">
							<input class="phone_input" name="memberPhone" readonly="readonly" value="${checkDetail.memberPhone}">
						</div>
					</div>
					<div class="subject_wrap">
						<div class="subject_name">진료 과</div>
						<div class="subject_input_box">
							<input class="subject_input" name="subject" readonly="readonly" value="${checkDetail.subject }">
						</div>
					</div>
					<div class="checkDate_wrap">
						<div class="checkDate_name">진료 희망일</div>
						<input class="checkDate_input" name="checkDate"
							readonly="readonly" value="${checkDetail.checkDate }">
					</div>
					<div class="checkTime_wrap">
						<div class="checkTime_name">진료 희망시간</div>
						<div class="checkTime_input_box">
							<input class="checkTime_input" name="checkTime" readonly="readonly" value="${checkDetail.checkTime }">
						</div>
					</div>
					<div class="reserve_button_wrap">
						<input type="button" class="reserve_button" value="예약하기">
					</div>
				</div>
			</div>
		</form>
	</div>
	<script>
		$(document).ready(function() {
			//예약 버튼(예약 기능 작동)
			$(".reserve_button").click(function() {
				$("#reserve_form").attr("action", "/member/reserve");
				$("#reserve_form").submit();
			});
		});
	</script>
</body>
</html>