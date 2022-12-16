<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/11/26
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="register.css" rel="stylesheet">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.js"></script>
</head>
<body background="back3.jpg"
      style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div class="main">
    <div class="loginFrame">
        <p class="loginTitle">Register</p>
        <div class="number">
            <label>
                <span></span>
                <span>设置账号</span>
                <input type="text" placeholder="Account" id="account"><span style="color: red" id="sp"></span>
            </label>
        </div>
        <div class="send">
            <div style="text-decoration: none;color: white"><p style="cursor:pointer" id="account_sure">确定</p></div>
        </div>
        <div class="Code">
            <label>
                <span></span>
                <span>设置用户名</span>
                <input type="text" placeholder="UserName" id="username" >
            </label>
        </div>
        <div class="get">
        </div>
        <div class="password">
            <label>
                <span></span>
                <span>设置密码</span>
                <input type="password" placeholder="Password" id="password">
            </label>
        </div>
        <div class="v_code">
            <div class="code_show">
                <span class="code" id="checkCode"></span>
                <a id="linkbt">看不清换一张</a>
            </div>
            <div class="input_code">
                <label for="inputCode">验证码：</label>
                <input type="text" id="inputCode" />
                <span id="text_show"></span>
            </div>
            <p><button class="Butten1" id="Button1" type="button">确定</button></p>
        </div>
        <div class="enterBut">
            <div style="font-size: 20px;color: white;outline: none;text-decoration: none;"><p class="p1" style="position: center;" id="sure_button">确认</p></div>
        </div>
    </div>
</div>
<script>
    let key = 0;
    window.onload = function(){
        let account_sure = document.getElementById("account_sure");  //获得上传的account账号，然后进行判断是否有重复的用户
        account_sure.onclick = function(){
            var acc=$("#account").val();
            $.ajax({
                url:"http://localhost:8080/spark_war_exploded/register_account_test",
                data:"account="+acc,
                type:"post",
                dataType: "text",
                success:function (data){
                    // alert(data)
                    console.log(typeof (data)+data+'成功！！！')
                    if (data==="1"){
                        console.log("aaaaaaaaa"+data)
                        document.getElementById("sp").innerText = "该账号已被注册，请重新申请！";
                    }
                    else{
                        console.log(data)
                        document.getElementById("sp").innerText = "账号可用！";
                        key = 1;
                    }
                },
                error:function (data){
                    console.log("bbbbbb"+data)
                    console.log('错误！！！')
                }
            })
        }


        var res = getCode();
        function getCode(){
            var arr = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'];
            var str = '';
            for(var i = 0;i<6;i++){
                var num = Math.round(Math.random()*(15-0)+0);
                str += arr[num];
            }
            return str;
        }
        document.getElementById('checkCode').innerText = res;
        document.getElementById('linkbt').onclick = function(){
            document.getElementById('checkCode').innerText = getCode();
        }
        document.getElementById('Button1').onclick = function(){
            var code = document.getElementById('checkCode').innerText;
            var inputCode = document.getElementById('inputCode').value;
            if(code != inputCode){
                alert('您输入的验证码不正确！');
                document.getElementById('inputCode').value = '';
                return false;
            }
            else {
                alert('验证码正确！');
                if(key===1){
                    key = 2;
                }
            }
        }

        let account = document.getElementById("account");
        let username = document.getElementById("username");
        let password = document.getElementById("password");

        account.onclick = function (){
            document.getElementById("sp").innerText = "";
        }
        document.getElementById("sure_button").onclick = function (){
            if(key===2 && password.value!=null && username.value!=null){
                $.ajax({
                    url:"http://localhost:8080/spark_war_exploded/register_account_add",
                    data:"account="+account.value+"&username="+username.value+"&password="+password.value,
                    dataType:"text",
                    success:function (){
                        window.location.href="http://localhost:8080/spark_war_exploded/firstPage.jsp"
                    }
                })
            }
        }
    }

</script>

</body>
</html>
