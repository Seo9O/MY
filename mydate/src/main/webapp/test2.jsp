<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${path}/resources/css/ps_detail_style.css"/>
<title>Insert title here</title>
<script type="text/javascript">
var ypos, image, scrollX;
	 
function parallex(){
	ypos = window.pageYOffset;
	
	profile = document.getElementById('ps_detail_profile');
	var checkScroll = parseInt(ypos/701);
	var checkProfile = parseInt(ypos/100)-(checkScroll*7);
	if(checkProfile ==1|| checkProfile ==0){
		scrollX = 225;
	}else if(checkProfile == 7){
		scrollX = 1000;
	}
	else{
		scrollX = 225 + 100*checkProfile;
	}
	scrollX = 143*(ypos-(checkScroll*700))/100;
	if(checkScroll%2 == 0 ){
		profile.style.left = 1050 - scrollX + 'px';
	}else if(checkScroll%2 == 1){
		profile.style.left = 50 + scrollX + 'px';
	}
	profile.style.top = 500 + ypos + 'px';
	
	for(var i=0; i<4; i++){
		if(checkScroll == i){
			image = document.getElementById('ps_detail_part'+i);
			imageNext = document.getElementById('ps_detail_part'+(i+1));
			image.style.top = ypos-i*700 + 'px';
			image.style.opacity = 1 - (ypos/100-i*7)*0.2;
			imageNext.style.opacity =  (ypos/100-i*7)*0.2 - 0.4;
		}
	}
}
	 
window.addEventListener('scroll', parallex);
</script>
</head>
<body>
<%@ include file="resources/top.jsp" %>
<div  class="ps_detail_body">
	<div id="ps_detail_part0" class="ps_detail_parallax">
		<img id="image1" src="resources/ps_images/11.jpg">
	</div>
	<div id="ps_detail_part1" class="ps_detail_parallax">
		<img id="image2" src="resources/ps_images/12.jpg">
	</div>
	<div id="ps_detail_part2" class="ps_detail_parallax">
		<img id="image3" src="resources/ps_images/13.jpg">
	</div>
	<div id="ps_detail_part3" class="ps_detail_parallax">
		<img id="image4" src="resources/ps_images/14.jpg">
	</div>
	<div id ="ps_detail_profile" class="ps_detail_profile">
		<img src="resources/ps_images/pro2.png">
	</div>
</div>
</body>
</html>