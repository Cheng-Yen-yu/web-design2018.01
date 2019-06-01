<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>

<head>
    <meta charset="utf-8">

    <title>期末專案</title>
    <link rel="stylesheet" type="text/css" href="index.css">
    <link rel="stylesheet" type="text/css" href="product.css">
    <link rel="stylesheet" type="text/css" href="hover.css">
</head>

<body>
    <div id="middle-product" style="padding: 0.5%;">
        <div class="topic"><b>桃花朵朵名片夾</b></div>
        <div style="margin:2%;padding:1%;">
            <div class="index_product">
              <%
                request.setCharacterEncoding("utf-8");
                sql="SELECT * FROM goods WHERE (p_name like '%桃%')";
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
             
                 con.close();

              %>
                <div style='clear:both;'></div>

              <!--  <div class="inner_product">
                    <img class="product_1" src="img/book-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <img class="product_1" src="img/shirt-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                      <div>&nbsp;</div>
                </div>
                     <div class="inner_product">
                    <img class="product_1" src="img/book-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <img class="product_1" src="img/shirt-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                      <div>&nbsp;</div>
                </div>
                           <div class="inner_product">
                    <img class="product_1" src="img/book-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <img class="product_1" src="img/shirt-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                      <div>&nbsp;</div>
                </div>
                           <div class="inner_product">
                    <img class="product_1" src="img/book-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <img class="product_1" src="img/shirt-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                      <div>&nbsp;</div>
                </div>
                 <div class="inner_product">
                    <img class="product_1" src="img/book-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                    <div>&nbsp;</div>
                </div>
                <div class="inner_product">
                    <img class="product_1" src="img/shirt-1.png" />
                    <div class="product_text">迪士尼系列毛圈圓領衫 </div>
                    <div class="product_price">NT$ 490 活動價 NT$370 </div>
                      <div>&nbsp;</div>
                </div>
            -->
              


            </div>
        </div>
    </div>
</body>
