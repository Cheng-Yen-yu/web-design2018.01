<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>

<head>
    <title>期末專案</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="index.css">
    <link rel="stylesheet" type="text/css" href="button.css">
    <link rel="stylesheet" type="text/css" href="sales.css">
    <link rel="stylesheet" type="text/css" href="back_2.css">
    <link rel="stylesheet" href="hint.css">
</head>

<body>
    <div id="middle_back">
        <br>

        <!--後端葉面-->
        <div class="topic"><b>-後端介面-</b></div>
        <div style="float: left; margin-top:-4%;margin-left: 5%;">   
             <form action="#" method="POST">   
                <img src="icon/search.png" style="width: 5%;">
                <input type="search" id="target" name="target"  placeholder="輸入會員編號">
                <input type="submit"value="搜尋">
            </form>
        </div>
        <div id="back_t">
            <div class="back_left">
                <div> &nbsp;</div>
                <a href="back_member.jsp" style="color: black">
                    <div class="about_lable_main"> 會員管理</div>
                </a>
                <a href="back_product.jsp" style="color: #444444">
                    <div class="about_lable">商品管理</div>
                </a>
                <a href="back_order.jsp" style="color: #444444">
                    <div class="about_lable"> 訂單管理</div>
                </a>
                <a href="back_common.jsp" style="color: #444444">
                    <div class="about_lable"> 訪客回饋</div>
                </a>

            </div>


            <div class="back_right">
                <div class="inner_back">
                    <table>
                        <thead>
                            <tr>
                                <td>會員姓名</td>
                                <td>會員帳號</td>
                                <td>會員密碼</td>
                                <td>會員地址</td>
                                <td>會員信箱</td>
                                <td>刪除會員</td>
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
                               
                            %>
                            <%
                                String a=null;
                                try
                                {
                                    String tar = new String(request.getParameter("target").getBytes("ISO-8859-1"),"UTF-8");
                                    
                                    sql="SELECT * FROM member WHERE (m_account like '%"+tar+"%') OR (m_name like '%"+tar+"%') ";
                                    
                                }
                                catch(Exception e)
                                {
                                    sql="SELECT * FROM member;";
                                }
                            %>
                            <%
                               
                                ResultSet tmp=con.createStatement().executeQuery(sql);
                                int count=0;
                                while(tmp.next())
                                {
                                    out.println("<tr>");
                                    out.println("<td>"+tmp.getString("m_name")+"</td>");
                                    out.println("<td>"+tmp.getString("m_account")+"</td>");
                                    out.println("<td>"+tmp.getString("m_password")+"</td>");
                                    out.println("<td>"+tmp.getString("m_address")+"</td>");
                                    out.println("<td>"+tmp.getString("m_mail")+"</td>");
                                    out.println("<td>"+"<a href='delete.jsp?m_account="+tmp.getString("m_account")+"'"+"class='confirmation'"+">"+"<span class='hint--right' data-hint='刪除'>"+"<img src='icon/x-button.png' class='back_delete_icon'"+"</span>"+"</a>"+"</td>");
                                    out.println("</tr>");
                                    count++;
                                }
                                con.close();
                            %>
                            <!--<tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>

                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>

                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>

                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>

                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>

                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>

                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>
                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>
                            <tr>
                                <td>A0001</td>
                                <td>滾滾豬</td>
                                <td>MIDAS001</td>
                                <td>10644237</td>
                                <td>320桃園市中壢區中北路200號</td>
                                <td>MIDAS@gmail.com</td>
                                <td><img src="icon/x-button.png" class="back_delete_icon"></td>
                            </tr>-->

                        </tbody>

                    </table>


                </div>

            </div>
            <div style='clear:both;'></div>
        </div>
    </div>
</body>
  <script type="text/javascript">
    var elems = document.getElementsByClassName('confirmation');
    var confirmIt = function (e) {
        if (!confirm('確定刪除此會員？')) e.preventDefault();
    };
    for (var i = 0, l = elems.length; i < l; i++) {
        elems[i].addEventListener('click', confirmIt, false);
    }
</script>
</html>
