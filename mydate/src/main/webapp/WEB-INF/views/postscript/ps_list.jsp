<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${path}/resources/css/ps_list.css"/>
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/ps_list.js" >

</script>
</head>
<body>
<%@ include file="../../../resources/top.jsp" %>
	<div class="ps_body">
		<div class="ps_search">
			<input type="text"><img src="resources/ps_icon/search.png">
		</div>
		<div class="ps_planner">
		<c:forEach var="bp" items="${psBestPlanner }">
			<img class="card_click" src="resources/ps_images/profile/${bp.mb_image }">
		</c:forEach>
		</div>
	<div class="ps_list_body ">
		<c:forEach var="psB" items="${psBest }">
		<input type="hidden" class="ps_no" value="${psB.ps_no }">
		<div class="ps_card card_detail_click" id="${psB.ps_no }">
			<div class="ps_card_title">
				<p class="ps_card_location card_click"><a href="#"><b>${psB.ps_location }</b></a></p>
			</div>
			<div class="ps_card_body card_click card_detail_click" id="${list.ps_no }">
					<img class="card_best_image" src="resources/ps_images/postscirpt/${psB.ps_image }">
					<div class="ps_card_profile">
						<img src="resources/ps_images/profile/${psB.mb_image }">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">${psB.ps_date }</div>
						<div class="ps_card_title ellipsText">${psB.ps_title }</div>
						<div class="ps_card_context ellipsText">${psB.ps_context }</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">${psB.ps_like }</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">${psB.ps_hits }</span>
						</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
	<div class="div_cols">
		<hr/>
		<h2>전체</h2>
		<hr/>
	</div>	
	<div class="ps_show_list">
		<c:forEach var="list" items="${psListAll}">
			<input type="hidden" class="ps_no" value="${list.ps_no }">
			<div class="ps_card" >
			<div class="ps_card_title">
				<p class="ps_card_location card_click"><a href="#"><b>${list.ps_location }</b></a></p>
			</div>
			<div class="ps_card_body card_click card_detail_click" id="${list.ps_no }">
					<img class="card_all_image" src="resources/ps_images/postscirpt/${list.ps_image }">
					<div class="ps_card_profile">
						<img src="resources/ps_images/profile/${list.mb_image }">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">${list.ps_date }</div>
						<div class="ps_card_title ellipsText">${list.ps_title }</div>
						<div class="ps_card_context ellipsText">${list.ps_context }</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">${list.ps_like }</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">${list.ps_hits }</span>
						</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
	<div class="ps_loading">
		<img class="ps_loading_image" src="resources/ps_icon/loding.gif">
	</div>			
	</div>
<input type="hidden" id="psListSize" value="${psListSize }">
</body>
</html>