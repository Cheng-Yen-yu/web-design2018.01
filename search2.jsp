<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>

<head>
    <meta charset="utf-8">

    <title>期末專案</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" type="text/css" href="product.css">
    <link rel="stylesheet" type="text/css" href="search.css">
    <link rel="stylesheet" type="text/css" href="hover.css">
</head>

<body>
    <div id="middle-product">
        <div class="search">
           <img class="search_img_2" src="img/light.png">
            <div class="search_form">
                <form action="#" method="POST">
                    <img class="search_icon" src="icon/search.png" />&nbsp;
                    <input id="target" name="target" type="text" placeholder="type something" />&nbsp;
                    <button class="search_button">search!</button>
                </form>
            </div>
            <img class="search_img" src="img/bg.png">
            <div style='clear:both;'></div>
        </div>
        <div class="search_topic"><b>- 搜尋結果 -</b></div>
        <div style="margin:3%;">
            <div class="index_protuct">
                <%
                ResultSet rs=null;
                try
                {
                    String tar = new String(request.getParameter("target").getBytes("ISO-8859-1"),"UTF-8");
                    
                    sql="SELECT * FROM goods WHERE (p_name like '%"+tar+"%')";
                    
                }
                catch(Exception e)
                {
                    sql="SELECT * FROM goods;";
                }
                %>
                <%
                
                rs=con.createStatement().executeQuery(sql);
                int count=0;
                while(rs.next())
                {
                   out.println("<div class='icontainer-fuild'>");
                   out.println("<div class='row'>");
                   out.println("<div class='inner_product'>");
                   out.println("<div class='hovereffect'>");
                   out.println("<a href='sales.jsp?p_id="+rs.getString("p_id")+"'>");
                   out.println("<img class='product_1' src='"+rs.getString(9)+"' />");
                   out.println("<div class='overlay'>");
                    out.println("<p>");
                   out.println("<s>"+"原價NT$ "+rs.getString(8)+"</s>");
                   out.println("活動價 NT$"+rs.getString(4)+"</p>");
                   out.println("</div>");
               	   out.println("</a>");
                   out.println("</div>");
                   out.println("<div class='product_text'>"+rs.getString(2)+"</div>");
                   out.println("<button class='join_cart_bt'>"+"加入購物車"+ "</button>");
                   out.println("<button class='join_love_bt'>"+"加入追蹤 ❤"+ "</button>");
                   out.println("<div>"+"&nbsp;"+"</div>");
                   out.println("</div>");
                   out.println("</div>");
                   out.println("</div>");
                   count++;
                }
             
                 con.close();
                
              

                %>

               <!-- <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/book-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/shirt-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/book-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/shirt-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/book-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/shirt-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/book-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/shirt-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/book-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <a href="sales.jsp">
                        <img class="product_1" src="img/shirt-1.png" /></a>
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>


                <div class="container-fuild">
                    <div class="row">
                        <div class="inner_product">
                            <div class="hovereffect">
                                <img class="product_1" src="img/book-1.png" />
                                <div class="overlay">

                                    <p>
                                        <s>原價NT$ 490</s> 活動價 NT$370
                                    </p>
                                </div>
                            </div>
                            
                            <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                            <div>&nbsp;</div>
                        </div>
                    </div>
                </div>-->
                <div style='clear:both;'></div>
            </div>
        </div>
    </div>
</body>
