<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DaeWoo Hospital</title>
<link rel="stylesheet" href="resources/css/main.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
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
            <h1>로고</h1>
         </div>
         <div class="land_area">
            <h1>조경도</h1>
         </div>
         <div class="login_area">
         <c:if test = "${member == null}">
            <div class="login_button"><a href="/member/login">로그인</a></div>
            <span><a href="/member/join">회원가입</a></span>
         </c:if>
         <c:if test="${member != null }">   
                  <c:if test="${member.adminCk == 1 }">
                    <li><a href="/medical/main">의료진 페이지</a></li>
                </c:if>
                <c:if test="${member.adminCk == 2 }">
                    <li><a href="/admin/main">관리자 페이지</a></li>
                </c:if>                 
                <li>
                    <a href="/member/logout.do">로그아웃</a>
                </li>
            </c:if>  
                  
         </div>
         <div class="clearfix"></div>         
      </div>
      <div class="navi_bar_area">
         <h1>네비게이션 바 / 병원 소개 , 의료진 정보 , 예약 , 진단서발급 </h1>
         <a href="javascript:void(window.open
         	('member/reserve', '진료 예약','width=800, height=600'))">예약
		</a>
      </div>
      <div class="content_area">
         <h1>각 네비에 맞는 컨텐츠 메인에서는 병원에 대한 정보</h1>
      </div>
   </div>
</div>
<script>
 
    /* gnb_area 로그아웃 버튼 작동 */
    $("#gnb_logout_button").click(function(){
        //alert("버튼 작동");
        $.ajax({
            type:"POST",
            url:"/member/logout.do",
            success:function(data){
                alert("로그아웃 성공");
                document.location.reload();     
            } 
        }); // ajax 
    });
<<<<<<< HEAD
=======
    

    
>>>>>>> branch 'main' of https://github.com/NoKyumHak/Hospital.git
</script>
</body>
</html>