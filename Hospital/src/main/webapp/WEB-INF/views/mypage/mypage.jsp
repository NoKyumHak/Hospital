<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<link rel="stylesheet" href="/resources/css/mypage/mypage.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<div class="wrap">
			<div class="top_gnb_area">
				<h1>헤더</h1>
			</div>
			<div class="mypage_header">
				<a href="/mypage/mypageUpdate">개인정보 수정</a> <a
					href="/mypage/mypageReserve">예약정보 확인</a>
			</div>
			<div class="content_area">
				<h1>Profile</h1>
				<br>
				<br>
				<div class="user_wrap">
					<input type="hidden" name="memberNum"
						value="${mypageDetail.memberNum}">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName" readonly="readonly"
							value="${mypageDetail.memberName}">
					</div>
				</div>
				<div class="phone_wrap">
					<div class="phone_name">전화 번호</div>
					<div class="phone_input_box">
						<input class="phone_input" name="memberPhone"
							value="${mypageDetail.memberPhone}">
					</div>
				</div>
				<div class="id_wrap">
					<input type="hidden" name="memberId"
						value="${mypageDetail.memberId}">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId" readonly="readonly"
							value="${mypageDetail.memberId}">
					</div>
				</div>
				<div class="pw_wrap">
					<input type="hidden" name="memberPw"
						value="${mypageDetail.memberPw}">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input type="password" class="pw_input" name="memberPw"
							value="${mypageDetail.memberPw}">
					</div>
				</div>
				<div class="email_wrap">
					<div class="email_name">이메일</div>
					<div class="email_input_box">
						<input class="email_input" name="memberEmail"
							value="${mypageDetail.memberEmail}">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>