<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <link rel="stylesheet" type="text/css" href="back_2.css">
</head>

<body>
    <div id="middle_back_7">
        <br>

        <!--後端葉面-->
        <div class="topic"><b>-後端介面-</b></div>
        <div style="float: left; margin-top:-4%;margin-left: 5%;"><img src="icon/search.png" style="width: 5%;"><input type="search" placeholder="請輸入訂單編號"><input type="button" value="搜尋"></div>
        <div id="back_t">
            <div class="back_left">
                <div> &nbsp;</div>
                <a href="back_member.jsp" style="color:#444444">
                    <div class="about_lable"> 會員管理</div>
                </a>
                <a href="back_product.jsp" style="color: #444444">
                    <div class="about_lable">商品管理</div>
                </a>
                <a href="back_order.jsp" style="color: black">
                    <div class="about_lable_main"> 訂單管理</div>
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
                                <td>訂單編號</td>
                                <td>收件人</td>
                                <td>收件人手機</td>
                                <td>配送地點</td>
                                <!--宅配國家+地址-->
                                <td>備註</td>
                                <!--限字數-->
                                <td>訂單明細</td>
                                <!--另啟視窗-->
                                <td>接單日期</td>
                                <td>貨品應到達日期</td>
                                <td>移除</td>
                                <td>已送件</td>
                                <!--顧客填完評論後打勾-->

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                
                                sql="select * from receiver";       //資料庫！！！
                                ResultSet tmp=con.createStatement().executeQuery(sql);
                                
                                while(tmp.next())
                                {
                                    out.println("<tr>");
                                    out.println("<td>"+tmp.getString("receipt")+"</td>");      //訂單編號
                                    out.println("<td>"+tmp.getString("m_name")+"</td>");  
                                    out.println("<td>"+tmp.getString("m_phone")+"</td>");      //手機
                                    out.println("<td style='text-align:left'>"+tmp.getString("m_address")+"</td>");      //地址
                                    out.println("<td style='text-align:left;font-size:14px;'>"+tmp.getString("content")+"</td>");  //備註
                                    out.println("<td class='read_detail' onclick=\"window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');\">"+"查看"+"</td>"); //訂單明細
                                    out.println("<td>"+tmp.getString("send")+"</td>");  //接單日期
                                    out.println("<td>"+tmp.getString("rdate")+"</td>");  //送貨日期
                                    out.println("<td>"+"<img src='icon/cancel.png'>"+"</td>");   //移除
                                    out.println("<td>"+"<img src='icon/oval.png'>"+"</td>");    //送件
                                    out.println("</tr>");

                            
                                }
                                con.close();

                            %>
                            
                            <!--<tr>
                                <td>E007</td>
                                <td>滾滾豬</td>
                                <td>0915246845</td>
                                <td style="text-align: left;">台灣320桃園市中壢區中北路200號</td>
                                <td style="text-align: left;font-size: 14px;">希望是彭于晏送件，送完貨就不用再回去了</td>
                                <td class="read_detail" onclick="window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');">查看</td>
                                <td>2018/12/20</td>
                                <td>2018/12/25</td>
                                <td><img src="icon/cancel.png"></td>
                                <td><img src="icon/oval.png"></td>
                            </tr>

                            <tr>
                                <td>E007</td>
                                <td>滾滾豬</td>
                                <td>0915246845</td>
                                <td style="text-align: left;">台灣320桃園市中壢區中北路200號</td>
                                <td style="text-align: left;font-size: 14px;">希望是彭于晏送件，送完貨就不用再回去了</td>
                                <td style="font-weight: bold;text-decoration:underline;color: blue;cursor: pointer; " onclick="window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');">查看</td>
                                <td>2018/12/20</td>
                                <td>2018/12/25</td>
                                <td><img src="icon/cancel.png"></td>
                                <td><img src="icon/oval.png"></td>
                            </tr>
                            <tr>
                                <td>E007</td>
                                <td>滾滾豬</td>
                                <td>0915246845</td>
                                <td style="text-align: left;">台灣320桃園市中壢區中北路200號</td>
                                <td style="text-align: left;font-size: 14px;">希望是彭于晏送件，送完貨就不用再回去了</td>
                                <td style="font-weight: bold;text-decoration:underline;color: blue;cursor: pointer; " onclick="window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');">查看</td>
                                <td>2018/12/20</td>
                                <td>2018/12/25</td>
                                <td><img src="icon/cancel.png"></td>
                                <td><img src="icon/oval.png"></td>
                            </tr>
                            <tr>
                                <td>E007</td>
                                <td>滾滾豬</td>
                                <td>0915246845</td>
                                <td style="text-align: left;">台灣320桃園市中壢區中北路200號</td>
                                <td style="text-align: left;font-size: 14px;">希望是彭于晏送件，送完貨就不用再回去了</td>
                               <td style="font-weight: bold;text-decoration:underline;color: blue;cursor: pointer; " onclick="window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');">查看</td>
                                <td>2018/12/20</td>
                                <td>2018/12/25</td>
                                <td><img src="icon/cancel.png"></td>
                                <td><img src="icon/oval.png"></td>
                            </tr>
                            <tr>
                                <td>E007</td>
                                <td>滾滾豬</td>
                                <td>0915246845</td>
                                <td style="text-align: left;">台灣320桃園市中壢區中北路200號</td>
                                <td style="text-align: left;font-size: 14px;">希望是彭于晏送件，送完貨就不用再回去了</td>
                                <td style="font-weight: bold;text-decoration:underline;color: blue;cursor: pointer; " onclick="window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');">查看</td>
                                <td>2018/12/20</td>
                                <td>2018/12/25</td>
                                <td><img src="icon/cancel.png"></td>
                                <td><img src="icon/oval.png"></td>
                            </tr>
                            <tr>
                                <td>E007</td>
                                <td>滾滾豬</td>
                                <td>0915246845</td>
                                <td style="text-align: left;">台灣320桃園市中壢區中北路200號</td>
                                <td style="text-align: left;font-size: 14px;">希望是彭于晏送件，送完貨就不用再回去了</td>
                               <td style="font-weight: bold;text-decoration:underline;color: blue;cursor: pointer; " onclick="window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');">查看</td>
                                <td>2018/12/20</td>
                                <td>2018/12/25</td>
                                <td><img src="icon/cancel.png"></td>
                                <td><img src="icon/oval.png"></td>
                            </tr>
                            <tr>
                                <td>E007</td>
                                <td>滾滾豬</td>
                                <td>0915246845</td>
                                <td style="text-align: left;">台灣320桃園市中壢區中北路200號</td>
                                <td style="text-align: left;font-size: 14px;">希望是彭于晏送件，送完貨就不用再回去了</td>
                               <td style="font-weight: bold;text-decoration:underline;color: blue;cursor: pointer; " onclick="window.open('window_order_detail.html','PHP.NET',config='height=450,width=450,toolbar=no,left=550,top=200');">查看</td>
                                <td>2018/12/20</td>
                                <td>2018/12/25</td>
                                <td><img src="icon/cancel.png"></td>
                                <td><img src="icon/oval.png"></td>
                            </tr>-->

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

        $('img').click(function(e) {
            //選擇一個
            $(this).toggleClass('check');
        })
    })

</script>
