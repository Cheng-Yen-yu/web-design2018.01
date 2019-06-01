<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="getDB.jsp"%>
<html>
<body>
	<%
	 request.setCharacterEncoding("utf-8");
	 String acc="";
     String pas="";
     String add=request.getParameter("address");
	 String psd=request.getParameter("password");
	 String phone=request.getParameter("phone");
	 String mail=request.getParameter("mail"); 
    try{
           Cookie getC[]=request.getCookies();
           for(int i=0;i<getC.length;i++)
           {
               if(getC[i].getName().equals("getin"))
           	   {
                 String[] sp=getC[i].getValue().split("-");
                 acc=sp[0];
                 pas=sp[1];      
                 sql="UPDATE member SET m_password='"+psd+"',m_mail='"+mail+"',m_address='"+add+"',m_phone='"+phone+"' WHERE m_account='"+acc+"' and m_password='"+pas+"'";
				 con.createStatement().executeUpdate(sql);
				 out.write("<script language=javascript>alert('修改成功');</script>");
				 response.setHeader("refresh","0;URL=member.jsp");
				}                                                                   
			}         
		}
	catch(Exception e)
	{
		
	}       


		          
	%>
</body>
</html>