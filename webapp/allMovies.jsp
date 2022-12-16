<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/12/4
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.js"></script>
</head>
<body background="back3.jpg"
      style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<br/><br/><br/><br/><br/><br/><br/>

<table align="center" width="55%">
<%--    <form id="form1" method="post" action="ShowServlet">--%>
        <tr>
            <td valign="top" bgcolor="white" style="padding: 5px">
                <table id="table_show"
                       width="99%" border="2" cellpadding="0" cellspacing="0"
                       bordercolor="#f8f8ff" bordercolorlight="#f8f8ff"
                       bordercolordark="#f8f8ff" bgcolor="#f8f8ff">
                    <tr>
                        <td colspan="3" >
                            <select id="pagenum" name="pagenum" onchange="onChanges()"><!-- 状态改变时触发change方法 -->
                                <<option >请选择</option>>
                                <%
                                    for(int i=1;i<=4585;i++){
                                %>
                                <option  class="num" value="<%=i%>" ><%=i %></option>
                                <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <script>
                        $(document).ready(function(){
                            console.log("22222!!!!!")
                            var tbody=window.document.getElementById("tbody-result")
                            var num="1"
                            console.log("11111:")
                            $.ajax({
                                url:"http://localhost:8080/spark_war_exploded/getAll",
                                data:"num="+num,
                                type:"post",
                                dataType: "text",

                                success:function (data){
                                    console.log("成功！")
                                    console.log(data)
                                    var obj=JSON.parse(data)
                                    console.log("json的长度为："+obj)
                                    if(obj.length!==0){
                                        var h=""
                                        // h+="<div class='container'>"
                                        for(var i=0;i<obj.length;i++){
                                            console.log(i+obj[i])
                                            var o=obj[i]
                                            h+="<tr align='center' bgcolor='#f8f8ff'>"
                                            h+="<td colspan='2' height='32px'>"+o.movieId+"</td>"
                                            h+="<td width='25%' height='32px'>"+o.fTitle+"</td>"
                                            h+="<td colspan='2' height='32px'>"+o.fGenres+"</td>"
                                            h+="</tr>"
                                        }
                                        tbody.innerHTML=h
                                    }
                                },
                                error:function (data){
                                    alert(data)
                                    console.log('错误！！！')
                                }
                            })
                        })
                        function onChanges(){
                            var num=$("#pagenum").val()
                            var tbody=window.document.getElementById("tbody-result")
                            console.log(num)
                            if(num!=null&&num.trim()!==""){
                                $.ajax({
                                    url:"http://localhost:8080/spark_war_exploded/getAll",
                                    dataType:"text",
                                    type:"post",
                                    data:"num="+num,

                                    success:function (data){
                                        console.log("成功！")
                                        console.log(data)
                                        var obj=JSON.parse(data)
                                        console.log("json的长度为："+obj)
                                        if(obj.length!==0){
                                            var h=""
                                            // h+="<div class='container'>"
                                            for(var i=0;i<obj.length;i++){
                                                console.log(i+obj[i])
                                                var o=obj[i]
                                                h+="<tr align='center' bgcolor='#f8f8ff'>"
                                                h+="<td colspan='2' height='32px'>"+o.movieId+"</td>"
                                                h+="<td width='25%' height='32px'>"+o.fTitle+"</td>"
                                                h+="<td colspan='2' height='32px'>"+o.fGenres+"</td>"
                                                h+="</tr>"
                                            }
                                            tbody.innerHTML=h
                                        }

                                    },
                                    error:function (data){
                                        alert(data)
                                        console.log('错误！！！')
                                    }
                                })
                            }
                        }
                    </script>
                    <tr align="center" bgcolor="#d3d3d3">
                        <th colspan="2">movieID</th>
                        <th width="25%" height="25">Title</th>
                        <th colspan="2">Genres</th>
                    </tr>
                    <tbody id="tbody-result">
                    </tbody>
                </table>
            </td>
        </tr>
</table>

</body>
</html>
