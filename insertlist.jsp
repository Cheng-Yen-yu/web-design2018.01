<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="getDB.jsp"%>
<%request.setCharacterEncoding("utf-8");%>
<html>
<body>
<%	

String acc=null;
String pas=null;
String[] idd=null;
String[] number=null;
String name=null;
String mobile=null;
String address=null;
String times=null;
String country=null;
String totalprice=null;
ResultSet rs=null;
int rr=0;


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
	idd=request.getParameterValues("pdid");
	number=request.getParameterValues("amount");
	name=request.getParameter("name");
	mobile=request.getParameter("phone");
	address=request.getParameter("address");
	times=request.getParameter("rdate");
	country=request.getParameter("map");
	totalprice=request.getParameter("totalprice");

	}catch(Exception e)
	{}


	if(acc==null||acc.equals("")||pas==null||pas.equals(""))
	{
		out.write("<script language=javascript>alert('請先登入');</script>");
		response.setHeader("refresh","0;URL=login.jsp") ;
	}
	else
	{
		Random rd=new Random();
		rr=rd.nextInt(89999)+10001;
		boolean gogo=true;
		while(gogo)
		{
			sql="select * from list_shopping where l_idd='"+rr+"' ";
			rs=con.createStatement().executeQuery(sql);
			if(rs.next())
			{
				rr=rd.nextInt(89999)+10001;

			}
			else
			{
				gogo=false;
			}
		}
	
		for(int i=0;i<idd.length;i++)
			{
				sql="INSERT INTO list_shopping (p_id,l_number,m_account,l_name,l_address,l_cellphone,delivery_time,l_country,l_idd,totalprice) VALUES ('"+idd[i]+"', '"+number[i]+"', '"+acc+"', '"+name+"', '"+address+"', '"+mobile+"','"+times+"','"+country+"','"+rr+"','"+totalprice+"');";
				con.createStatement().executeUpdate(sql);
				sql="select p_storage,p_hot from goods where p_id='"+idd[i]+"';";
				rs=con.createStatement().executeQuery(sql);
				rs.next();
				sql="UPDATE goods SET p_storage = '"+(Integer.valueOf(rs.getString("p_storage"))-Integer.valueOf(number[i]))+"' WHERE (p_id = '"+idd[i]+"');";
				con.createStatement().execute(sql);
				sql="UPDATE goods SET p_hot = '"+(Integer.valueOf(rs.getString("p_hot"))+Integer.valueOf(number[i]))+"' WHERE (p_id = '"+idd[i]+"');";
				con.createStatement().execute(sql);
			}
			//sql="SELECT * FROM love,buylist where buylist.m_account=love.m_account and buylist.m_account='"+acc+"';";
			sql="SELECT * FROM buylist where m_account='"+acc+"'";
			rs=con.createStatement().executeQuery(sql);
			while(rs.next())
			{
				sql="DELETE FROM buylist WHERE (p_id ='"+rs.getString("p_id")+"');";
				con.createStatement().execute(sql);
			}
			response.setHeader("refresh","0;URL=finish.jsp?id="+rr+"") ;

	}

 	con.close();
	
	
%>

</body>
</html>