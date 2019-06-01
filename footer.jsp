
<%@page pageEncoding="utf-8"%>
<html>

<head>
    <meta charset="utf-8">
    <title>期末專案</title>


    <link rel="stylesheet" type="text/css" href="sales.css">
    <link rel="stylesheet" type="text/css" href="product.css">
    <link rel=stylesheet type="text/css" href="index.css">
</head>

<footer>


    <div style="margin-left: 90px;margin-right: 90px;">
        <br>
        <div class="footer_row">
            <div class="footer_column">
                <p>
                    <b>布行文創｜NOTHANKS for 設計師</b><br>
                    &nbsp;&nbsp;&nbsp;&nbsp;╳<br>
                    專屬設計師的產品發表平台，
                    多種單件製造產品線。
                    恣意創作，自由揮灑。<br></p>
                <hr>
                <%
                    //String curr= application.getAttribute("counter").toString();
                    //int ncounter= Integer.parseInt(curr);                  
                        //ncounter++;
                    //application.setAttribute("counter",String.valueOf(ncounter));
                    //out.print("<p>"+"<b>"+"已瀏覽次數："+String.valueOf(ncounter)+"</b>"+"</p>");
					try{
					ResultSet rs0= con.createStatement().executeQuery("select * from counter");
					rs0.next();
					int count1= Integer.parseInt(rs0.getString("count"));
					if(session.isNew())
					{
						count1++;
						con.createStatement().executeUpdate("update counter set count='"+count1+"'");
					}
					out.print("<p>"+"<b>"+"已瀏覽次數："+count1);
                    }
                    catch(Exception e){out.print(e.toString());}
                %>  
                
               
            </div>
            <div class="footer_column">
                <p style="margin-left: 30%;">
                    <b> About us ╳</b><br>

                    <a href="about_us.jsp"style="text-decoration:none;color: white;">關於我們</a><br>
                    <a href="about_fundation.jsp"style="text-decoration:none;color: white;">成立宗旨</a><br>
                    <a href="about_product.jsp"style="text-decoration:none;color: white;">產品理念</a><br>
                    <a href="about_group.jsp"style="text-decoration:none;color: white;">成員介紹</a><br>
                    <a href="contact.jsp"style="text-decoration:none;color: white;">聯絡我們</a></p>
            </div>
            <div class="footer_column">
                <p style="margin-left: 30%;">
                    <b>Product ╳</b><br>
                    <a href="product.jsp"style="text-decoration:none;color: white;">包袋總覽</a><br>
                   <a href="product.jsp"style="text-decoration:none;color: white;">文具用品</a><br>
                    <a href="product.jsp"style="text-decoration:none;color: white;">衣著總覽</a> <br>

            </div>
            <div class="footer_column">
                <p style="margin-left: 30%;">
                    <b>Service ╳</b><br>
                    <a href="member.jsp"style="text-decoration:none;color: white;">會員中心</a><br>
                    <a href="shopcart.jsp"style="text-decoration:none;color: white;">我的購物車</a><br>
                    <a href="love.jsp"style="text-decoration:none;color: white;">追蹤清單</a><br>
                    <a href="shopping_line.jsp"style="text-decoration:none;color: white;">購物說明</a><br>
                    
                   
            </div>
            <div class="footer_column">
                <p style="width: 130%;">
                    <a href="index.jsp"> <img src="img/Midas.png"></a>
                    </p>
            </div>
        </div>
        <div>
        </div>
    </div>
    <p style="text-align: center"> 2018 YENYUCHENG. ALL RIGHTS RESERVED.</p>
</footer>
<div>
    <a onclick="window.scrollTo(0,0);return false;"><img src="icon/up.png" class="top_up"></a>
</div>
