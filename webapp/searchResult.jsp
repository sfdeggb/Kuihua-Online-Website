<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/11/28
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.js"></script>
    <link rel="stylesheet" href="firstpage.css">
    <link rel="stylesheet" href="scr1.css">
    <link rel="stylesheet" href="bbt.css">
    <link rel="stylesheet" href="text-btn.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<%String name=request.getParameter("Name");
String method=request.getParameter("Method");
System.out.println(name+":"+method);
%>
<script>
    $(document).ready(function(){
        console.log("23232323")
        var name="<%=name%>"
        var method="<%=method%>"
        console.log("23232323")
        console.log("11111:"+name+typeof (name))
        console.log("22222:"+method+typeof (method))
        $.ajax({
            url:"http://localhost:8080/spark_war_exploded/nameSearch",
            data:"name="+name+"&method="+method,
            type:"post",
            dataType: "text",

            success:function (data){
                console.log("成功！")
                console.log(data)
                var obj=JSON.parse(data)
                console.log("json的长度为："+obj)
                if(obj.length!==0){
                    var h=""
                    h+="<div class='container'>"
                    for(var i=0;i<obj.length;i++){
                        console.log(i+obj[i])
                        var o=obj[i]
                        h+="<div class='box'>"
                        h+="<p class='name'>葵花典影</p>"
                        h+="<a href='certainPage1.jsp' class='buy'>get</a>"
                        h+="<div class='price' onclick=fun1("+o.movieId+")>"
                        h+="<a href='certainPage1.jsp' style='text-decoration: none ;color: black'>电影ID："+o.movieId+"</a><br>"
                        h+="<a href='certainPage1.jsp' style='text-decoration: none ;color: black'>电影名称："+o.fTitle+"</a><br>"
                        h+="<a href='certainPage1.jsp' style='text-decoration: none ;color: black'>电影类型："+o.fGenres+"</a><br>"
                        h+="</div>"
                        h+="<img src='wen1.jpg' class='product'>"
                        h+="</div>"
                    }
                    h+="</div>"
                    $("body").append(h)
                }else{
                    var h=""
                    h+="<span style='font-size: 30px;position: absolute;top: 10%;left: 45%;'>电影不存在</span>"
                    $("body").append(h)
                }

            },
            error:function (data){
                alert(data)
                console.log('错误！！！')
            }
        })
    })
    // function fun1(infor){
    //     var id=infor;
    //     console.log("111:"+id)
    //     $(location).attr('href','certainPage.jsp?Info='+id)
    // }


</script>
</body>
</html>
