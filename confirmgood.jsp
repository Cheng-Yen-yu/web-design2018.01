<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp"%>
<html>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String [] pid=null;
		String [] pname=null;
		String [] pprice=null;
		String [] pstorage=null;

		try
		{
			pid=request.getParameterValues("p_id");
			pname=request.getParameterValues("p_name");
			pprice=request.getParameterValues("p_price");
			pstorage=request.getParameterValues("p_storage");
			for(int i=0;i<pid.length;i++)
			{	
			
			sql="UPDATE goods SET p_name='"+pname[i]+"',p_originprice='"+pprice[i]+"',p_storage='"+pstorage[i]+"' WHERE p_id='"+pid[i]+"'";
			con.createStatement().executeUpdate(sql); 
			}
			out.write("<script language=javascript>alert('修改完成');</script>");
			response.setHeader("refresh","0;URL=back_product.jsp");
		
		}
		catch(Exception e)
		{
			out.write("<script language=javascript>alert('修改錯誤');</script>");
			response.setHeader("refresh","0;URL=back_product.jsp");
		}		
	

	con.close();
	%>
</body>
</html>
