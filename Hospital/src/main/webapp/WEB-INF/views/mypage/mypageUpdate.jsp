<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/mypage/mypageUpdate.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<meta charset="UTF-8">
<title>내 정보 수정</title>
</head>
<body>


	<div class="wrapper">
		<form id="mypgaepUdate_form" method="post">
			<div class="wrap">
			<div class="top_gnb_area">
				<h1>헤더</h1>
			</div>
			<div class="mypage_header">
				<a href="/mypage/mypageUpdate">개인정보 수정</a> <a
					href="/mypage/mypageReserveView">예약정보 확인</a>
			</div>
			<div class="content_area">
				<div class="subjecet">
					<span>내 정보 수정</span>
				</div>
				<div class="caution_wrap">
					<div class="caution_fieldset">
						<fieldset id="caution">
						</fieldset>
					</div>
				</div>
				<div class="user_wrap">
				<input type="hidden" name="memberNum" value="${mypageUpdate.memberNum}">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName" readonly="readonly" value="${mypageUpdate.memberName}">
					</div>
				</div>
				<div class="phone_wrap">
					<div class="phone_name">전화 번호</div>
					<div class="phone_input_box">
						<input class="phone_input" name="memberPhone" value="${mypageUpdate.memberPhone}">
					</div>
				</div>
				<div class="id_wrap">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId" readonly="readonly" value="${mypageUpdate.memberId}">
						<input type="hidden" name="memberIDNum" value="${mypageUpdate.memberIDNum}">
					</div>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input class="pw_input" name="memberPw" placeholder="비밀번호를 입력해 주세요">
					</div>
				</div>
				<div class="email_wrap">
					<div class="email_name">이메일</div>
					<div class="email_input_box">
						<input class="email_input" name="memberEmail" value="${mypageUpdate.memberEmail}">
					</div>
				</div>
				<div class="update_button_wrap">
					<input type="button" class="update_button" value="수정하기">
				</div>
			</div>
			</div>
		</form>
	</div>
	<script>
		
		$(document).ready(function() {
			//수정 버튼(수정 기능 작동)
			$(".update_button").click(function() {
				$("#mypgaepUdate_form").attr("action", "/mypage/mypageUpdate");
				$("#mypgaepUdate_form").submit();
			});
		});

	</script>
</body>
</html>