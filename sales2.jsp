<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="page.html"%>
<html>

<head>
     <meta charset="utf-8">
    <title>期末專案</title>

    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" type="text/css" href="sales.css">
    <link rel="stylesheet" type="text/css" href="product.css">
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="stylesheet" type="text/css" href="nextpage.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</head>
<style>

</style>

<body>
    <div class="all_sale_container">
        <div id="middle_sale">
            <div id="container">
                <div id="sale">
                    <div id="photo_container">
                        <div id="sale_im">
                            <%
								
                                String yo=request.getParameter("p_id");
                                sql="select * from goods where p_id='"+yo+"' ;";
                                ResultSet g=con.createStatement().executeQuery(sql);
                                if(g.next())
                                {
                                    out.println("<img id='image' class='sale_photo' src='"+g.getString(10)+"'>");
                            %>
                        </div>
                            <%
                                out.println("<div id=sale_three>");
                                out.println("<img class='sale_img' onClick=\"pro_img('"+g.getString(10)+"')\" src='"+g.getString(10)+"'>");
                                out.println("<img class='sale_img' onClick=\"pro_img('"+g.getString(11)+"')\" src='"+g.getString(11)+"'>");
                                out.println("<img class='sale_img' onClick=\"pro_img('"+g.getString(12)+"')\" src='"+g.getString(12)+"'>");
                                out.println("</div>");
                                }
                            %>
                        <!--<div id="sale_three">
                            <img class="sale_img" src="img/shirt-1.png">
                            <img class="sale_img" src="img/pen-1.png">
                            <img class="sale_img" src="img/shirt-1.png">
                        </div>-->
                        <div style='clear:both;'></div>
                    </div>
                </div>
                <!--商品照片-->

                <!--側邊攔開始-->
                <div id="Sidebar">
                    <div class="sale_title">
                        <%
                            out.println("<h2>"+g.getString("p_name")+"</h2>");
                            out.println("<p>"+"商品編號："+g.getString("p_id")+"</p>");
                         
                        %>
                        <!--<h2>[設計圖樣] 聖誕 靛 藍 手繪 布花 Christmas doodle</h2>
                        <p>商品編號 Christmas-doodle-pattern</p>-->
                          <a href="#sale_common_pos">
                            <div style="font-size: 14px;float: left">商品評論(100)</div>
                        </a>
                        <div style="float: left; margin-left: 10%;"><img src="icon/star.png" title="很爛" />
                            <img src="icon/star.png" title="一般" />
                            <img src="icon/star.png" title="還好" />
                            <img src="icon/star.png" title="較好" />
                            <img src="icon/star.png" title="很好" /></div>
                        <div style='clear:both;'></div>
                        <hr>
                        <div class="sales_innertext">
                            <div style="float: left">顏色&emsp;</div>
                            <%
                                out.println("<a href='sale_white.jsp?nm="+g.getString("p_star")+"'>");
                            %>
                            <button class="white" id="1" onclick="test(1)"></button>  
                            <%
                                out.println("</a>");
                                out.println("<a href='sale_blue.jsp?nm="+g.getString("p_star")+"'>");
                            %>  
                            <button class="blue" id="2" onclick="test(2)"></button>
                            <%
                                out.println("</a>");
                                out.println("<a href='sale_pink.jsp?nm="+g.getString("p_star")+"'>");
                            %>  
                            <button class="pink" id="3" onclick="test(3)"></button>
                            <%
                                out.println("</a>");
                            %>
                                                   
                            <div style='clear:both;'></div><br>
                            <div style="float: left">尺寸&emsp;</div>
                            <form style="float: left" method="post" >
                        <input type="hidden" name="p_id" value="<%=good%>">
                                <select name="YourLocation">
                                    　<option value="S">S</option>
                                    　<option value="M">M</option>
                                    　<option value="L">L</option>
                                    　<option value="XL">XL</option>
                                </select>
                         </div>
                        <div style='clear:both;'></div><br>

                        <div>
                            　　　　<ul class="btn-numbox" style="margin-top: -20px;">
                                <li>
                                    <div>選擇數量</div>
                                </li>
                                <li style="margin-left: 10%;">
                                    <ul class="count">
                                        <li>
                                            <div id="num-jian" class="num-jian">-</div>
                                        </li>
                                        <li><input type="text" class="input-num" id="input-num" value="1" name="amount" /></li>
                                        <li>
                                            <div id="num-jia" class="num-jia">+</div>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <div class="kucun">（庫存:<%=rs2.getString("p_storage")%>）</div>
                                </li>
                            </ul>
                        </div><br>
                        <div id="tot" style="margin-top: -10px;"><b>NT$<%=rs2.getString("p_price")%></b></div>
                        <hr>
                        <button class="btn_login" style="width: 98%" type="submit" name="act" value="love">加入收藏</button><br>
                        <button class="btn_sign_up" style="width: 98%" type="submit" name="act" value="buy">加入購物車</button>
                        <hr>
                        </form><!--form end-->
                        <p style="color: darkred;text-align: center;"><b>超商取貨付款．滿千免運</b></p>
                    </div>
                </div>
            </div>
            <div style='clear:both;'></div>
            <!--側邊攔結束-->
        </div>

        <!--商品廣告-->
        <div style="padding: 7%;">
            <div id="product_introduction">
                <%
                    out.println("<img style='margin-top: 2.5%;' src='"+g.getString(13)+"'>");
                    out.println("<img style='margin: 5%;width: 50%' src='"+g.getString("p_poster2")+"'>");
                %>
                <hr style="width: 50%; margin-top: 2%;">
                <div class="sale_product_im_container">
                    <div id="product_common"><b >注意事項及洗滌方式</b></div>
                    <div style="margin-left: 33%;"id="sale_common_pos";><!--商品評價Link-->
                        <div>＊因拍攝燈光效果可能造成與實品色差，請以商品圖顏色為準。<br>
                            1.請用乾洗溶劑清洗。<br>
                            2.不可烘乾，不可漂白。<br>
                            3.如需熨燙，請以低溫墊布熨燙。<br>
                            4.穿著時，請留意避免與配件包包等他物接觸摩擦。</div>
                    </div><br>
                </div>

                <hr style="width: 80%;">
                <div id="product_common"><b>商品評價</b></div>
                <div>
                    <!--換頁-->
                    <!--單位評論-->
                    <div class="my_common">
                        <br>
                        <!--為了標頭空行-->
                        <div class="common_left">
                           <%
                                out.println(" <img src='"+g.getString(9)+"'class='common_pic'>");
                           %>
                        </div>
                        <div class="common_right">
                            <div class="common_id">訂單編號:A001</div><br>
                            <div class="common_body">
                                1990圓入手，實體顏色偏髒灰色，沒照片那麼帶藍，
                                52/162，怕M太小，特意買L尺碼，袖長剛好遮到陽谷，內穿一件長袖偏寬鬆，等冷一點再加毛衣大概會比較合身，
                                整體穿起來偏胖，如果能更有腰身就好了</div><br>
                            <div class="common_foot">
                                <div class="common_id" style="float: left">樣式尺寸:暮紅-XXL</div>
                                <div class="common_id" style="float: right">2018-12-04 08:01</div>
                                <div style='clear:both;'></div>
                            </div>
                        </div>
                        <div style='clear:both;'></div>
                        <br>
                        <hr> <br>
                    </div>
                    <!--單位評論結束-->

                    <div class="my_common">
                        <div class="common_id">訂單編號:A002</div><br>
                        <div class="common_body">
                            好看好穿又保暖 實體讚 大推</div><br>
                        <div class="common_foot">
                            <div class="common_id" style="float: left">樣式尺寸:暮紅-XXL</div>
                            <div class="common_id" style="float: right">2018-12-04 08:01</div>
                            <div style='clear:both;'></div>
                        </div>
                        <br>
                        <hr> <br>
                    </div>
                    <div class="my_common">
                        <div class="common_id">訂單編號:A003</div><br>
                        <div class="common_body">
                            比特價1480那款輕又軟穿起來 顏色款式設計質感很好 帽子毛可以再柔軟一點會更棒 買給媽媽說很滿意</div><br>
                        <div class="common_foot">
                            <div class="common_id" style="float: left">樣式尺寸:暮紅-XXL</div>
                            <div class="common_id" style="float: right">2018-12-04 08:01</div>
                            <div style='clear:both;'></div>
                        </div>
                        <br>
                        <hr> <br>
                    </div>
                    <div class="my_common">
                        <div class="common_id">訂單編號:A004</div><br>
                        <div class="common_body">
                            很溫暖，外套外面表面不是一般光滑面，有點霧面感，手感普普，內裡則是光滑面，口袋內是刷毛的，型好看毛好摸，163/46穿M+厚衣差不多剛好</div><br>
                        <div class="common_foot">
                            <div class="common_id" style="float: left">樣式尺寸:暮紅-XXL</div>
                            <div class="common_id" style="float: right">2018-12-04 08:01</div>
                            <div style='clear:both;'></div>
                        </div>
                        <br>
                        <hr> <br>
                    </div>
                    <div class="my_common">
                        <div class="common_id">訂單編號:A005</div><br>
                        <div class="common_body">材質很好👍只是這次的版型不太喜歡😟之前購買過無縫長版的人版型就很棒❤️這款的感覺袖口跟下擺都做太鬆了，毛流也有點怪怪的🙁整體穿起來真的很顯胖臃腫☹️已退貨希望可以改進😞</div><br>
                        <div class="common_foot">
                            <div class="common_id" style="float: left">樣式尺寸:暮紅-XXL</div>
                            <div class="common_id" style="float: right">2018-12-04 08:01</div>
                            <div style='clear:both;'></div>
                        </div>
                        <br>
                        <!--<hr> <br>-->
                    </div>


                    <br>

                    
                    <ul class="pagination" id="ttt">
                        <a href="#sale_common_pos">«</a>
                        <a class="active" href="#sale_common_pos">1</a>
                        <a class="test" href="#sale_common_pos">2</a>
                        <a class="test" href="#sale_common_pos">3</a>
                        <a class="test" href="#sale_common_pos">4</a>
                        <a class="test" href="#sale_common_pos">5</a>
                        <a href="#sale_common_pos">»</a>
                    </ul>
                </div>
                <!--換頁-->
                <!--評論結束空行-->
            </div>
        </div>
    </div>
</body>

</html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>

<script>
    $(function() {

        $(".test").click(function() { // 单击div元素
            $("a").removeClass("active");
            $(this).addClass("active"); // 使用children('li')获取div下的li元素，然后设置颜色为red即红色
        });

    });

	var num_jia = document.getElementById("num-jia");
    var num_jian = document.getElementById("num-jian");
    var input_num = document.getElementById("input-num");

    num_jia.onclick = function() {

        input_num.value = parseInt(input_num.value) + 1;
    };
</script>
<script>
	 num_jian.onclick = function() {

        if (input_num.value <= 1) {
            input_num.value = 1;
        } else {

            input_num.value = parseInt(input_num.value)-1;
        }

    };
</script>

<script type="text/javascript">
    function pro_img(big) {
        var id = big;
        document.getElementById("image").src=id;
    };

</script>
