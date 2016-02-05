<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${path}/resources/css/top.css"/>
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#emergency").hide();
    $("#hurry").hover(function(){
       //alert("aa");
       $("#emergency").toggle();
    });
});
</script>
</head>
<body>
<!-- navigator -->
      <header class="navi-wrapper">
            <div class="navigator">
               <div style="float:left;">
                  <div class="logo" style=""><a href="#"><img src="">MyDate</a></div>
                  <ul class="naviul">
                     <li class="navili"><a href="#">계획짜기</a></li>
                     <li class="navili"><a href="#">어디가지?</a></li>
                     <li class="navili"><a href="#">뭐 먹지?</a></li>
                     <li class="navili"><a href="#">추천코스</a></li>
                     <li class="navili hurry"><a id="hurry" href="#">급한 마음<img id="emergency" style="width:15px;height:15px;" src="<c:url value="/icons/emergency.png" />"></a></li>
                  </ul>
               </div>
               <div style="float:right;margin:5px;font-size:10pt;">
                     <div style="float:left;"><a href="#">로그인&nbsp;|</a></div>
                     <div style="float:left;"><a href="#">&nbsp;회원가입</a></div>
               </div>
         </div>
      </header>

</body>
</html>