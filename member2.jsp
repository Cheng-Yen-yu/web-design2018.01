<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<head>
    <meta charset="utf-8">

    <title>期末專案</title>

    <link rel="stylesheet" type="text/css" href="contact.css">
    <link rel="stylesheet" type="text/css" href="member.css">
    <link rel="stylesheet" type="text/css" href="sales.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>


<body>
    <div style="margin-top:5%; ">
        <div class="member_all">
            <div class="tabs">
                <ul style='list-style-type:none;' class="tabs-nav">
                    <li><a class="tab_a" href="#tab-1">更改會員資料</a></li>
                    <li><a class="tab_a" href="#tab-2">我的購物紀錄</a></li>
                </ul>
                <div class="tabs-stage">
                    <div id="tab-1" style="margin-left: 15%;">
                      
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
                                       
                                    }
                                catch(Exception e)
                                    {

                                    }
                            %>
                       <form action="m_data.jsp" method="POST">
                            <%
                               sql="SELECT * FROM member WHERE m_account='"+acc+"'and m_password='"+pas+"'";
                               ResultSet tmp=con.createStatement().executeQuery(sql);
                                        if(tmp.next())
                                        {
                                                   //out.println("<form action='m_data.jsp' method='POST'>");
                                                   out.println("<strong>");
                                                   out.println("<p class='label'>"+"1/會員名稱："+tmp.getString("m_name")+"</p>"+"<br>");
                                                   out.println("</strong>");
                                                   out.println("<strong>");
                                                   out.println("<p class='label'>"+"2/信箱："+"</p>");
                                                   out.println("<input type='text' value='"+tmp.getString(6)+"'id='mail'"+"name='mail'"+"placeholder='更改你的信箱 ( ๑ > ω •́  )۶'"+"<br>");
                                                   out.println("</strong>");
                                                   out.println("<strong>");
                                                   out.println("<p class='label'>"+"3/電話："+"</p>");
                                                   out.println("<input type='text' value='"+tmp.getString(5)+"'id='phone'"+"name='phone'"+"placeholder='更改你的電話 ( ๑ > ω •́  )۶'"+"<br>");
                                                   out.println("</strong>");
                                                   out.println("<strong>");
                                                   out.println("<p class='label'>"+"4/地址："+"</p>");
                                                   out.println("<input type='text' value='"+tmp.getString(7)+"'id='address'"+"name='address'"+"placeholder='更改你的地址 ( ๑ > ω •́  )۶'"+"placeholder='更改你的信箱 ( ๑ > ω •́  )۶'"+"<br>");
                                                   out.println("</strong>");
                                                   out.println("<strong>");
                                                   out.println("<p class='label'>"+"5/密碼："+"</p>");
                                                   out.println("<input type='text' value='"+tmp.getString(2)+"'id='password'"+"name='password'"+"placeholder='更改你的信箱( ๑ > ω •́  )۶'"+"<br>"+"<br>");
                                                   out.println("</strong>");
                                                   out.println("<input type='submit' value='更改資料' class='member_button_2'>");
                                                   //out.println("</form>");
                                        } 
                                        else
                                        {
                                           //銷毁session：
                                           session.invalidate();
                                            //清除cookie：
                                            try{
                                                    Cookie getC[]=request.getCookies();
                                                    for(int i=0;i<getC.length;i++)
                                                    {
                                                      if(getC[i].getName().equals("getin"))
                                                      {
                                                        getC[i].setMaxAge(0);
                                                        response.addCookie(getC[i]);
                                                        response.sendRedirect("index.jsp");
                                                      }
                                                    }
                                                }
                                              catch(Exception e)
                                              {

                                              }
                                          out.write("<script language=javascript>alert('請登入');</script>");
                                          response.setHeader("refresh","0;URL=login.jsp");

                                         
                                        }
                            %>
                        </form>
                    </div>
                    <div id="tab-2">
                            <!--商品評論重複格-->
                            <%
                            //sql="SELECT * FROM list_shopping,product where l_status=5 and list_shopping.p_id=product.p_id and list_shopping.m_account='"+acc+"' order by l_id DESC;";
                                sql="select * from list_shopping,goods where list_shopping.m_account='"+acc+"'and goods.p_id=list_shopping.p_id  order by l_id desc;";
                                ResultSet rs=con.createStatement().executeQuery(sql);
                                while(rs.next()){
                            %>
                                <form action="updatecomment.jsp" method="post" style="margin-left: 15%;">
                                <input type="hidden" value="<%=rs.getString("l_id")%>" name="l_idd" />
                               <input type = "hidden" name = "stars" id = "star" value = "No">
                            <%
                                    out.println("<table class='my_common'>");
                                    out.println("<table class='common_id'>"+"訂單編號："+rs.getString("l_idd")+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+"購買時間："+rs.getString("l_date")+"</table>");
                                    out.println("<table class='coomon_id'>"+"商品名稱："+rs.getString("p_name")+"&emsp;&emsp;"+"樣式尺寸："+rs.getString("p_color")+"-"+rs.getString("p_size")+"</table>");
                                    out.println("<table style='font-color: black;'>"+"填寫商品評價：");
                                    /*out.println("<input type='radio' class='starsss' name='grade' value='1' id='grade1'></input>");
                                    out.println("<input type='radio' class='starsss' name='grade' value='2' id='grade2'></input>");
                                    out.println("<input type='radio' class='starsss' name='grade' value='3' id='grade3'></input>");
                                    out.println("<input type='radio' class='starsss' name='grade' value='4' id='grade4'></input>");
                                    out.println("<input type='radio' class='starsss' name='grade' value='5' id='grade5'></input>");*/ 
                                    /*out.println("<p class='starWrapper' onmouseover='rate(this,event)'>"
                                        +"<img src='icon/star.png'  title='很爛'>"
                                        +"<img src='icon/star.png' title='一般'>"
                                        +"<img src='icon/star.png' title='還好'>"
                                        +"<img src='icon/star.png' title='較好'>"
                                        +"<img src='icon/star.png' title='很好'>"
                                        +"</table>"
                                        );*/
                                    %>
                                    <div class="rating">
                                    <%
                                     for(int a=5;a>=1;a--)
                                    {
                                       if(Integer.valueOf(rs.getString("stars"))==a	)
                                       {						  
                                           out.println("<input type='radio' id='star"+rs.getString("l_id")+a+"' name='"+rs.getString("l_id")+"' value='"+a+"' hidden checked  /> <label for='star"+rs.getString("l_id")+a+"'></label>");			
                                        }
                                        else
                                        {
                                        out.println("<input type='radio' id='star"+rs.getString("l_id")+a+"' name='"+rs.getString("l_id")+"' value='"+a+"' hidden  /> <label for='star"+rs.getString("l_id")+a+"'></label>");	
                                        }			
                                    }
				                    %>  
                                    </div>
                                    <%
                                    out.println("<textarea style='resize:none;width:80%;height:100px;' name='comment' onclick='this.focus();this.select()'>"+"</textarea>"+"<br>");
                                    out.println("<input type='button' value='確認送出' class='member_button' onclick='submit()';>"+"</table>");
                                    out.println("<hr style='margin-left: -2%;width: 85%;'>");
                             %>
                         </form>
                             <%     
                            }
%>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

<script>
    // Show the first tab by default
    $('.tabs-stage div').hide();
    $('.tabs-stage div:first').show();
    $('.tabs-nav li:first').addClass('tab-active');

    // Change tab class and display content
    $('.tabs-nav a').on('click', function(event) {
        event.preventDefault();
        $('.tabs-nav li').removeClass('tab-active');
        $(this).parent().addClass('tab-active');
        $('.tabs-stage div').hide();
        $($(this).attr('href')).show();
    });

</script>

<script type="text/javascript">
    function rate(obj, oEvent) {
        var imgSrc = 'icon/star.png'; //沒有填色的星星
        var imgSrc_2 = 'icon/star_1.png'; //打分後有顏色的星星
        //--------------------------------------------------------------------------- 
        if (obj.rateFlag) return;
        var e = oEvent || window.event;
        var target = e.target || e.srcElement;
        var imgArray = obj.getElementsByTagName("img");

        for (var i = 0; i < imgArray.length; i++) {
            imgArray[i]._num = i;
            imgArray[i].onclick = function() {
                if (obj.rateFlag) return;
                obj.rateFlag = true;

                alert(this._num + 1);
                document.getElementsByClassName("starsss")[this._num].checked='true';


                 //this._num+1這個數字寫入到數據庫中,作為評分的依據
            };
        }
        var star=this._num + 1;
        document.getElementById( 'star' ).value = 'Yes';
        
        if (target.tagName == "IMG") {
            for (var j = 0; j < imgArray.length; j++) {
                if (j <= target._num) {
                    imgArray[j].src = imgSrc_2;
                } else {
                    imgArray[j].src = imgSrc;
                }
            }
        } else {
            for (var k = 0; k < imgArray.length; k++) {
                imgArray[k].src = imgSrc;
            }
        }
    }

</script>
<script type="text/javascript">
   
    var demoImg = document.getElementById("demo_img");
    var demoInput = document.getElementById("demo_input");
   
    function hideShowPsw() {
        if (demoInput.type == "password") {
            demoInput.type = "text";
            demo_img.src = "icon/invisible.png";
        } else {
            demoInput.type = "password";
            demo_img.src = "icon/visible.png";
        }
    }

</script>