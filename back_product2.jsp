<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>

<head>
    <title>期末專案</title>
    <link rel="stylesheet" type="text/css" href="index.css">
    <link rel="stylesheet" type="text/css" href="back.css">
    <link rel="stylesheet" type="text/css" href="button.css">
    <link rel="stylesheet" type="text/css" href="sales.css">
    <link rel="stylesheet" href="hint.css">


    <link rel="stylesheet" type="text/css" href="back.css">
</head>

<body>
    <div id="middle_back">
        <br>
        <div class="topic"><b>-後端介面-</b></div>
        <!--後端葉面-->
        <div>
               
               
                <div style="float: left; margin-top:-4%;margin-left: 5%;">
                    <form action="#" method="POST">   
                    <img src="icon/search.png" style="width: 5%;">
                    <input type="search" id="target" name="target"  placeholder="輸入商品編號">
                    <input type="submit"value="搜尋">
                </form>
        </div>
        <div style='clear:both;'></div>
        <div id="back_t">
            <div class="back_left">
                <div> &nbsp;</div>
                <a href="back_member.jsp" style="color:#444444">
                    <div class="about_lable"> 會員管理</div>
                </a>
                <a href="back_product.jsp" style="color: black">
                    <div class="about_lable_main">商品管理</div>
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
                                <td>安全庫存</td>
                                <td>商品編號</td>
                                <td>商品名稱</td>
                                <td>商品價錢</td>
                                <td>庫存數量</td>
                                <td>商品圖片</td>
                                <td>刪除商品</td>
                            </tr>
                        </thead>
                        <tbody>
                           
                            <%
                            try{
                                    try
                                    {
                                        String tar = new String(request.getParameter("target").getBytes("ISO-8859-1"),"UTF-8");       
                                        sql="SELECT * FROM goods WHERE (p_id like '%"+tar+"%') OR (p_name like '%"+tar+"%')";
                                    }
                                    catch(Exception e)
                                    {
                                        sql="SELECT * FROM goods;";

                                    }

                                    ResultSet tmp=con.createStatement().executeQuery(sql);
                                 %>
                                  <form action="confirmgood.jsp" method="POST">
                                  <%
                                    int count=0;
                                    while(tmp.next())
                                    {
                                        String i=tmp.getString("p_id");
                                        out.println("<tr>");
                                        if(tmp.getInt("p_storage")>50)
                                        {
                                            out.println("<td class='td_width_10'>"+"<img src='icon/smile.png' class='td_width_30'>"+"</td>");
                                        }
                                        else
                                        {
                                            out.println("<td class='td_width_10'>"+"<img src='icon/exclamation-mark.png' class='td_width_30'>"+"</td>");
                                        }
                                        out.println("<td>"+"<input type='text' name='p_id' class='td_width_80' placeholder='商品編號' value='"+tmp.getString("p_id")+"'>"+"</td>");
                                        out.println("<td class='td_width_20'>"+"<input type='text' name='p_name' placeholder='商品名稱' value='"+tmp.getString("p_name")+"'>"+"</td>");
                                        out.println("<td>"+"<input type='text' name='p_price' class='td_width_80' placeholder='商品價錢' value='"+tmp.getString("p_price")+"'>"+"</td>");
                                        out.println("<td>"+"<input type='text' name='p_storage' class='td_width_80' placeholder='商品庫存' value='"+tmp.getString("p_storage")+"'>"+"</td>");
                                        out.println("<td class='td_width_20'>"+
                                        "<img src='"+tmp.getString(10)+"' class='td_width_20'>"+
                                        "<img src='"+tmp.getString(11)+"' class='td_width_20'>"+
                                        "<img src='"+tmp.getString(12)+"' class='td_width_20'>"+"</td>");
                                        out.println("<td class='td_width_10'>"+"<a href='delete_goods.jsp?p_id="+tmp.getString("p_id")+"'"+"class='confirmation'"+">"+"<span class='hint--bottom' data-hint='刪除'>"+"<img src='icon/x-button.png' class='td_width_30'>"+"</span>"+"</a>"+"</td>");

                                        count++;
                                      
                                    }

                                    %>
                                      
                                      <input type="image" class="back_p_submit" src="icon/submit.png">
                                      </form>
                                    <%                                    
                                }
                                catch(Exception err)
                                {
                                    out.write("<script>alert('查無此商品');</script>");
                                    response.setHeader("refresh","0;URL=back_product.jsp");
                                }
                                con.close();
                            %>
                           
                             <img src="icon/add.png" class="back_p_add" onclick="window.open('window_add_product.jsp','PHP.NET',config='height=450,width=800,toolbar=no,left=350,top=150');">

                            <!--
                            <tr>
                                <td class="td_width_10"><img src="icon/exclamation-mark.png" class="td_width_30"></td>
                                <td>B0001</td>
                                <td>迪士尼系列毛圈圓領衫</td>
                                <td>$499</td>
                                <td>32</td>
                                <td class="td_width_30">
                                    <img src="icon/list.png" class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20"></td>

                                <td class="td_width_10"><img src="icon/x-button.png" class="td_width_30"></td>
                            </tr>

                            <tr>
                                <td class="td_width_10"><img src="icon/smile.png" class="td_width_30"></td>
                                <td class="td_width_10">B0001</td>
                                <td class="td_width_20"><input type="text" placeholder="迪士尼系列毛圈圓領衫"></td>
                                <td><input type="text" class="td_width_80" placeholder="$799"></td>
                                <td><input type="text" class="td_width_80" placeholder="32"></td>
                                <td class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20"></td>
                                <td class="td_width_10"><img src="icon/x-button.png" class="td_width_30"></td>
                            </tr>

                            <tr>
                                <td class="td_width_10"><img src="icon/smile.png" class="td_width_30"></td>
                                <td><input type="text" class="td_width_80" placehoder="A0012"></td>
                                <td class="td_width_20"><input type="text" placeholder="迪士尼系列毛圈圓領衫"></td>
                                <td><input type="text" class="td_width_80" placeholder="$799"></td>
                                <td><input type="text" class="td_width_80" placeholder="32"></td>
                                <td class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20">
                                    <img src="icon/list.png" class="td_width_20"></td>
                                <td class="td_width_10"><img src="icon/x-button.png" class="td_width_30"></td>
                            </tr>
                            -->

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
        if (!confirm('確定刪除此商品?')) e.preventDefault();
    };
    for (var i = 0, l = elems.length; i < l; i++) {
        elems[i].addEventListener('click', confirmIt, false);
    }
</script>
   

</html>
