<%@page import="common.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");
String name = request.getParameter("name");
String id = request.getParameter("id");

Connection con = Connector.getConnection();
String sql = "update user";
sql += " set name=?,";
sql += " id=?";
sql += " where num=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, num);
ps.setString(2, id);
ps.setInt(3,Integer.parseInt(num));
ps.executeUpdate();
%>
<script>
	location.href="/web/user/user-list.jsp";
</script>
