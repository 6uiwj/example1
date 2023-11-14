<%@page import="com.ming.vo.UserVO"%>
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
String a = request.getMethod();
String b = request.getRequestURL().toString();
String c = request.getProtocol();
String d = request.getServerName();
int e = request.getServerPort();
String f = request.getRemoteAddr();
String g = request.getQueryString();
String h = request.getParameter("eng");

%>
<%
UserVO user = new UserVO(); 
String age = request.getParameter("age");
if(age != null ) {
	user.setAge(Integer.parseInt(age));
	
} else{
	user.setAge(10);
}

user.setName(request.getParameter("name"));
out.println(age);
out.print(user.getName());


%>
<ul>

<li>데이터 전송 방식 : <%=a %></li>
<li>URL : <%=b %> </li>
<li>프로토콜 :  <%=c %> </li>
<li>서버명 : <%=d %> </li>
<li>포트번호 : <%=e %> </li>
<li>클라이언트 IP : <%=f %> </li>
<li>쿼리스트링 : <%=g %> </li>
<li>파라미터 : <%=h %> </li>
</ul>
</body>
</html>