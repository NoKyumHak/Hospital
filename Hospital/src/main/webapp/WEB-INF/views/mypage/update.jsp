<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/mypage/update.css">
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
				<div class="subjecet">
					<span>마이페이지</span>
				</div>
				<div class="caution_wrap">
					<div class="caution_fieldset">
						<fieldset id="caution">
						</fieldset>
					</div>
				</div>
				<div class="user_wrap">
				<input type="hidden" name="memberNum" value="${reserveDetail.memberNum}">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName" readonly="readonly" value="${reserveDetail.memberName}">
					</div>
				</div>
				<div class="phone_wrap">
					<div class="phone_name">전화 번호</div>
					<div class="phone_input_box">
						<input class="phone_input" name="memberPhone" value="${reserveDetail.memberPhone}">
					</div>
				</div>
				<div class="id_wrap">
				<input type="hidden" name="memberId" value="${reserveDetail.memberId}">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId" readonly="readonly" value="${reserveDetail.memberId}">
					</div>
				</div>
				<div class="pw_wrap">
				<input type="hidden" name="memberPw" value="${reserveDetail.memberPw}">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input class="pw_input" name="memberPw" value="${reserveDetail.memberPw}">
					</div>
				</div>
				<div class="email_wrap">
					<div class="email_name">이메일</div>
					<div class="email_input_box">
						<input class="email_input" name="memberEmail" value="${reserveDetail.memberEmail}">
					</div>
				</div>
				<div class="reserve_button_wrap">
					<input type="button" class="reserve_button" value="예약하기">
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