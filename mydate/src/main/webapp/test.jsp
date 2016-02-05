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
<script type="text/javascript"  >
$(document).ready(function() {
    var track_Num = 7; //total loaded record group(s)
    var track_Count = 7;
    var loading  = false; //to prevents multipal ajax loads
    
    
    $(window).scroll(function() { //detect page scroll
        
        if($(window).scrollTop() + $(window).height() == $(document).height())  //user scrolled to bottom of the page?
        {	
        	$(".ps_loading_image").show();
        	$.ajax({
				type:"post",
				url:<c:url value='/ajax' />,
				data:"track_Num="+track_Num+"&track_Count="+track_Count,
				datatype:'json',
				success:function(jdata){
					alert(jdata.psListPart);
					track_load += track_count;
					 $(".ps_loading_image").hide();
				},
				error:function(request,status,error){
					alert(error);
				},
				fail:function(){
					alert("fail");
				}
				
			});
            
        }
    });
});
</script>
</head>
<body>
<%@ include file="resources/top.jsp" %>
	<div class="ps_body">
		<div class="ps_search">
			<input type="text"><img src="resources/ps_icon/search.png">
		</div>
		<div class="ps_planner">
			<img src="resources/ps_images/pro2.png">
			<img src="resources/ps_images/pro3.png">
			<img src="resources/ps_images/pro4.png">
			<img src="resources/ps_images/pro5.png">
		</div>
	<div class="ps_list_body">
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/1.jpg">
					<div class="ps_card_profile">
						<img src="resources/pro.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/2.jpg">
					<div class="ps_card_profile">
						<img src="resources/pro.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/3.jpg">
					<div class="ps_card_profile">
						<img src="resources/pro.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/4.jpg">
					<div class="ps_card_profile">
						<img src="resources/pro.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/5.jpg">
					<div class="ps_card_profile">
						<img src="resources/pro.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/6.jpg">
					<div class="ps_card_profile">
						<img src="resources/ps_images/pro2.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/7.jpg">
					<div class="ps_card_profile">
						<img src="resources/ps_images/pro3.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		<div class="ps_card">
			<div class="ps_card_title">
				<p class="ps_card_location"><a href="#"><b>사당</b></a></p>
			</div>
			<div class="ps_card_body">
					<img src="resources/ps_images/8.jpg">
					<div class="ps_card_profile">
						<img src="resources/ps_images/pro4.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">아 타이틀을 빼먹었어</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 어떻게 할까요?</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
	</div>
	<div class="div_cols">
		<hr/>
		<h2>전체</h2>
		<hr/>
	</div>	
	<div class="ps_show_list">
		<% int i=-1; %>
		<c:forEach begin="1" end="20">
		<%i=i*(-1); %>
			<div class="ps_card_all">
			<div class="ps_card_title">
				<p class="ps_card_location"><b>사당</b></p>
			</div>
			<div class="ps_card_body_all">
					<img src="resources/ps_images/<%=4+i %>.jpg">
					<div class="ps_card_profile">
						<img src="resources/ps_images/pro<%=4+i %>.png">
					</div>
				<div class="ps_card_content">
						<div class="ps_card_day">2016/01/20</div>
						<div class="ps_card_title">전체보여주는 부분</div>
						<div class="ps_card_context ellipsText">아 이것이 내용부분입니다. 길게 할지 짧게 할지 고민인데요, 스크립트로 두줄처리 할거야</div>
						<div class="ps_card_etc">
							<span class="ps_card_likes"><img class="ps_icon" src="resources/ps_icon/like.png">25</span> 
							<span class="ps_card_comments"><img class="ps_icon" src="resources/ps_icon/comment.png">39</span>
						</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
			
	</div>
</body>
</html>