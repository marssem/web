<%@page import="common.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Connection con =  Connector.getConnection();
	Statement stmt = con.createStatement();
	String sql = "SELECT*FROM USER";
	ResultSet rs = stmt.executeQuery(sql);
%>
<a href="user-insert.jsp"><button>회원정보입력</button></a>
<form action="/web/user/user-delete.jsp">
<button>삭제</button>
<table border="1">
	<tr>
		<th><input type="checkbox" id="all" onclick="checkAll()"></th>
		<th>번호</th>
		<th>이름</th>
		<th>아이디</th>
	</tr>
	<%
	while(rs.next()){
	%>
	<tr>
		<td><input type="checkbox" name="ch" value="<%=rs.getInt("num")%>"></td>
		<td><a href="/web/user/user-update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getInt("num") %></a></td>
		<td><a href="/web/user/user-update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("NAME") %></a></td>
		<td><a href="/web/user/user-update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("id") %></a></td>
	</tr>
<%
}
 %>
 </table>
 </form>
 <script>
 	function checkAll(){
 		var obj = document.getElementById('all');
 		var objs = document.getElementsByName('ch');
 		for(var i=0;i<objs.length;i++){
 			objs[i].checked = obj.checked;
 		}
 	}
 </script>
</body>
</html>