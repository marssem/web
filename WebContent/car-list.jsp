<%@page import="java.sql.*"%>
<%@page import="common.Connector"%>
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
//Connector.getConnection();
Connection con = Connector.getConnection();//로그인

Statement stmt = con.createStatement();// 판 만들기
String sql = "SELECT*FROM car";// sql작성
ResultSet rs = stmt.executeQuery(sql);//결과를 받아서 rs에 저장
%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>차명</th>
		<th>제조사</th>
		<th>색상</th>
		<th>배기량</th>
	</tr>
	<%
	while(rs.next()){//rs.next() 다음행으로 내리는 명령어
	%>
	<tr>
	<td><%=rs.getInt("num")%></td>
	<td><%=rs.getString("name")%></td>
	<td><%=rs.getString("carmaker")%></td>
	<td><%=rs.getString("color")%></td>
	<td><%=rs.getInt("cc")%></td>
	</tr>
	<%
	}
	%>
</table>
</body>
</html>