<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*, java.text.*"%>
<%@ page pageEncoding="utf-8"%>
<%@include file="getDB.jsp"%>
<html>
<head>
<title>傳送中，請稍後</title>
</head>
<body>
感謝您所提供的寶貴意見，請稍後...<br>
(資料傳輸中，請勿關閉此視窗)
<%!
	String ln(String inp)
	{
		int br=0;
		while((br=inp.indexOf("\n"))!=-1)
		{
			inp=inp.substring(0,br)+"<br>"+inp.substring(br+1);
		}
		while((br=inp.indexOf(" "))!=-1)
		{
			inp=inp.substring(0,br)+"&nbsp;"+inp.substring(br+1);
		}
		return inp;
		
	}
%>
<%
  request.setCharacterEncoding("utf-8");
    try {
       
        String command="";
        
        if(con.isClosed())
           out.println("連線建立失敗");
        else { 
           
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
           String gender=request.getParameter("gender");
		       String mail=request.getParameter("fname");
           String tel=request.getParameter("lname");
           String suggest=request.getParameter("suggest");
           String content=request.getParameter("content");
		   //String item=new String(request.getParameter("item").getBytes("ISO-8859-1"),"utf-8");
           java.util.Date dt= new java.util.Date();
		   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		   String datetime=sdf.format(dt);
			
			
           command="insert guestbook (gender, mail, tel, suggesttype, content, date ) ";
           command+="value ('" + gender + "', ";
           command+="'"+mail+"', ";
           command+="'"+tel+"', ";
           command+="'"+suggest+"', ";   
           command+="'"+ln(content)+"',";
		   command+="'"+datetime+"')";
		  // command+="'"+item+"')";      
//out.println(command);
           con.createStatement().execute(command);
			out.print("<br>suggest:"+suggest+"<br>content:<br>"+content);
           con.close();

           response.sendRedirect("contact.jsp?state=s");
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }


%>
</body>
</html>
