<%@page import="com.momo.dto.EmpDto"%>
<%@page import="java.util.List"%>
<%@page import="com.momo.dao.EmpDao"%>
<%@page import="com.momo.common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JDBC 테스트1</h2>
<%
DBConnection dbcon = new DBConnection();
dbcon.stmt = dbcon.con.createStatement();
dbcon.rs = dbcon.stmt.executeQuery("select * from job");
dbcon.rs.next();
out.print(dbcon.rs.getString(1));
dbcon.close();
%>

<h2>application 객체를 이용한 DB연결 테스트</h2>
<%
DBConnection dbCon3 = new DBConnection(application);
dbCon3.close();
%>

<h2>list 출력하기</h2>
<%
EmpDao empDao = new EmpDao(application);
List<EmpDto> list = empDao.getList();
for (EmpDto listSet : list) {
	listSet.getEmp_id();
	listSet.getEmp_name();
	listSet.getEmp_no();
	listSet.getDept_code();
	
}
%>
</body>
</html>