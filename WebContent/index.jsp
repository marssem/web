
<%@page import="java.util.ArrayList"%>
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
List<String> strList = new ArrayList<>();
strList.add("haha");
strList.add("hoho");
for(String str:strList){
	out.println(str+"<br>");
}
%>
</body>
</html>