
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	<%@ include file="getDB.jsp"%>
	<%request.setCharacterEncoding("utf-8");%>
<html>
<body>
<%	
String l_id_str=request.getParameter("l_idd");
String star_str= request.getParameter("stars");
String comment_str=request.getParameter("comment");

			  sql="UPDATE shop.list_shopping SET l_status = '6', message = '"+comment_str+"' WHERE (l_id = '"+l_id_str+"');";
				con.createStatement().execute(sql);
					
				 con.close();
		out.write("<script language=javascript>alert('感謝評論');</script>");
		
		response.setHeader("refresh","0;URL=member.jsp") ;
con.close();
	
%>

</body>
</html>