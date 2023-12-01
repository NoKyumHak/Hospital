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
            <img src="resources/img/main1.png" width="100%" height="100%">
         </div>
         <div class="land_area">
            <img src="resources/img/main2.png" width="100%" height="100%">
         </div>
         <div class="login_area">
         <c:if test = "${member == null}">
            <div class="login_button"><a href="/member/login"><img src="resources/img/login.png" width="100%" height="100%"></a></div>
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
                <li>
                    <a href="/member/logout.do">로그아웃</a>
                </li>
                <li>
                	<a href="/mypage/mypage">마이페이지</a>
                </li>
            </c:if>  
                  
         </div>
         <div class="clearfix"></div>         
      </div>
      <nav id="nav1">
    <ul>
      <li>대우 병원 입니다</li>
      <li><a href="/main">인사말</a></li>
      <li><a href="/main/medical">의료진 정보</a></li>
      <li><a href="/main/way">오시는길</a></li>
      
    <c:if test="${memberReserve == null}">
        <li><a href="javascript:void(window.open('member/reserve', '진료 예약','width=800, height=600'))">예약</a></li>
    </c:if>
   <c:if test="${memberReserve != null}"><li><span>**이미 예약하셨습니다**</span></li></c:if>
        
    

    </ul>
  </nav>         
      <div class="content_area">
         <h1>인사말</h1><br>
         <h2>안녕하십니까?
		<br>대우병원 홈페이지를
		<br>방문해주셔서 감사드립니다.</h2>
		<br>
		<h3>대우 병원은 진료시스템을 개선하고, 쾌적한 시설 환경을 마련하는 등 <br>국민 여러분께서 최상의 의료서비스를 받으실 수 있도록<br> 끝임없는 고민과 노력을 기울여 나가겠습니다.</h3>
         
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
    console.log("1" + ${memberReserve});
    
</script>
</body>
</html>