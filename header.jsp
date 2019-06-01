<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
    <title>期末專案</title>
    <link rel=stylesheet type="text/css" href="index.css">
    <link rel=stylesheet type="text/css" href="drop_down_menu.css">
    <link rel="stylesheet" href="hint.css">
</head>
<header>
    <div id="logo">
        <a href="index.jsp"><img src="img/logo.png" class="logo"></a>
    </div>

    <div id="nav">
        <ul class="drop-down-menu">
            <li>
               <a href="about_us.jsp" style="text-decoration:none;">關於我們</a>
                <ul>
                    <li><a href="about_fundation.jsp" style="text-decoration:none;">成立宗旨</a></li>
                    <li><a href="about_product.jsp" style="text-decoration:none;">產品理念</a></li>
                    <li><a href="about_group.jsp" style="text-decoration:none;">成員介紹</a></li>
                    <li><a href="contact.jsp" style="text-decoration:none;">聯絡我們</a></li>
                </ul>
            </li>
            <li>
                <a href="p_bag.jsp" style="text-decoration:none;">包袋總覽</a>
                <ul>
                    <li><a href="p_tort.jsp" style="text-decoration:none;">托特包</a></li>
                    <li><a href="p_school.jsp" style="text-decoration:none;">後背包</a></li>
                    <li><a href="p_func.jsp" style="text-decoration:none;">多功能袋</a></li>
                </ul>
            </li>
            <li>
                <a href="p_state.jsp" style="text-decoration:none;">文具用品</a>
                <ul>
                    <li><a href="p_wallet.jsp" style="text-decoration:none;">名片夾</a></li>
                    <li><a href="p_file.jsp" style="text-decoration:none;">文件袋</a></li>
                    <li><a href="p_book.jsp" style="text-decoration:none;">書衣</a></li>
                    <li><a href="p_pen.jsp" style="text-decoration:none;">筆袋</a></li>
                </ul>
            </li>
            <li>
                <a href="p_clothe.jsp" style="text-decoration:none;">衣著總覽</a>
                <ul>
                    <li><a href="p_t.jsp" style="text-decoration:none;">短T</a></li>
                    <li><a href="p_TT.jsp" style="text-decoration:none;">鋪棉帽T</a></li>
                    <li><a href="p_dress.jsp" style="text-decoration:none;">棉麻洋裝</a></li>
                </ul>
            </li>
        </ul>
    </div>

    <%

        String acc=null;
        String pas=null;
      
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

    try{    
        if(acc==null||acc.equals("")||pas==null||pas.equals(""))
        {
                  	out.println(" <div id='funtion_login'>");
                    out.println("<ul class='drop-down-menu_2'>");
                    out.println("<li>");
                    out.println("<a href='login.jsp' style='text-decoration:none;'>"+"登錄/註冊");
                    out.println("</a>");
                    out.println("</li>");
                    out.println("</ul>");
                    out.println("</div>");
            
    %>
         <div id="funtion">
            <span class="hint--bottom" data-hint="請先登入">
            <a href="login.jsp"><img src="icon/user.png" class="righticon_img"></a>
            </span>
            <!--判斷是否有登入在跳轉member.jsp-->
            <span class="hint--bottom" data-hint="請先登入">
            <a href="login.jsp"><img src="icon/shopcar.png" class="righticon_img"></a>
            </span>
            <span class="hint--bottom" data-hint="追蹤清單">
            <a href="love.jsp"><img src="icon/heart.png" class="righticon_img"></a>
            </span>
            <span class="hint--bottom" data-hint="搜尋商品">
            <a href="search.jsp"><img src="icon/search.png" class="righticon_img"></a>
            </span>
        </div>
    <%
        }
        else
        {	    session.setAttribute("in",acc);//the memory of the logged in account
                sql="SELECT * FROM member WHERE m_account='"+acc+"' and m_password='"+pas+"'";
                ResultSet tmp=con.createStatement().executeQuery(sql);
                tmp.next();
                if(tmp.getString("m_level").equals("1"))
                {
                	 out.println("<div id='funtion_login'>");
                     out.println("<ul class='drop-down-menu_2'>");
    		         out.println("<li>");
                     out.println("<span class='hint--bottom' data-hint='管理員資料'>");
    		         out.println("<a href='member.jsp' style='text-decoration:none;'>"+"歡迎，"+tmp.getString("m_name"));
                     out.println("</span>");
    		         out.println("</a>");
    		         out.println("</li>");
    		         out.println("</ul>");
    		         out.println("</div>");
    		           
    %>      
    				  <div id="funtion">
                        <span class="hint--bottom" data-hint="後端管理">
        			        <a href="back_member.jsp"><img src="icon/manager.png" class="righticon_img"></a>
                        </span>
    			        <span class="hint--bottom" data-hint="登出">
                            <a href="logout.jsp"><img src="icon/exit.png" class="righticon_img"></a>
                        </span>
    			      </div>

    <%
    			          
       			} 	
    		    else 
    		    {
    		    	out.println("<div id='funtion_login'>");
                    out.println("<ul class='drop-down-menu_2'>");
                    out.println("<li>");
                    out.println("<span class='hint--bottom' data-hint='個人資料'>");
                    out.println("<a href='member.jsp' style='text-decoration:none;'>"+"歡迎，"+tmp.getString("m_name"));
                    out.println("</span>");
                    out.println("</a>");
                    out.println("</li>");
                    out.println("</ul>");
                    out.println("</div>");
                
              
    %> 
         <div id="funtion">
    	    <span class="hint--bottom" data-hint="個人資料">
            <a href="member.jsp"><img src="icon/user.png" class="righticon_img"></a>
            </span>
            <!--判斷是否有登入在跳轉member.jsp-->
            <span class="hint--bottom" data-hint="購物車">
            <a href="shopcart.jsp"><img src="icon/shopcar.png" class="righticon_img"></a>
            </span>
            <span class="hint--bottom" data-hint="追蹤清單">
            <a href="love.jsp"><img src="icon/heart.png" class="righticon_img"></a>
            </span>
            <span class="hint--bottom" data-hint="搜尋商品">
            <a href="search.jsp"><img src="icon/search.png" class="righticon_img"></a>
            </span>
            <span class="hint--bottom" data-hint="登出">
            <a href="logout.jsp"><img src="icon/exit.png" class="righticon_img"></a>
            </span>
                   
    <%

        				
        		}
        }
    }
    catch(Exception e)
    {
        
        //銷毁session：
     
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
        catch(Exception err)
        {
            response.sendRedirect("index.jsp");
        }
    }
    %> 
   <div style='clear;'></div>
</header>
