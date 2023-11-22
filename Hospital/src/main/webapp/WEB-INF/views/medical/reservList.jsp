<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/medical/reservList.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
</head>
<body>
 
    <%@include file="../includes/medical/header.jsp" %>
                <div class="admin_content_wrap">
                    <div class="goods_table_wrap">
                    	<!-- 예약 리스트 O -->
	                    <c:if test="${listcheck != 'empty'}">
	                    	<table class="goods_table">
	                    		<thead>
	                    			<tr>
										<td class="th_column_1">환자 번호</td>
	                    				<td class="th_column_2">환자 이름</td>
	                    				<td class="th_column_3">내원 병과</td>
	                    				<td class="th_column_4">예약 날짜</td>
	                    				<td class="th_column_5">에약 시각</td>
	                    				<td class="th_column_6">핸드폰 번호</td>
	                    			</tr>
	                    		</thead>	
	                    		<c:forEach items="${list}" var="list">
	                    		<tr>
	                    			<td><c:out value="${list.memberNum}"></c:out></td>
	                    			<td>
	                    				<a class="move" href='<c:out value="${list.memberNum}"/>'>
											<c:out value="${list.memberName}"></c:out>
										</a>
	                    			</td>
	                    			<td><c:out value="${list.subject}"></c:out></td>
	                    			<td><fmt:formatDate value="${list.checkDate}" pattern="yyyy-MM-dd"/></td>
	                    			<td><fmt:formatDate value="${list.checkTime}" type="time" timeStyle="short"/></td>
	                    			<td><c:out value="${list.memberPhone}"></c:out></td>
	                    		</tr>
	                    		</c:forEach>
	                    	</table>
	                    </c:if>
	                     
	                    <!-- 상품 리스트 X -->
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				예약이 없습니다.
                			</div>
                		</c:if> 
                	</div>
                <%@include file="../includes/medical/footer.jsp" %>

<script>
$(document).ready(function(){
	
	let eResult = '<c:out value="${enroll_result}"/>';
	
	checkResult(eResult);
	
	function checkResult(result){
		
		if(result === ''){
			return;
		}
		
		alert("상품'"+ eResult +"'을 등록하였습니다.");
		
	}
	
	/* 수정 성공 이벤트 */
	let modify_result = '${modify_result}';
	
	if(modify_result == 1){
		alert("수정 완료");
	}

	/* 삭제 결과 경고창 */
	let delete_result = '${delete_result}';
	
	if(delete_result == 1){
		alert("삭제 완료");
	}
});

let searchForm = $('#searchForm');
let moveForm = $('#moveForm');

/* 작거 검색 버튼 동작 */
$("#searchForm button").on("click", function(e){
	
	e.preventDefault();
	
	/* 검색 키워드 유효성 검사 */
	if(!searchForm.find("input[name='keyword']").val()){
		alert("키워드를 입력하십시오");
		return false;
	}
	
	searchForm.find("input[name='pageNum']").val("1");
	
	searchForm.submit();
	
});


/* 페이지 이동 버튼 */
$(".pageMaker_btn a").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
	
});

/* 상품 조회 페이지 */
$(".move").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.append("<input type='hidden' name='bookId' value='"+$(this).attr("href") + "'>");
	moveForm.attr("action", "/admin/goodsDetail");
	moveForm.submit();
	
	
});
</script>
 
</body>
</html>
