<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${path}/resources/css/ps_insert.css"/>
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#upload_btn").live("change",function(){
				
				readURL(this);
			});
});

function readURL(input) {
	$(".ps_insert_show").html('');
	var cnt=0;
	for(ima=0; ima<input.files.length; ima++){
		$(".ps_insert_show").append("<div class='ps_insert_card' id='ps_insert_card"+ima+"'><textarea class='ps_insert_content' type='text' readonly='readonly'>작성완료</textarea></div>")
	    var reader = new FileReader();
        reader.readAsDataURL(input.files[ima]);
        reader.onload = function(){
        	divName ="#ps_insert_card"+cnt;
        	$(divName).css({"background-image":"url(" + this.result + ")","background-repeat":"no-repeat","background-size":"150px 150px"});
        	cnt+= 1;
        }
	}

        

}
</script>
</head>
<body>
<%@ include file="../../../resources/top.jsp" %>
<div class="ps_insert_body">
	<form id="insertSubmit" enctype="multipart/form-data">
	<div class="ps_insert_ti">Title</div>
	<div class="ps_insert_title">
		<input type="text" name="ps_title" value="제목을 입력해주세요~">
	</div>
	<div class="ps_insert_file">
			<input type="file" multiple="multiple" id="upload_btn" name="pd_image">
	</div>
	<div class="ps_insert_show">
	</div>
	<div class="contentSubmit">
		
	</div>	
	</form>
</div>
</body>
</html>