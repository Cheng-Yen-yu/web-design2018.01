<!--↓↓↓↓↓此為jsp格式請勿更改↓↓↓↓↓-->
<!--<%@page pageEncoding="utf-8"%>-->
<!--↑↑↑↑↑此為jsp格式請勿更改↑↑↑↑↑-->

<!DOCTYPE html>
<!--基本元素複製區塊標頭-->
<html>

<head>
    <title>期末專案</title>
    <meta charset="utf-8">
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="index.css">
    <link rel="stylesheet" type="text/css" href="button.css">
    <link rel="stylesheet" type="text/css" href="sales.css">
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="stylesheet" type="text/css" href="back.css">
</head>

<body>
    <div id="middle_back_7">
        <br>

        <!--後端葉面-->
        <div class="topic"><b>-後端介面-</b></div>

        <div id="back_t">
            <div class="back_left">
                <div> &nbsp;</div>
                   <a href="back_member.jsp" style="color:#444444"><div class="about_lable"> 會員管理</div></a>
                <a href="back_product.jsp" style="color: #444444"><div class="about_lable">商品管理</div></a>
                <a href="back_order.jsp" style="color: #444444"><div class="about_lable"> 訂單管理</div></a>
                <a href="back_common.jsp" style="color: black"><div class="about_lable_main"> 訪客回饋</div></a>

            </div>
            <div class="back_right">
                <div class="inner_back">
                    <table>
                        <thead>
                            <tr>
                                <td>訪客性別</td>
                                <td>意見分類</td>
                                <td>意見內容</td>
                                <td>訪客電話</td>
                                <td>訪客信箱</td>
                                <td>已處理</td>
                            </tr>
                        </thead>
                        <tbody>
                                <%
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
                                        sql="SELECT * FROM member WHERE m_account='"+acc+"' and m_password='"+pas+"'";
                                        ResultSet man=con.createStatement().executeQuery(sql);
                                        man.next();
                                        if(man.getString("m_level").equals("1"))
                                        {

                                        }
                                        else
                                        {
                                            out.write("<script language=javascript>alert('非管理者，無法進入');</script>");
                                            response.setHeader("refresh","0;URL=index.jsp");
                                        }
                                    }
                                catch(Exception e)
                                    {
                                        out.write("<script language=javascript>alert('非管理者，無法進入');</script>");
                                        response.setHeader("refresh","0;URL=index.jsp");
                                    }
                               
                                sql="select * from guestbook";
                                ResultSet tmp=con.createStatement().executeQuery(sql);
                                
                                while(tmp.next())
                                {
                                    out.println("<tr>");
                                    out.println("<td>"+tmp.getString("gender")+"</td>");          //性別
                                    out.println("<td>"+tmp.getString("suggesttype")+"</td>");       //選項
                                    out.println("<td style='text-align:left;width:50%'>"+tmp.getString("content")+"</td>");    //內容    
                                    out.println("<td>"+tmp.getString("tel")+"</td>");     //電話
                                    out.println("<td>"+tmp.getString("mail")+"</td>");      
                                    out.println("<td>"+"<img id='el' src='icon/oval.png'>"+"</td>");            //信箱
                                    out.println("</tr>");

                            
                                }
                                con.close();

                            %>
                          
                        </tbody>

                    </table>


                </div>

            </div>
            <div style='clear:both;'></div>
        </div>
    </div>
</body>


</html>
<script>
    $(document).ready(function() {
        //選擇東西，套用效果

        $('img#el').click(function(e) {
            //選擇一個
            $(this).toggleClass('check');
        })
    });

</script>
