<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.Connector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] nums = request.getParameterValues("ch");// 몇 개가 들어올지 모르기에 nums로 받았다.

Connection conn = Connector.getConnection();
String sql = "delete from user where num=?";
PreparedStatement ps = conn.prepareStatement(sql);
for(String num:nums){
	ps.setInt(1, Integer.parseInt(num));
	ps.executeUpdate();
}
%>