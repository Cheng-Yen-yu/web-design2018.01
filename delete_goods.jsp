<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="getDB.jsp"%>
<%	
	String gd=request.getParameter("p_id");
	sql="delete from goods where p_id='"+gd+"';";
	con.createStatement().executeUpdate(sql);
	out.write("<script>alert('刪除商品成功');</script>");
    response.setHeader("refresh","0;URL=back_product.jsp");
%> 