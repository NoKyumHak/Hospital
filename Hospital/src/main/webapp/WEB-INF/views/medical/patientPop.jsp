<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/authorPop.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
<div class="subject_name_warp">
			<span>환자 목록</span>
		</div>
		<div class="content_wrap">
               	<!-- 게시물 표 영역 -->
				<div class="author_table_wrap">
               		<!-- 게시물 O -->
               		<c:if test="${listCheck != 'empty'}">
               			<div class="table_exist">
	                    	<table class="author_table">
	                    		<thead>
	                    			<tr>
	                    				<td class="th_column_1">환자 번호</td>
	                    				<td class="th_column_2">환자 이름</td>
	                    			</tr>
	                    		</thead>
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.memberNum}"></c:out> </td>
	                    			<td>
	                    				<a class="move" href='<c:out value="${list.memberNum}"/>' data-name='<c:out value="${list.memberName}"/>'>
	                    					<c:out value="${list.memberName}"></c:out>
	                    				</a>
	                    			</td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
                    	</div>                			
               		</c:if>
               		<!-- 게시물 x -->
               		<c:if test="${listCheck == 'empty'}">
               			<div class="table_empty">
               				등록된 환자가 없습니다.
               			</div>
               		</c:if>
               		
		</div>

	</div>
	
	<script>

		let searchForm = $('#searchForm');
		let moveForm = $('#moveForm');

		/* 작가 선택 및 팝업창 닫기 */
		$(".move").on("click", function(e){
			
			e.preventDefault();
			
			let memberNum = $(this).attr("href");
			let memberName = $(this).data("name");
			$(opener.document).find("#authorId_input").val(memberNum);
			$(opener.document).find("#authorName_input").val(memberName);
			
			window.close();

		});
	</script>
</body>
</html>