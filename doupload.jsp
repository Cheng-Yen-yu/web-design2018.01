<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<%request.setCharacterEncoding("utf-8");%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form name="UploadForm" enctype="multipart/form-data" method="post" action="doupload.jsp">
	檔案<input type="file" name="File1" size="1" maxlength="20" /> <br>
<input type="submit" value="upload"></form>
<%
    try{
    	//把request傳入UploadTool裡
        toolkie.UploadTool upload = new toolkie.UploadTool(request);
    	//查詢是否錯誤
        String msg = upload.checkUpload();
        if (msg.length() > 0)
        {
            out.println(msg);
        }
        else 
        {
            //設定上傳路徑
            upload.setUploadDir(this.getServletContext().getRealPath(".")+"/border/");
            
            //開始上傳
            if (upload.isExtUpload("File1"))
    			out.println("<br>"+upload.getUploadParameter("File1")+"<br>");
                msg = upload.doUpload(upload.getUploadParameter("File1"),"");
    			out.println(upload.getformatname(upload.getUploadParameter("File1")));
            if (msg.length() > 0)
                out.println(msg);
            else
                out.println("上傳成功" + "<br/>");
     
        }
    }
	catch(Exception e){
		
	}
%>
 
</body>
</html>