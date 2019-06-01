<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="getDB.jsp"%>
<html>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String pid=request.getParameter("p_id");
		String pname=request.getParameter("p_name");
		String pprice=request.getParameter("p_originprice");
		String pstorage=request.getParameter("p_storage");

		sql="insert goods(p_id,p_name,p_originprice,p_storage) values('"+pid+"','"+pname+"','"+pprice+"','"+pstorage+"');";
		con.createStatement().executeUpdate(sql); 
		out.write("<script language=javascript>alert('新增商品完成');</script>");
		response.setHeader("refresh","0;URL=complete.html");
		
	%>
</body>
</html>