<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>소견서 상세 페이지</title>
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
                <a href="/mypage/mypageUpdate">개인정보 수정</a>
                <a href="/mypage/mypageReserveView">예약정보 확인</a>
            </div>
            <div class="content_area">
                <h1>Record 상세 페이지</h1>
                <br>
                <table>
                    <tr>
                        <td>번호</td>
                        <td>${mypageRecordDetail.recordNum}</td>
                    </tr>
                    <tr>
                        <td>제목</td>
                        <td>${mypageRecordDetail.recordTitle}</td>
                    </tr>
                    <tr>
                        <td>날짜</td>
                        <td><fmt:formatDate value="${mypageRecordDetail.recordDate}" pattern="yyyy/MM/dd" /></td>
                    </tr>
                    <tr>
                        <td>비용</td>
                        <td>${mypageRecordDetail.expense}</td>
                    </tr>
                    <tr>
                        <td>담당의</td>
                        <td>${mypageRecordDetail.doctorName}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>