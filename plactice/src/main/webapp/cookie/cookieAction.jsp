<%@page import="com.momo.util.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
CookieManager.makeCookie("cook", "1", response, 3600);
response.sendRedirect("cookieMain.jsp");
%>
</body>
</html>