<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="getDB2.jsp" %>
<head><title></title></head>
<body>
<div style="position: fixed;left:0;width: 80%;height: 100%;background-color:#000000;">
<p style="color:#FFFFFF;">董哥好帥</p>

</div>

<div style="position: fixed;left:80%;width: 20%;height: 100%;background-color:#605A56;">
<%
String acc="";
String pas="";
try{
	Cookie getC[]=request.getCookies();
	for(int i=0;i<getC.length;i++)
	{
		if(getC[i].getName().equals("getin"))
		{
			String[] sp=getC[i].getValue().split("-");
			acc=sp[0];
			pas=sp[1];
		}
	}
}catch(Exception e)
{

}
if(acc==null||acc.equals("")||pas==null||pas.equals(""))
	{
%>
	<form action="login.jsp" method="post">
	帳號:<input type="text" name="acc"></input><br>
	密碼:<input type="password" name="pas"></input><br>
	<input type="submit" value="確認" style="align:center;"></input>
	<input type="button" value="註冊" onclick="location.href='register.jsp'">
	</form>
<%
	}
	else
	{
		sql="SELECT m_name FROM use_midas.mid_member WHERE m_account='"+acc+"' and m_password='"+pas+"'";
		ResultSet tmp=con.createStatement().executeQuery(sql);
		if(tmp.next())
		{
			out.print(tmp.getString("m_name")+"安安");
		}
	}
%>
<input type="button" value="登出" onclick="location.href='logout.jsp'">
</div>
</body>
</html>