<%@page import="com.momo.dto.EmpDto"%>
<%@page import="java.util.List"%>
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
List<EmpDto> list = (List<EmpDto>)request.getAttribute("list");

//for(EmpDto data : list ){
//	out.print(data+"<br>");
//}
%>
<table>
	<table border=1px'>
	<tr>
		<td>사번</td>
		<td>사원명</td>
		<td>주민등록번호</td>
		<td>부서번호</td>
		<td>급여</td>
		
	</tr>	
	<%for(EmpDto dto: list) { %>
	<tr>
		<td><%=dto.getEmp_id() %></td>
		<td><%=dto.getEmp_name()  %></td>
		<td><%=dto.getEmp_no() %></td>
		<td><%=dto.getDept_code() %></td>
		<td><%=dto.getSalary() %></td>
	</tr>
	<% } %>	
</table> 	 
	

</table>

</body>
</html>