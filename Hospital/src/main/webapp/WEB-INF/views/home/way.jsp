<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DaeWoo Hospital</title>
<link rel="stylesheet" href="../resources/css/home/way.css">
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
					<li><a href="/home/info">과 목록</a></li>
				</ul>
			</nav>
			<div class="content_area">
				
				<!-- * 카카오맵 - 지도퍼가기 -->
				<!-- 1. 지도 노드 -->
				<div class="left_area">
				<h2>대우 병원 오시는길</h2><hr><br>
				
				<h2>지하철</h2>
				<hr>
				<h3>7호선/경의중앙선/경춘선 상봉역</h3>
				<h3>6번출구 도보 5분거리</h3>
				<br>
				<h2>버스</h2>
				<hr>
				<h3>상봉역 중랑우체국(중)</h3>
				<h3>정류장 기준 도보 5분</h3>
				
				</div>
				<div class="right_area">
				<div id="daumRoughmapContainer1701389795651"
					class="root_daum_roughmap root_daum_roughmap_landing"></div>

				<script charset="UTF-8" class="daum_roughmap_loader_script"
					src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1701389795651",
						"key" : "2h2dh",
						"mapWidth" : "800",
						"mapHeight" : "600"
					}).render();
				</script>
				</div>
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