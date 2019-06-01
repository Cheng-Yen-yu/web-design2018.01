<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>

<head>
    <title>期末專案</title>
    <meta charset="utf-8">

    <link rel="stylesheet" type="text/css" href="index.css">
    <link rel="stylesheet" type="text/css" href="nav.css">
    <link rel="stylesheet" type="text/css" href="button.css">
    <link rel="stylesheet" type="text/css" href="group_photo_hover.css">
    <link rel="stylesheet" type="text/css" href="pic_cls.css">
     <link rel="stylesheet" type="text/css" href="hover.css">
</head>
<style>

</style>

<body>

    <!--幻燈片-->
    <div style="margin-top:125px; position:relative;">
        <div class="slideshow-container">
            <div class="mySlides fade">
                <img src="img/poster1.png" style="width:100%"></div>
            <div class="mySlides fade">
                <img src="img/poster2.png" style="width:100%"></div>
            <div class="mySlides fade">
                <img src="img/poster3.png" style="width:100%"></div>

            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>
        </div><br>
        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>
    </div>
    <!--幻燈片-->


    <br>
    <div id="middle" style="padding: 0.5%;"><br>
        <div class="topic"><b>-人氣注目-</b></div>
        <div style="text-align: center; ">

            <div class=index_protuct>
                <%
                    sql="select * from goods where p_storage between '1' and '10'";
                    ResultSet rs=con.createStatement().executeQuery(sql);
                    int count=0;
                   while(rs.next())
                {

                  out.println("<div class='icontainer-fuild'>");
                   out.println("<div class='row'>");
                   out.println("<div class='inner_product'>");
                   out.println("<div class='hovereffect' style='text-align: center;height:auto'>");
                   out.println("<a href='sales.jsp?p_id="+rs.getString("p_id")+"'>");
                   out.println("<img class='product_1' src='"+rs.getString("p_image")+"' />");

                   out.println("<div class='overlay'>");
                   out.println("<p>");
                   out.println("<s>"+"原價NT$ "+rs.getString("p_price")+"</s>");
                   out.println("活動價 NT$"+rs.getString("p_originprice")+"</p>");

                   out.println("</div>");
                   out.println("</a>");
                   out.println("</div>");
                   out.println("<div class='product_text'>"+rs.getString("p_name")+"</div>");
                   out.println("<div style='align=center'><a href='sales.jsp?p_id="+rs.getString("p_id")+"&act=buy&YourLocation=S&amount=1&outlink=2'>");
                   out.println("<button class='join_cart_bt'>"+"加入購物車"+ "</button></a>");
                   out.println("<a href=''>");
                   out.println(" <a href='sales.jsp?p_id="+rs.getString("p_id")+"&act=love&YourLocation=S&amount=1&outlink=2'>");
                   out.println("<button class='join_love_bt'>"+"加入追蹤 ❤"+ "</button></a></div>");
                   out.println("<div>"+"&nbsp;"+"</div>");
                   out.println("</div>");
                   out.println("</div>");
                   out.println("</div>");
                   count++;
               }
             

                %>

                <div style='clear:both;'></div>
            </div>
            <img src="img/post4.png" id="real" alt="<b>新年試手氣！週週抽現金紅包、拿大獎
　一元復始，萬象更新。</b><br><br>2019年在十二生肖中屬於豬年，是中國人眼中的吉祥年。<br>隨著農曆年節的腳步逼近，你準備好試試手氣、贏得現金紅包了嗎？<br>趕快來參加bo shing舉辦的迎新活動，只要在今年1/31前，<br>單筆購買bo shing滿6000元，就有一次抽紅包、賺現金機會。<br>而且紅包週週抽、週週送，讓你豬年一開始就有機會好運連連！
">
            <div class="motai" id="mo">
                <span class="close_1" id="close">×</span>
                <img class="motaiimg" id="moimg">
                <div id="caption"></div>
            </div>
            <div class="topic"><b>-產品一覽-</b></div>
            <div style="text-align: center ;">
                <!--hover做動畫-->
                <div class=index_protuct>

                    <div class="inner_product">
                        <a href="p_bag.jsp">
                            <div class="group_card">
                                <img class="product_1 group_img" src="img/bag.png" />
                                <div class="group_info">
                                    <p><b>包</b><br>
                                        - PACKET -</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="inner_product">
                        <a href="p_bag.jsp">
                            <div class="group_card">
                                <img class="product_1 group_img" src="img/pac.png" />
                                <div class="group_info">
                                    <p><b>袋</b><br>
                                        - BAG -</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="inner_product">
                        <a href="p_state.jsp">
                            <div class="group_card">
                                <img class="product_1 group_img" src="img/pen.png" />
                                <div class="group_info">
                                    <p><b>文具</b><br>
                                        - SUPPLY -</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="inner_product">
                        <a href="p_clothe.jsp">
                            <div class="group_card">
                                <img class="product_1 group_img" src="img/cloth.png" />
                                <div class="group_info">
                                    <p><b>服飾</b><br>
                                        - CLOTHES -</p>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div style='clear:both;'></div>
                </div>
            </div>
        </div>
    </div>
    <!--基本元素複製區塊頁尾(原先的檔案已移動到footer.html)(檔案內仍須加上css的link)-->

</body>


</html>

<script>
    /*按鈕*/
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) {
            slideIndex = i
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
    

    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 4000); // 切换时间为 2 秒
    }



    /*廣告圖*/
    var motai = document.getElementById('mo')
    var moimg = document.getElementById("moimg")
    var realimg = document.getElementById("real")
    var caption = document.getElementById("caption")
    realimg.onclick = function() {
        motai.style.display = "block"
        moimg.src = this.src
        caption.innerHTML = this.alt
    }
    var span = document.getElementById("close");
    span.onclick = function() {
        motai.style.display = "none";
    }

</script>
