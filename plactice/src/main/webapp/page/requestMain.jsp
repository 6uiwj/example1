<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href = "requestWebInfo.jsp?age=10"> 페이지 정보</a>

<h2>클라이언트 정보</h2>
    <form action="requestWebInfo.jsp" method="post">

        <label>아이디:</label>
        <input type="text" name="id" value="dev_ming"><br>

                <label>성별 : </label>
                남자<input type="radio" name="sex" value="man" checked="checked">
                여자<input type="radio" name="sex" value="woman"><br>
                <label>관심사항 :</label>
                <input type ="checkbox" name="favo" value="eco">경제
                <input type ="checkbox" name="favo" value="pol">정치
                <input type ="checkbox" name="favo" value="ent">연예<br>

            자기소개: <textarea rows="4" cols="20" name="intro"></textarea>
            <br>
            <button>전송</button>
        

    </form>
    
    <h2>요청 헤더 정보 읽기</h2>
    <a href = "requestHeader.jsp"> 요청 헤더 정보 읽기</a>
</body>
</html>