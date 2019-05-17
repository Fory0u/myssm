<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/23
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>二手商城头部</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/res/static/css/main.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/res/layui/css/layui.css">
    <link rel="stylesheet" href="<%=path%>/res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="<%=path%>/res/jquery/jquery.min.js"></script>
    <script src="<%=path%>/jj/jjq/js/$json.js"></script>
    <script src="<%=path%>/res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/res/layui/layui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <style type="text/css">
        .header .mallSearch button{
            height: 35px;
        }
        .shell {
            width: 95%;
            margin: 10px auto;
            border-bottom: 1px solid #e6e6e6;
            padding: 10px 0;
            text-align: center;
            border-top: 1px solid #e6e6e6;
            height: 18px;
            position: relative;
            overflow: hidden;
        }


        #gongkao {
            position: absolute;
            top: 2px;
            left: 47%;
            transition: .8s;
        }

        #gongkao  a {
            display: block;
            line-height: 18px;
            text-decoration: none;
            color: #000;
            font-family: Arial;
            font-size: 16px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            height: 18px;
            width: 100%;
        }

        #gongkao   a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
​<div class="container ">
    <ul class="breadcrumb" style="text-align: right;">

        <li><a href="<%=path%>/jj/jjq/register.jsp"><span class="glyphicon glyphicon-user"></span>注册</a></li>
        <c:if test="${user==null}">
            <li><a href="<%=path%>/jj/jjq/login.jsp"><span class="glyphicon glyphicon-log-in"></span>登录</a></li>
        </c:if>
        <c:if test="${user!=null}">
            <li><i class="layui-icon layui-icon-username iphone-icon"></i>${user.CName}</li>
            <li><a href="${pageContext.request.contextPath}/logout.do">退出</a></li>
        </c:if>
        <li><a href="<%=path%>/shopcart.do?findShopCartByCId&cid=${shopcart.CId}" id="shopHref"><span class="glyphicon glyphicon-shopping-cart"></span> 我的购物车</a></li>
    </ul>
    <div class="form-inline">
        <div class="header">
            <div class="headerLayout ">
                <div class="headerCon">
                    <h1 class="mallLogo">
                        <a href="#" title="校园二手交易市场">
                            校园二手交易市场
                        </a>
                    </h1>
                    <div class="mallSearch">
                        <form action="<%=path%>/shop.do?findMoByShopQt" class="layui-form"  method="post">
                            <input type="text" name="CGjc" required="" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
                            <button class="layui-btn" lay-submit="" lay-filter="formDemo">
                                <i class="layui-icon layui-icon-search"></i>
                            </button>
                            <input type="hidden" name="" value="">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 导航栏 -->
    <!--第一种方法-->
    <div class="navbar-collapse collapse" >
        <ul class="nav navbar-nav" >
            <%--<li class="">--%>
                <%--<a href="#">首页</a>--%>
            <%--</li>--%>
            <li class="">
                <a href="<%=path%>/jj/jjq/index.jsp">首页</a>
            </li>
            <li class="">
                <a href="<%=path%>/shop.do?listShopQt">商品页面</a>
            </li>
            <li class="">
                <a href="<%=path%>/xydt.do?getAllXydtToQt">校园动态</a>
            </li>
            <li class="">
                <a href="<%=path%>/getAllMessageToQt.do">毕业留言</a>
            </li>
            <li class="">
                <a href="<%=path%>/jj/jjq/help.jsp">联系我们</a>
            </li>
        </ul>
    </div>
    <div class="shell">
        <div id="gongkao">
        </div>
    </div>

    ​</div>
<script>
    $(function () {
        $.ajax({
            url:getHref()+'getAllNewsToQt.do',
            dataType: 'json',
            type:"POST",
            contentType: "application/json;charset=UTF-8", //缺失会出现URL编码，无法转成json对象
            success:function (rs) {
                debugger
                var str ="";
                if(rs.success == "ok"){
                    for (var i =0;i<rs.newsList.length;i++){
                        str += "<a href=\"#\">"+rs.newsList[i].cbt+"</a>"
                    }
                    $('#gongkao').append(str);
                    var heigth = $('#gongkao a').height();
                    var $gongkao = $('#gongkao')
                    var i=0;
                    setInterval(function () {
                        $gongkao.css("top",(parseFloat($gongkao.css('top'))*1-heigth)+"px");
                        if($gongkao.height()-heigth-2 <= Math.abs(parseFloat($gongkao.css('top'))*1) ){
                            $gongkao.css("top",'2px')
                        }
                    },1000);


                }else{
                    $('#gongkao').append("暂无公告");
                }
                str ="";

            }
        })




    })
    var path = window.location.pathname.substring(0, window.location.pathname.substring(1).indexOf('/') + 1);

    function getHref() {
        return window.location.protocol + '//' + window.location.host + path + '/'
    }

    // var c, _ = Function;
    // with(o = document.getElementById("gongkao")) {
    //     innerHTML += innerHTML;
    //     onmouseover = _("c=1");
    //     onmouseout = _("c=0");
    // }
    // (F = _("if(#%9||!c)#++,#%=o.scrollHeight>>1;setTimeout(F,#%9?10:1500);".replace(/#/g, "o.scrollTop")))();
</script>
</body>
</html>


