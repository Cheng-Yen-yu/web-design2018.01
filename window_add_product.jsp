<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
    <title>新增商品</title>
    <link rel="stylesheet" type="text/css" href="window.css">
    <link rel="stylesheet" type="text/css" href="back.css">
</head>

<body>
    <div class="window_shopping_back">

        <p><b>
                <center>新增商品</center>
            </b></p>

        <table>
            <thead>
                <tr>
                    <td>商品編號</td>
                    <td>商品名稱</td>
                    <td>商品價錢</td>
                    <td>商品數量</td>
                    <td>商品圖片<b><span class="window_load">(點我上傳)</span></b></td>
                </tr>
            </thead>
            <tbody>
                <form action="addproduct.jsp" method="POST">
                <tr>
                    <td><input type="text" class="td_width_80" name="p_id"></td>
                    <td class="td_width_20"><input type="text" name="p_name"></td>
                    <td><input type="text" class="td_width_80" name="p_originprice"></td>
                    <td><input type="text" class="td_width_80" name="p_storage"></td>
                    <td class="td_width_20">
                        <img src="icon/list.png" class="td_width_20">
                        <img src="icon/list.png" class="td_width_20">
                        <img src="icon/list.png" class="td_width_20">
                    </td>
                </tr> 
             
            </tbody>
            
        </table>
        <br>
        <button class="win_add_bt">確定新增</button>
        </form>
  </div>
</body>

</html>
