<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 요청 데이터의 인코딩을 UTF-8로 설정
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Data Output</title>
</head>
<body>

<%!
    // 폼 데이터에서 받아올 변수 선언
    String name, id, pw, major, protocol;	
    String[] hobbys;
%>

<%
    // 폼 데이터에서 값을 가져와 변수에 할당
    name = request.getParameter("name");
    id = request.getParameter("id");
    pw = request.getParameter("pw");
    major = request.getParameter("major");
    protocol = request.getParameter("protocol");
    
    hobbys = request.getParameterValues("hobby");
%>

이름 : <%= name %><br>
아이디 : <%= id %><br>
비밀번호 : <%= pw %><br>
전공 : <%= major %><br>
프로토콜 : <%= protocol %><br>
취미 : 
<%
    if (hobbys != null) {
        for (int i = 0; i < hobbys.length; i++) {
            out.print(hobbys[i]);
            if (i < hobbys.length - 1) out.print(", ");
        }
    } else {
        out.print("없음");
    }
%>
<br>

</body>
</html>
