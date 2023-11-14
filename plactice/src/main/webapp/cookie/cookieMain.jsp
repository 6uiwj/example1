<%@page import="com.momo.util.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.none {display:none}
</style>

<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	window.onload = function() {
		<%
		if(!(CookieManager.readCookie("cook", request).equals("1"))){
			%>
			document.querySelector("#popup").style.display='block';
			<%

		} %>
		document.querySelector("#popup").style.display='block';
		
		document.querySelector("#closeBtn").onclick= function() {
			if(document.querySelector("#inactiveToday").checked){
				popupForm.submit();
			} else {
				document.querySelector("#popup").style.display='none';
			}
		}
	}
</script>

<form action="cookieAction.jsp" method = "get" name="popupForm">
	<div id="popup" class= "none" >
        <h2 align="center">공지사항 팝업입니다.</h2>
        <div align="right">
	            <input type="checkbox" id="inactiveToday" name="inactiveToday" value="Y" checked/> 
	            하루 동안 열지 않음
	            <input type="button" value="닫기" id="closeBtn" />
</div>
</div>
</form>

</body>
</html>