<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2021/12/3
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>葵花电影_首页</title>
    <link rel="stylesheet" type="text/css" href="firstvpage.css">
    <link rel="stylesheet" href="scr1.css">
    <link rel="stylesheet" href="bbt.css">
    <link rel="stylesheet" href="text-btn.css">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.js"></script>

    <!--/*轮播部分*/-->
    <style type="text/css">
        *{ padding:0; margin:0; list-style:none; border:0;}
        .all{
            width:1200px;
            height:400px;
            padding:7px;
            margin:100px auto;
            position:relative;
            left:500px
        }
        .screen{
            width:1200px;
            height:400px;
            overflow:hidden;
            position:relative;
        }

        .screen li{ width:1200px; height:400px; overflow:hidden; float:left;}
        .screen ul{ position:absolute; left:0; top:0px; width:12000px;}
        .all ol{ position:absolute; right:10px; bottom:10px; line-height:20px; text-align:center;}
        .all ol li{ float:left; width:20px; height:20px; background:#fff; border:1px solid #ccc; margin-left:10px; cursor:pointer;}
        .all ol li.current{ background:yellow;}
    </style>
    <script type="text/javascript">
        function animate(obj,target){
            clearInterval(obj.timer);  // 先清除定时器
            var speed = obj.offsetLeft < target ? 100 : -100;  // 用来判断 应该 +  还是 -
            obj.timer = setInterval(function() {
                var result = target - obj.offsetLeft; // 因为他们的差值不会超过15
                obj.style.left = obj.offsetLeft + speed + "px";
                if(Math.abs(result)<=100)  // 如果差值不小于 15 说明到位置了
                {
                    clearInterval(obj.timer);
                    obj.style.left = target + "px";  // 有15像素差距   我们直接跳转目标位置
                }
            },10)
        }
        window.onload = function() {

        }
    </script>

    <!--/小山羊*/-->
    <style>
        *{
            margin: 0;
            padding: 0;
        }

        body {
            background-color: aliceblue;
        }
        .shanyang{
            width: 50px;
            height: 50px;
            position: absolute;
            background-image: url('goat.gif');
            background-size: cover;
        }
    </style>

    <!--侧边导航-->
    <style>
        .sidebar{
            position: fixed;
            right: 20px;
            top: 90px;
            width: 80px;
            background-color: #f6f9fa;
            border: 1px solid #e5e9ef;
            border-radius: 10px;

        }
        .sidebar ul{
            list-style-type: none;
            padding: 0;
            margin: 0;

        }
        .sidebar ul li{
            width: 80px;
            height: 30px;
            font-size: 10px;
            text-align: center;
            line-height: 30px;
            cursor: pointer;
            border-radius: 5px;
        }
        .sidebar ul li:hover{
            background-color: #00a1d6;
            color: white;
        }
        .sidebar ul div{
            width: 80px;
            height: 30px;
            font-size: 10px;
            text-align: center;
            line-height: 30px;
            cursor: pointer;
        }
        .sidebar ul div:hover{
            background-color: #00a1d6;
            color: white;
        }
    </style>


</head>

<body background="back12.jpg"
      style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;"
>

<div class="bt">
    <button onclick="fun('IMAX')" class="bnt1" type="button" ><h2 class="biaoqian">IMAX</h2></button>
    <button onclick="fun('Thriller')" class="bnt2" type="button"><h2 class="biaoqian">Thriller</h2></button>
    <button onclick="fun('Western')" class="bnt3" type="button"><h2 class="biaoqian">Western</h2></button>
    <button onclick="fun('Film-Noir')" class="bnt4" type="button"><h2 class="biaoqian">Film-Noir</h2></button>
    <button onclick="fun('Fantasy')" class="bnt5" type="button"><h2 class="biaoqian">Fantasy</h2></button>
    <button onclick="fun('Children')" class="bnt6" type="button"><h2 class="biaoqian">Children</h2></button>
    <button onclick="fun('Romance')" class="bnt7" type="button"><h2 class="biaoqian">Romance</h2></button>
    <button onclick="fun('Sci-Fi')"  class="bnt8" type="button"><h2 class="biaoqian">Sci-Fi</h2></button>
    <button onclick="fun('Mystery')" class="bnt9" type="button"><h2 class="biaoqian">Mystery</h2></button>
    <button onclick="fun('Documentary')" id="type10" class="bnt10" type="button"><h2 class="biaoqian">Documentary</h2></button>
    <button onclick="fun('Drama')" class="bnt11" type="button"><h2 class="biaoqian">Drama</h2></button><br>
    <button onclick="fun('Action')" class="bnt12" type="button"><h2 class="biaoqian">Action</h2></button><br>
    <button onclick="fun('Musical')" class="bnt13" type="button"><h2 class="biaoqian">Musical</h2></button><br>
    <button onclick="fun('Crime')"  class="bnt14" type="button"><h2 class="biaoqian">Crime</h2></button><br>
    <button onclick="fun('Comedy')"  class="bnt15" type="button"><h2 class="biaoqian">Comedy</h2></button><br>
    <button onclick="fun('Animation')" class="bnt16" type="button"><h2 class="biaoqian">Animation</h2></button><br>
    <button onclick="fun('War')" class="bnt17" type="button"><h2 class="biaoqian">War</h2></button><br>
    <button onclick="fun('Adventure')" class="bnt18" type="button"><h2 class="biaoqian">Adventure</h2></button><br>
    <button onclick="fun('Horror')"  class="bnt19" type="button"><h2 class="biaoqian">Horror</h2></button><br>
    <button onclick="fun('其他')"  class="bnt20" type="button"><h2 class="biaoqian">其他</h2></button><br>

    <div class="container">
        <!--热点-->

        <%--        类型1--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('IMAX')" class="dark-color">IMAX</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('IMAX')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型2--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Thriller')" class="dark-color">Thriller</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Suing the Devil (2011)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：26 Years (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Charlie Chan's Secret (1936)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Fear (1990)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Manos sucias (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Revenge (1978)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Thriller')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    GoldenEye (1995)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    City Hall (1996)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    First Daughter (1999)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    True Blue (2001)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Die (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    Parker (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Tepenin Ardi (2012)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Extreme Measures (1996)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Devil's Tomb, The (2009)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型3--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Western')" class="dark-color">Western</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Conagher (1991)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：War Arrow (1954)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Pony Express (1953)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Lonesome Dove Church (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Western (2015)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：They Call Me Renegade (1987)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.5</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Western')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Guns of Fort Petticoat, The (1957)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Monte Walsh (2003)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Apple Dumpling Gang, The (1975)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Gunfighter's Moon  (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Westward the Women (1951)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    Man Called Gannon, A (1968)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Aces 'N' Eights (2008)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Lone Ranger, The (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Ambush Trail (1946)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型4--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Film-Noir')" class="dark-color">Film-Noir</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Here Without Me (Inja bedoone man) (2011)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：The Bloody Olive (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.33</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Sunset Blvd. (a.k.a. Sunset Boulevard) (1950)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.23</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Third Man, The (1949)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.21</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Double Indemnity (1944)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.2</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Touch of Evil (1958)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.2</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Film-Noir')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    No Man of Her Own (1950)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Yesterday Was a Lie (2008)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Blueprint for Murder, A (1953)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Armored Car Robbery (1950)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Cry in the Night, A (1956)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    Glass Web, The (1953)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    711 Ocean Drive (1950)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Berlin Express (1948)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Crossfire (1947)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型5--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Fantasy')" class="dark-color">Fantasy</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：The Monkey King the Legend Begins
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Snow White and the Three Stooges (1961)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Beauties of the Night (1952)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Der Samurai (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Scooby-Doo! Mask of the Blue Falcon (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Train Ride to Hollywood (1975)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Fantasy')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Toy Story (1995)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Beautiful Creatures (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Scarecrow, The (1972)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Lucifer Rising (1972)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    Herbie Rides Again (1974)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Borrowers, The (2011)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Brass Teapot, The (2012)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Magadheera (2009)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型6--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Children')" class="dark-color">Children</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Three Days (2001)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Adventures of Mowgli: The Kidnapping (1968)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dreamkeeper (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：The Call of the Wild (1972)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Snow White and the Three Stooges (1961)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Fan Girl (2015)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Children')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Toy Story (1995)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Living Free (1972)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    The Mighty Ducks (1996)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Apple Dumpling Gang, The (1975)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Escape to Witch Mountain (1975)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    Swiss Family Robinson (1960)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Parent Trap, The (1961)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Herbie Rides Again (1974)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Old Yeller (1957)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型7--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Romance')" class="dark-color">Romance</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tammy and the Doctor (1963)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：ce","fTitle":"\"Pursuit of Unhappiness, The (Anleitung zum Unglücklichsein) (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Waltz Across Texas (1982)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Conagher (1991)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Love Life (2001)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Love Life (2001)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：5</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Romance')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    First Daughter (1999)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Middle of Nowhere (2012)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Color Wheel, The (2011)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Ironclads (1991)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Tabu (2012)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    Waiting Room, The (2007)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Lo (2009)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Upside Down (2012)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Kadal (2013)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Sci-Fi')" class="dark-color">Sci-Fi</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Sci-Fi')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>
        <%--        类型8--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Documentary')" class="dark-color">Documentary</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Documentary')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型9--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Mystery')" class="dark-color">IMAXMystery</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Mystery')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型10--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Drama')" class="dark-color">Drama</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Drama')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型11--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Action')" class="dark-color">Action</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Action')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型12--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Musical')" class="dark-color">Musical</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Musical')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型13--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Crime')" class="dark-color">Crime</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Crime')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型14--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Comedy')" class="dark-color">Comedy</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Comedy')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型15--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Animation')" class="dark-color">Animation</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Animation')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>


        <%--        类型17--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('War')" class="dark-color">War</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('War')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型18--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Adventure')" class="dark-color">Adventure</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Adventure')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

        <%--        类型19--%>
        <div class="section">
            <div class="container clearfix">
            </div>
            <div class="aside-left">
                <div class="demo"><h2 class="title">
                    <a onclick="fun('Horror')" class="dark-color">Horror</a>
                </h2>
                </div>

            </div>

            <div class="aside-right">
                <div class="adv">
                    <a>
                        <img src="symple.jpg">
                    </a>
                </div>
                <div class="section-title">
                    <h2 class="title">热门话题</h2>
                    <div class="demo">
                <span class="link">
                    <a  >
                        话题广场
                    </a>
                </span>
                    </div>
                </div>
                <ul class="hot-list">
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Tai Chi Hero (2012)
                                </a>
                            </div>
                        </div>
                        <div class="desc" >
                            <span>评分：4.25</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Dark Knight, The (2008)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.18</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Inception (2010)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.15</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：Interstellar (2014)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4.08</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a>
                                    电影名称：Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>
                    <li>
                        <div class="title">
                            <div class="demo">
                                <a >
                                    电影名称：IMAX: Coral Reef Adventure (2003)
                                </a>
                            </div>
                        </div>
                        <div class="desc">
                            <span>评分：4</span>
                        </div>
                    </li>

                </ul>

            </div>
            <div class="main">
                <div class="section-title">
                    <a  class="demo">
                        <h2 class="title">
                            热门专栏
                        </h2>
                    </a>

                    <span class="link">
                    <div class="demo">
                        <a onclick="fun('Horror')">
                            更多
                        </a>
                    </div>

                </span>
                </div>

                <div class="time-main">
                    <ul>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Hansel & Gretel: Witch Hunters (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Thrill Ride: The Science of Fun (1997)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Good Day to Die Hard, A (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Oz the Great and Powerful (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Jack the Giant Slayer (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a>
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a>
                                    G.I. Joe: Retaliation (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    Inception (2010)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a  >
                                    Oblivion (2013)
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a >
                                    <img src="kkk1.jpg" alt="">
                                </a>
                            </div>
                            <div class="words">
                                <a >
                                    To the Arctic (2012)
                                </a>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>

        </div>

    </div>

</div>
<script>
    function fun(flag) {
        var type=flag;
        console.log("111:"+type)
        $(location).attr('href','typeSearchResult.jsp?Info='+type)
    }
</script>

<nav class="navbar">

    <div class="inner-width">
        <input id="nameId" type="text" class="text1" placeholder="SearchName" style="width: 300px;height: 30px;border-radius: 10px"/><br>
        <button id="searchBtn1" class="b2" type="button" value="1">前匹配</button>
        <button id="searchBtn2" class="b3" type="button" value="2">后匹配</button>
        <button id="searchBtn3" class="b4" type="button" value="3">模糊过滤</button>
        <button>
            <span  onclick=fun12() style="position: absolute;right: 200px;font-size: 20px;cursor:pointer;color: white">浏览全部</span>
            <span onclick=fun11() style="position: absolute;right: 100px;font-size: 20px;cursor:pointer;color: white">退出登录</span>
            <span></span>
            <span></span>
        </button>
    </div>
</nav>
<script>
    function fun11(){
        window.location.href="http://localhost:8080/spark_war_exploded/login.jsp"
    }
    function fun12(){
        window.location.href="http://localhost:8080/spark_war_exploded/allMovies.jsp"
    }
    window.onload = function(){
        // 获取元素
        var box = document.getElementById("all");  // 大盒子
        var ul = document.getElementById("ul");
        var ulLis = ul.children;

        // 操作元素

        // 因为我们要做无缝滚动  ，所以要克隆第一张，放到最后一张后面去
        // a.appendchild(b)   把 b 放到 a 的最后面
        // 1. 克隆完毕
        ul.appendChild(ul.children[0].cloneNode(true));

        // 2. 创建 ol  和  小 li
        console.log(ulLis.length);
        var ol = document.createElement("ol");  // 生成的是ol
        box.appendChild(ol); // 把ol 追加到  box 里面
        for(var i=0;i<ulLis.length-1;i++)
        {
            var li = document.createElement("li");
            li.innerHTML = i + 1;  //  给里面小的li 文字  1 2 3 4 5
            ol.appendChild(li);  // 添加到 ol 里面
        }
        ol.children[0].className = "current";

        //3. 开始动画部分
        var olLis = ol.children;
        for(var i=0; i<olLis.length;i++)
        {
            olLis[i].index = i;  // 获得当前第几个小li 的索引号
            olLis[i].onmouseover = function() {
                for(var j=0;j<olLis.length;j++)
                {
                    olLis[j].className = "";  // 所有的都要清空
                }
                this.className = "current";
                animate(ul,-this.index*1200)
                // 调用动画函数  第一个参数  谁动画     第二个  走多少
                square = key = this.index;  // 当前的索引号为主
            }
        }
        //  4. 添加定时器
        var timer = null;   // 轮播图的定时器
        var key = 0;  //控制播放张数
        var square = 0; // 控制小方块
        timer = setInterval(autoplay,1000);  // 开始轮播图定时器
        function autoplay() {
            key++;  // 先 ++
            if(key>ulLis.length - 1)  // 后判断
            {
                ul.style.left = 0;  // 迅速调回
                key = 1;  // 因为第6张就是第一张  第6张播放 下次播放第2张
            }
            animate(ul,-key*1200);  // 再执行
            // 小方块
            square++;
            if(square > olLis.length -1)
            {
                square = 0;
            }
            for(var i=0;i<olLis.length;i++)   // 先清除所有的
            {
                olLis[i].className = "";
            }
            olLis[square].className = "current";  // 留下当前的
        }
        //last最后  鼠标经过大盒子要停止定时器
        box.onmouseover = function() {
            clearInterval(timer);
        }
        box.onmouseout = function() {
            timer = setInterval(autoplay,1000);  // 开始轮播图定时器
        }
        $("#searchBtn1").click (function (){
            var name=$('#nameId').val();
            var method=$('#searchBtn1').val();
            $(location).attr('href','searchResult.jsp?Name='+name+'&Method='+method)
        })
        $("#searchBtn2").click (function (){
            var name=$('#nameId').val();
            var method=$('#searchBtn2').val();
            $(location).attr('href','searchResult.jsp?Name='+name+'&Method='+method)
        })
        $("#searchBtn3").click (function (){
            var name=$('#nameId').val();
            var method=$('#searchBtn3').val();
            $(location).attr('href','searchResult.jsp?Name='+name+'&Method='+method)
        })
    }
</script>
<div class="banner">
    <div class="banner-0">
        <div class="subnav">
            <ul>
                <li><a href="#"><span>Three Days &gt;</span></a>
                <li><a href="#"><span> Heat &gt;</span></a>
                <li><a href="#"><span>Black Sheep &gt;</span></a>
                <li><a href="#"><span>Top Spin&gt;</span></a>
                <li><a href="#"><span>City Hall &gt; </span></a>
            </ul>
        </div>
        <div class="all" id='all'>
            <div class="screen">
                <ul id="ul">
                    <li><img src="kkk1.jpg" width="1200" height="400" /></li>
                    <li><img src="kkk2.jpg" width="1200" height="400" /></li>
                    <li><img src="kkk3.jpg" width="1200" height="400" /></li>
                    <li><img src="kkk4.jpg" width="1200" height="400" /></li>
                    <li><img src="kkk5.jpg" width="1200" height="400" /></li>
                </ul>
            </div>

        </div>
    </div>

    <!--侧边导航-->
    <div class="sidebar">
        <ul>
            <li>IMAX</li>
            <li>Thriller</li>
            <li>Western</li>
            <li>Film-Noir</li>
            <li>Fantasy</li>
            <li>Children</li>
            <li>Romance</li>
            <li>Sci-Fi</li>
            <li>Documentary</li>
            <li>Mystery</li>
            <li>Drama</li>
            <li>Action</li>
            <li>Musical</li>
            <li>Crime</li>
            <li>Comedy</li>
            <li>Animation</li>
            <li>War</li>
            <li>Adventure</li>
            <li>Horror</li>
            <span id="btnTop" onclick="returnTop()" title="返回顶部"><div>∧</div></span>
        </ul>
    </div>


    <div class="shanyang"></div>
</body>


<script>
    let img =document.querySelector('.shanyang')
    let deg = 0
    let imgx = 0
    let imgy = 0
    let imgl = 0
    let imgt = 0
    let y =0
    let index =0
    window.addEventListener('mousemove',function(xyz){
        imgx = xyz.x-img.offsetLeft - img.clientWidth /2
        imgy = xyz.y - img.offsetTop - img.clientHeight /2
        deg = 360*Math.atan(imgy/imgx)/(2*Math.PI)
        index=0
        let x = event.clientX
        if(img.offsetLeft<x){
            y=-180
        }else{
            y=0
        }
    })
    setInterval(()=>{
        img.style.transform = "rotateZ("+deg+"deg) rotateY("+y+"deg)"
        index++
        if(index<50){
            imgl+=imgx/50
            imgt+=imgy/50
        }
        img.style.left=imgl+"px"
        img.style.top = imgt+"px"

    },10)

</script>
<script src="jschajian.js"></script>
<script>
    $(".sidebar ul li").click(function(){

        var index=$('.sidebar ul li').index(this);
        var top = $(".section").eq(index) .offset().top;
        $("html,body").animate({scrollTop:top+"px"})

    });
</script>

</html>
