<%@page import="java.util.Enumeration"%>
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
Enumeration<String> headers = request.getHeaderNames();
while(headers.hasMoreElements()){
	String headerName = headers.nextElement();
	String headerInfo = request.getHeader(headerName);
	out.print("헤더명 : "+headerName);
	out.print(" / 헤더정보 : "+headerInfo+"<br>");

	
	
}

%>
</body>
</html>