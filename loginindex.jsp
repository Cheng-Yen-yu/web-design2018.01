<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
    <title>期末專案</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
    <div style="float: left; width:15%;margin-top: 7%; "><img src="img/pigloginposter2.png"></div>
    <div class="login_con">
        <div class="a">
            <div class="cont_centrar">
                <div class="cont_login">
                    <div class="cont_info_log_sign_up">
                        <div class="col_md_login">
                            <div class="cont_ba_opcitiy">
                                <h2>會員登入</h2>
                                <p>登入"布行"會員即可快速結帳</p>
                                <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
                            </div>
                        </div>
                        <div class="col_md_sign_up">
                            <div class="cont_ba_opcitiy">
                                <h2>立即註冊</h2>
                                <p>還沒有會員嗎，選我立即註冊</p>

                                <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
                            </div>
                        </div>
                    </div>
                    <div class="cont_back_info">
                        <div class="cont_img_back_grey">
                            <img src="img/pigposter.png" />
                            <!--背景照片更換-->
                        </div>
                    </div>
                        <div class="cont_forms" >
                            <div class="cont_img_back_">
                                <img src="img/pigposter.png" alt="" />
                            </div>
                            <form action="login2.jsp" method="POST">
                                <div class="cont_form_login">
                                    <a href="#" onclick="ocultar_login_sign_up()">
                                    <img class="icon_login" src="icon/right.png">
                                            <!--icon 放置-->
                                    </a>                  
                                    <h2>會員登入</h2>
                                    <input type="text" placeholder="請輸入帳號" name="acc" />
                                   <img class="see_login_img" id="demo_login_img" onclick="hideShowPsw2()" src="icon/visible.png">
                                   <input type="password" id="demo_login_input" name="psd" placeholder="請輸入密碼" />
                                    
                                    <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
                                </div>
                            </form> 

                            <form action="regis.jsp" method="POST">
                                <div class="cont_form_sign_up" >
                                    <a href="#" onclick="ocultar_login_sign_up()"><img class="icon_login" src="icon/left.png"></a>
                                    <h2>立即註冊</h2>
                                    <input type="text" placeholder="姓名" name="r_name"/>
                                    <input type="text" placeholder="電子信箱" name="r_mail" onblur="check_mail(document.getElementsByName('r_mail')[0].value)"/>
                                    <input type="text" placeholder="帳號" name="r_acc" />
                                    <img class="see_img" id="demo_img"  onclick="hideShowPsw()" src="icon/visible.png">
                                    <input type="password" id="demo_input" name="r_psd"  placeholder="密碼" />
                                    
                                    <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
               <div style="float: left;width:15%;margin-top: 7%; "><img src="img/pigloginposter1.png"></div>
            <div style='clear:both;'></div>
        </div>
    </div>

</body>

</html>
<script>
    function cambiar_login() {
        document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";
        document.querySelector('.cont_form_login').style.display = "block";
        document.querySelector('.cont_form_sign_up').style.opacity = "0";

        setTimeout(function() {
            document.querySelector('.cont_form_login').style.opacity = "1";
        }, 400);

        setTimeout(function() {
            document.querySelector('.cont_form_sign_up').style.display = "none";
        }, 200);
    }

    function cambiar_sign_up(at) {
        document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
        document.querySelector('.cont_form_sign_up').style.display = "block";
        document.querySelector('.cont_form_login').style.opacity = "0";

        setTimeout(function() {
            document.querySelector('.cont_form_sign_up').style.opacity = "1";
        }, 100);

        setTimeout(function() {
            document.querySelector('.cont_form_login').style.display = "none";
        }, 400);


    }

    function ocultar_login_sign_up() {

        document.querySelector('.cont_forms').className = "cont_forms";
        document.querySelector('.cont_form_sign_up').style.opacity = "0";
        document.querySelector('.cont_form_login').style.opacity = "0";

        setTimeout(function() {
            document.querySelector('.cont_form_sign_up').style.display = "none";
            document.querySelector('.cont_form_login').style.display = "none";
        }, 500);

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
<script type="text/javascript">
    var demoImg2 = document.getElementById("demo_login_img");
    var demoInput2 = document.getElementById("demo_login_input");

    function hideShowPsw2() {
        if (demoInput2.type == "password") {
            demoInput2.type = "text";
            demo_login_img.src = "icon/invisible.png";
        } else {
            demoInput2.type = "password";
            demo_login_img.src = "icon/visible.png";
        }
    }

</script>


<script language="javascript" type="text/javascript">
function check_mail(e){
    if(!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(e)) 
{
    alert("請輸入格式正确的 e-mail 地址！");
}
}
</script>

