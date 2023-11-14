<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 예외사항이 발생하였습니다. </h1>
<%
out.print(exception.getClass().getName());
%><br><%
out.print(exception.getMessage());
%>

</body>
</html>