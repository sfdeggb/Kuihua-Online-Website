<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.js"></script>
    <link href="login.css" rel="stylesheet" >
</head>
<body background="back3.jpg"
      style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div class="main">
    <div class="loginFrame">
        <p class="loginTitle">Login</p>
        <div>
            <label>
                <span></span>
                <span style="font-size: 18px" >账号</span>
                <input id="account" style="height: 40px;font-size: 15px" type="text" placeholder="Account">
                <span id="sp"></span>
            </label>
        </div>
        <div>
            <label>
                <span></span>
                <span style="font-size: 18px" >密码</span>
                <input style="height: 40px;font-size: 15px" id="password" type="password" placeholder="Password">
            </label>
        </div>
        <div class="enterBut" id="loginBtn">
            <div style="font-size: 25px;color: white;outline: none;text-decoration: none">
                <p>登录</p>
            </div>
        </div>
        <div class="register" style="cursor: pointer">
            <div style="color: white;"><a href="register.jsp" style="color: white;"><span>新用户，注册</span></a></div>
        </div>
        <div id="span_fail" style="color: red;margin-left: 180px"></div>
    </div>
</div>
<script type="text/javascript">

    let account = document.getElementById("account");
    let password = document.getElementById("password");
    document.getElementById("loginBtn").onclick = function(){
        var acc=$('#account').val();
        var pwd=$('#password').val();
        $.ajax({
            url:"http://localhost:8080/spark_war_exploded/loginServe",
            dataType:"text",
            type:"post",
            data:"account="+acc+"&password="+pwd,
            success:function (data){
                // alert(data)
                console.log(typeof (data)+'111'+data+'成功！！！')
                if(data==="1"){
                    location.assign("http://localhost:8080/spark_war_exploded/firstPage.jsp");
                }
                else{
                    document.getElementById("span_fail").innerText = "账号或密码出现错误，请重新输入";
                    account.onclick = function (){
                        document.getElementById("span_fail").innerText = "";
                    }
                }
            }
        })
    }
</script>
</body>
</html>
