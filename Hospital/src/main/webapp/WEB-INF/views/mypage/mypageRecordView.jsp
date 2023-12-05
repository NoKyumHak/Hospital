<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소견서 리스트</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>
</head>
<body>
	<div class="wrapper">
		<div class="wrap">
			<div class="top_gnb_area">
				<h1>헤더</h1>
			</div>
			<div class="mypage_header">
				<a href="/mypage/mypageUpdate">개인정보 수정</a> <a
					href="/mypage/mypageReserveView">예약정보 확인</a>
			</div>
			<div class="content_area">
				<h1>Profile</h1>
				<br> <br>
				<div class="table_wrap">
					<table class="list_table">
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>비용</th>
						<th>담당의</th>
						<br>
						<c:forEach var="recordlist" items="${recordDetail}" varStatus="status">
							<tr>
								<td>${recordlist.recordNum}</td>
								<td>
									 <a class="move" href="${recordlist.recordNum}">
										${recordlist.recordTitle}
									</a>
								</td>
								<td><fmt:formatDate value="${recordlist.recordDate}"
										pattern="yyyy/MM/dd" /></td>
								<td>${recordlist.expense}</td>
								<td>${doctorDetail[status.index].doctorName}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<script>
			$(".move").on("click", function(e){
				
				e.preventDefault();
				
				moveForm.append("<input type='hidden' name='authorId' value='"+ $(this).attr("href") + "'>");
				moveForm.attr("action", "/admin/authorDetail");
				moveForm.submit();
				
			});
        </script>
</body>
</html>