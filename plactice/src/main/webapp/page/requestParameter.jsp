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
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String sex = request.getParameter("sex");
String[] favo = request.getParameterValues("favo");
String intro = request.getParameter("intro");
String favorite = "";
for(String fav : favo) {
	favorite += fav + " ";
} 
%>
아이디 : <%=id %> <br>
성별 : <%= sex %> <br>
관심사 : <%= favorite %> <br>
intro : <%= intro %> <br>

</body>
</html>