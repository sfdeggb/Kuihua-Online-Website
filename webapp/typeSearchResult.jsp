<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/11/29
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.js"></script>
    <link rel="stylesheet" href="styles.css">
</head>
<body background="back3.jpg"
      style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<%String j=request.getParameter("Info");%>
<%System.out.println(j);%>
<script>
    $(document).ready(function(){
        console.log("22222!!!!!")
        var type="<%=j%>"
        console.log("11111:")
        $.ajax({
            url:"http://localhost:8080/spark_war_exploded/typeSearch",
            data:"type="+type,
            type:"post",
            dataType: "text",

            success:function (data){
                console.log("成功！")
                console.log(data)
                var obj=JSON.parse(data)
                console.log("json的长度为："+obj.length)
                if(obj.length!==0){
                    var h=""
                    h+="<div class='container'>"
                    for(var i=0;i<obj.length;i++){
                        console.log(i+obj[i])
                        var o=obj[i]
                        h+="<div class='box'  onclick=fun2("+o.id+")>"
                        h+="<p class='name'>葵花典影</p>"
                        h+="<a class='buy'>get</a>"
                        h+="<div class='price'>"
                        h+="<a  style='text-decoration: none ;color: black'>电影名称："+o.fTitle+"</a><br>"
                        h+="<a  style='text-decoration: none ;color: black'>电影类型："+o.fGenres+"</a><br>"
                        h+="<a  style='text-decoration: none ;color: black'>评分："+o.rating+"</a><br>"
                        h+="</div>"
                        h+="<img src='wen1.jpg' class='product'>"
                        h+="</div>"
                    }
                    h+="</div>"
                    $("body").append(h)
                }

            },
            error:function (data){
                alert(data)
                console.log('错误！！！')
            }
        })
    })
    // function fun2(infor){
    //     var id=infor;
    //     console.log("111:"+id)
    //     $(location).attr('href','certainPage.jsp?Info='+id)
    // }


</script>
</body>
</html>
