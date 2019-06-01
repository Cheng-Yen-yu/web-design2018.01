<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="getDB.jsp"%>
<body>
	
	<%
	request.setCharacterEncoding("utf-8");
	try
	{
		String acc=request.getParameter("r_acc");
		String pas=request.getParameter("r_psd");
		String name=request.getParameter("r_name");
		String mail=request.getParameter("r_mail");
	
		if(acc==null||acc.equals("")||pas==null||pas.equals("")||name==null||name.equals("")||mail==null||mail.equals(""))
		{
			out.write("<script language=javascript>alert('帳號、密碼、姓名或電子郵件輸入錯誤');</script>");
			response.setHeader("refresh","0;URL=login.jsp");
		}
		else 
		{
			String sql2="select * from member where m_account='"+acc+"';";
			ResultSet a=con.createStatement().executeQuery(sql2);
			if(a.next())
				{
				
					out.write("<script language=javascript>alert('帳號重複');</script>");
					response.setHeader("refresh","0;URL=login.jsp");
				}
				else
				{
					sql="INSERT member(m_account,m_password,m_name,m_mail,m_level) VALUES('"+acc+"','"+pas+"','"+name+"','"+mail+"','0')";
					con.createStatement().executeUpdate(sql); 
					out.write("<script language=javascript>alert('註冊成功');</script>");
                    response.setHeader("refresh","0;URL=login.jsp");
					
				}
		}	
	}
	catch(Exception e)
	{
		out.write("<script language=javascript>alert('帳號錯誤'"+e.toString()+")</script>");

		response.setHeader("refresh","0;URL=login.jsp");
	}
		

	%>
	
</body>