<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int age;
%>

<%
	String str = request.getParameter("age");
	age = Integer.parseInt(str);
%>

미성년입니다. 주류구매가 불가능합니다.

<a href="request.html">처음으로 이동</a>
</body>
</html>