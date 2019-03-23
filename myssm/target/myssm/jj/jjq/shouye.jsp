<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/23
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>首页</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        .header{
            width:100%;
            height: 70px;
            background: #178f98;
        }
        .center{
            width: 1263px;
            height: 70px;
            background-color: #179817;
            margin: 0 auto;

        }

        h1{
            width: 240px;
            height: 70px;
            text-indent: -9999px;
            background: url("img/logo.png") no-repeat;
            float: left;

        }
        ul{
            list-style: none;
        }
        .nav{
            width: 980px;
            height: 70px;
            float: right;
        }

        /*后代选择器*/
        .nav li{
            width: 140px;
            height: 70px;
            background-color:#86d3d9;
            color: white;
            float: left;
            text-align: center;
            line-height: 70px;    /*纵向居中*/
        }
        #bg{
            background:#8be7f1;
        }
        .nav li:hover{
            background: #8be7f1;
        }
        .body{
            width: 100%;
            height: 1200px;
            background-color: #f2f2f2;
            margin-top: 50px;
        }
        .cate{
            width: 200px;
            height: 297px;
            background-color: green;
            margin-top: -300px;
            margin-left: 1100px;
        }
        .category{
            width: 200px;
            height:450px;
            margin-left: 50px;
            margin-top: -300px;
            background-color:  #fff;

        }
        .list_body{
            width: 920px;
            height: 800px;
            margin-left: 307px;
            margin-top: -130px;
            border: 1px solid green;
        }
        .clearfix{
            width: 920px;
            height: 260px;
            border: 1px solid red;
            overflow: hidden;
        }
        .first{
            width:225px;
            height: 260px;
            border: 1px solid green;
            float: left;
        }
        .second{
            width:225px;
            height: 260px;
            border: 1px solid green;
            float: left;
        }
        .third{
            width:225px;
            height: 260px;
            border: 1px solid green;
            float: left;
        }
        .forth{
            width:225px;
            height: 260px;
            border: 1px solid green;
            float: right;
        }
        .up{
            width: 225px;
            height: 215px;
            border: 1px solid blue;

        }
        .down{
            padding-left: 5px;
        }
        .foot{
            width: 100%;
            height: 150px;
            background-color:#e5e5e5;
            position: absolute;
        }
        .footboot{
            width: 1263px;
            height: 100px;
            background-color: green;
            margin:0 auto;
            margin-top: 30px;

        }
        .kl{
            width: 1200px;
            height: 30px;
            margin: o auto;
            background-color: red;
            margin-left: 60px;
        }
        .kl li{
            width: 100px;
            height: 20px;
            float: left;
        }
        .kk{
            margin-top: 5px;
            margin-left: 500px;
            line-height: 25px;
        }
        .ss li{
            margin-left: 100px;
        }
        /*首页左侧分类*/
        /*.category{
            width: 190px;
            background-color: #fff;
            border-radius: 5px;
            border-right: #e5e5e5 solid 1px;
        }*/
        .category ul{}
        .category ul li{
            position: relative;
        }
        .category ul li i{
            position: absolute;
            right: 80px;
            color: #11cd6e;
            opacity: 0;
            filter: alpha(opacity=0)
        }
        .category ul li a{
            display: block;
            height: 55px;
            line-height: 55px;
            text-align: left;
            padding-left: 20px;
            border-bottom: #e5e5e5 solid 1px;
            font-size: 16px;
            text-decoration: none;
            color: #333;
        }
        .category ul li a:hover{ color: #11cd6e; transition: all .3s; }
        .category ul li a:hover i{ opacity: 1; filter: alpha(opacity=100); right: 5px; transition: all .3s; }
        .search{
            width: 100%;
            height:50px;
            background-color: #e5e5e5;
        }
        .searchbox{
            float: right;
            width: 300px;
            height: 50px;
            background-color:#11cd6e;
        }


        .all{
            width:710px;
            height:297px;
            padding:7px;
            border:1px solid #ccc;
            margin:0 auto;
            position:relative;
        }
        .screen{
            width:710px;
            height:297px;
            overflow:hidden;
            position:relative;
        }
        .screen li{ width:710px; height:297px; overflow:hidden; float:left;}
        .screen ul{ position:absolute; left:0; top:0px; width:4000px;}
        .all ol{ position:absolute; right:10px; bottom:10px; line-height:20px; text-align:center;}
        .all ol li{ float:left; width:20px; height:20px; background:#fff; border:1px solid #ccc; margin-left:10px; cursor:pointer;}
        .all ol li.current{ background:yellow;}

        #arr {display: none;}
        #arr span{ width:40px; height:40px; position:absolute; left:5px; top:50%; margin-top:-20px; background:#000; cursor:pointer; line-height:40px; text-align:center; font-weight:bold; font-family:'黑体'; font-size:30px; color:#fff; opacity:0.3; border:1px solid #fff;}
        #arr #right{right:5px; left:auto;}
    </style>
    <script>
        window.onload = function () {
            //需求：无缝滚动。
            //思路：赋值第一张图片放到ul的最后，然后当图片切换到第五张的时候
            //     直接切换第六章，再次从第一张切换到第二张的时候先瞬间切换到
            //     第一张图片，然后滑动到第二张
            //步骤：
            //1.获取事件源及相关元素。（老三步）
            //2.复制第一张图片所在的li,添加到ul的最后面。
            //3.给ol中添加li，ul中的个数-1个，并点亮第一个按钮。
            //4.鼠标放到ol的li上切换图片
            //5.添加定时器
            //6.左右切换图片（鼠标放上去隐藏，移开显示）
            var screen = document.getElementById("screen");
            var ul = screen.children[0];
            var ol = screen.children[1];
            var div = screen.children[2];
            var imgWidth = screen.offsetWidth;

            //2
            var tempLi = ul.children[0].cloneNode(true);
            ul.appendChild(tempLi);
            //3
            for(var i = 0; i < ul.children.length - 1; i++) {
                var newOlLi = document.createElement("li");
                newOlLi.innerHTML = i + 1;
                ol.appendChild(newOlLi);
            }
            var olLiArr = ol.children;
            olLiArr[0].className = "current";
            //4
            for(var i = 0, len = olLiArr.length; i < len; i++) {
                olLiArr[i].index = i;
                olLiArr[i].onmouseover = function (ev) {
                    for(var j = 0; j < len; j++) {
                        olLiArr[j].className = "";
                    }
                    this.className = "current";
                    key = square = this.index;
                    animate(ul, -this.index * imgWidth);
                }
            }
            //5
            var key = 0;
            var square = 0;
            var timer = setInterval(autoPlay, 1000);
            screen.onmouseover = function (ev) {
                clearInterval(timer);
                div.style.display = "block";
            }
            screen.onmouseout = function (ev) {
                timer = setInterval(autoPlay, 1000);
                div.style.display = "none";
            }
            //6
            var divArr = div.children;
            divArr[0].onclick = function (ev) {
                key--;
                if(key < 0) {
                    ul.style.left = -(ul.children.length-1) * imgWidth + "px";
                    key = 4;
                }
                animate(ul, -key * imgWidth);
                square--;
                if(square < 0) {
                    square = 4;
                }
                for(var k = 0; k < len; k++) {
                    olLiArr[k].className = "";
                }
                olLiArr[square].className = "current";
            }
            divArr[1].onclick = autoPlay;
            function autoPlay() {
                key++;
                //当不满足下面的条件是时候，轮播图到了最后一个孩子，进入条件中后，瞬移到
                //第一张，继续滚动。
                if(key > ul.children.length - 1) {
                    ul.style.left = 0;
                    key = 1;
                }
                animate(ul, -key * imgWidth);
                square++;
                if(square >4) {
                    square = 0;
                }
                for(var k = 0; k < len; k++) {
                    olLiArr[k].className = "";
                }
                olLiArr[square].className = "current";
            }
            function animate(ele,target){
                clearInterval(ele.timer);
                var speed = target>ele.offsetLeft?10:-10;
                ele.timer = setInterval(function () {
                    var val = target - ele.offsetLeft;
                    ele.style.left = ele.offsetLeft + speed + "px";
                    if(Math.abs(val)<Math.abs(speed)){
                        ele.style.left = target + "px";
                        clearInterval(ele.timer);
                    }
                },10)
            }

        }
        function animate(ele,target){
            clearInterval(ele.timer);
            var speed = target>ele.offsetLeft?10:-10;
            ele.timer = setInterval(function () {
                var val = target - ele.offsetLeft;
                ele.style.left = ele.offsetLeft + speed + "px";
                if(Math.abs(val)<Math.abs(speed)){
                    ele.style.left = target + "px";
                    clearInterval(ele.timer);
                }
            },10)
        }
        function animateY(ele, target) {
            //bug2 能够返回
            clearInterval(ele.timer);
            var speed = target > ele.offsetTop ? 10 : -10;

            ele.timer = setInterval(function () {
                var val = target - ele.offsetTop;
                ele.style.top = ele.offsetTop + speed + "px";
                if(Math.abs(val) <= 10) {
                    ele.style.top = target + "px";
                    clearInterval(timer);
                }
            }, 20)
        }
    </script>
</head>
<body>
<div class="header">
    <div class="center">
        <h1>多多</h1>
        <ul class="nav">
            <li id="bg"><a href="index.html" style="text-decoration: none;">首页</a>
            </li>
            <li><a href="index.html" style="text-decoration: none;">校园动态</a>
            </li>
            <li><a href="index.html" style="text-decoration: none;">校园留言</a>
            </li>
            <li><a href="index.html" style="text-decoration: none;">新闻热搜</a>
            </li>
            <li><a href="index.html" style="text-decoration: none;">购物车</a>
            </li>
            <li><a href="index.html" style="text-decoration: none;">注册</a>
            </li>
            <li><a href="login.html" style="text-decoration: none;">登录</a>
            </li>
        </ul>
    </div>
    <div class="search">
        <div class="searchbox">
            <input type="text" name="" id="txt-keyword" placeholder="搜索一下...." style="width: 300p;height: 45px">
            <button type="button" style="width: 60px;height: 30px;background-color: yellow">搜索</button>
        </div>
    </div>
</div>
<div class="body">
    <div class="all" id="all">
        <div class="screen" id="screen">
            <ul id="ul">
                <li><img src="img/2.webp" width="710" height="297"></li>
                <li><img src="img/3.webp" width="710" height="297"></li>
                <li><img src="img/4.webp" width="710" height="297"></li>
                <li><img src="img/5.webp" width="710" height="297"></li>
            </ul>
            <ol>
            </ol>
            <div id="arr">
                <span id="left"><</span>
                <span id="right">></span>
            </div>
        </div>
    </div>
    <div class="cate">
    </div>
    <div class="category">
        <ul>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
            <li>
                <a href="">手机
                    <i class="icon">》</i>
                </a>
            </li>
        </ul>
    </div>
    <div class="list_body">
        <div class="clearfix">
            <div class="first">
                <div class="up">
                    <a href="shubiaoinformation.html" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="shubiaoinformation.html" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="second">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="third">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="forth">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
        </div>
        <div class="clearfix">
            <div class="first">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="second">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="third">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="forth">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
        </div>
        <div class="clearfix">
            <div class="first">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="second">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="third">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
            <div class="forth">
                <div class="up">
                    <a href="" target="_blank">
                        <img src="img/6.png" alt="鼠标">
                    </a></div>
                <div class="down">
                    <a href="" target="_blank" class="good-title">鼠标</a><br>
                    <span class="good-price"  style="color: red">￥30</span>
                    <span class="pub-time fr">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于5天前</span></div>
            </div>
        </div>
    </div>
</div>
<div class="foot">
    <div class="footboot">
        <ul class="kl">
            <li>友情连接:</li>
            <li>二手交易</li>
            <li>校园二手街</li>
            <li>骑牛元</li>
            <li>免费视频</li>
            <li>极品福利</li>
            <li>免费服务器</li>
            <li>银行流水</li>
            <li>工资流水</li>
            <li>消费者权益</li>
        </ul>
        <ul class="ss">
            <li>本站所有信息均为用户自由发布，本站不对信息的真实性负任何责任，交易时请注意识别信息的真假如有网站内容侵害了您的权益请联系我们删除</li>
        </ul>
        <ul class="kk">
            <li>联系我们/contact us</li>
            <li>Q群： 438348346839</li>
            <li>QQ: 3758748478</li>
            <li>地址：南京市雨花台区软件大道</li>
        </ul>
    </div>
</div>
</body>
</html>
