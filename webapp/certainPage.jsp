<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/12/4
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>certain type</title>
    <link rel="stylesheet" href="certain%20page.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.js"></script>
</head>
<body>
<%String j=request.getParameter("Info");%>
<%System.out.println("00000000000000:"+j);%>
<div class="c1">
    <div class="c11">
        <img src="wen1.jpg" class="picture1" id="picture1" >
    </div>
    <div class="c12" >
        <span class="name" style="font-size: 20px;color: #333333">电影名称：</span>
        <p  id="info1"></p>
        <span class="name1" style="font-size: 20px;color: #333333">评分：</span>
        <p  id="info2"></p>
        <span class="name2" style="font-size: 20px;color: #333333">类型：</span>
        <p  id="info3"></p><br><br><br>
    </div>
</div>
<script>
    $(document).ready(function(){
        console.log("22222!!!!!")
        var id="<%=j%>"
        console.log("11111:")
        $.ajax({
            url:"http://localhost:8080/lastOne_war_exploded/certainInform",
            data:"id="+id,
            type:"post",
            dataType: "text",

            success:function (data){
                console.log("成功！")
                console.log(data)
                var obj=JSON.parse(data)
                console.log("json的长度为："+obj.length)
                document.getElementById("info1").innerText=obj[0].id
                document.getElementById("info2").innerText=obj[0].type
                document.getElementById("info3").innerText=obj[0].time

            },
            error:function (data){
                alert(data)
                console.log('错误！！！')
            }
        })
    })

</script>
</body>
</html>
