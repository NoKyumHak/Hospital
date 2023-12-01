<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DaeWoo Hospital</title>
<link rel="stylesheet" href="../resources/css/home/info.css">
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
			<div class="top_area">
				<div class="logo_area">
					<img src="../resources/img/main1.png" width="100%" height="100%">
				</div>
				<div class="land_area">
					<img src="../resources/img/main2.png" width="100%" height="100%">
				</div>
				<div class="login_area">
					<c:if test="${member == null}">
						<div class="login_button">
							<a href="/member/login"><img src="../resources/img/login.png"
								width="100%" height="100%"></a>
						</div>
						<span><a href="/member/join">회원가입</a></span>
						<span><a href="/admin/main">관리자페이지</a></span>
					</c:if>
					<c:if test="${member != null }">
						<c:if test="${member.adminCk == 1 }">
							<li><a href="/medical/main">의료진 페이지</a></li>
						</c:if>
						<c:if test="${member.adminCk == 2 }">
							<li><a href="/admin/main">관리자 페이지</a></li>
						</c:if>
						<li><a href="/member/logout.do">로그아웃</a></li>
						<li><a href="/mypage/mypage">마이페이지</a></li>
					</c:if>

				</div>
				<div class="clearfix"></div>
			</div>
			<nav id="nav1">
				<ul>
					<li>대우 병원 입니다</li>
					<li><a href="/main">인사말</a></li>
					<li><a href="/medicalinfo">의료진 정보</a></li>
					<li><a href="/home/way">오시는길</a></li>
					<li><a
						href="javascript:void(window.open
         	('../member/reserve', '진료 예약','width=800, height=600'))">예약
					</a></li>
					<li><a href="/home/info">병원 소개</a></li>
				</ul>
			</nav>
			<div class="content_area">
				<table>
					<tr>
						<th colspan="2">과 이름</th>
						<th colspan="4">과 정보</th>
					</tr>
					<tr>
						<td colspan="2">정형외과</td>
						<td colspan="4">외과학 계열 진료과목, 손/발/척추를 구성하는 모든 해부학적 구조에 대한 진료를 하는 외과.</td>
					</tr>
					<tr>
						<td colspan="2">내과</td>
						<td colspan="4">신체의 기관에 생긴 병을 외과적 수술에 의존하지 않고 물리 요법이나 약물 등으로 치료하는 의학 분야.</td>
					</tr>
					<tr>
						<td colspan="2">소아과</td>
						<td colspan="4">신생아기로부터 청소년기의 환자를 대상으로 진료 및 연구를 행하는 임상의학</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<script>
		/* gnb_area 로그아웃 버튼 작동 */
		$("#gnb_logout_button").click(function() {
			//alert("버튼 작동");
			$.ajax({
				type : "POST",
				url : "/member/logout.do",
				success : function(data) {
					alert("로그아웃 성공");
					document.location.reload();
				}
			}); // ajax 
		});
	</script>
</body>
</html>