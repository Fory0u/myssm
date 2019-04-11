<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/23
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>二手商城头部</title>
    <link rel="stylesheet" type="text/css" href="../../res/static/css/main.css">
    <link rel="stylesheet" type="text/css" href="../../res/layui/css/layui.css">
    <link rel="stylesheet" href="../../res/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="../../res/jquery/jquery.min.js"></script>
    <script src="../../res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../res/layui/layui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <style type="text/css">
        .header .mallSearch button{
            height: 35px;
        }
    </style>
</head>
<body>
​<div class="container ">
    <ul class="breadcrumb" style="text-align: right;">

        <li><a href="jj/jjq/register.jsp"><span class="glyphicon glyphicon-user"></span>注册</a></li>
<c:if test="${user==null}">
        <li><a href="jj/jjq/login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
    </c:if>
        <c:if test="${user!=null}">
            <li><i class="layui-icon layui-icon-username iphone-icon"></i>${user.CName}</li>
        </c:if>
        <li><a href="jj/jjq/wddd.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> 我的订单</a></li>
    </ul>
    <div class="form-inline">
        <div class="header">
            <div class="headerLayout ">
                <div class="headerCon">
                    <h1 class="mallLogo">
                        <a href="#" title="二手市场">
                            二手市场
                        </a>
                    </h1>
                    <div class="mallSearch">
                        <form action="" class="layui-form" novalidate="">
                            <input type="text" name="title" required="" lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
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
                <a href="#">首页</a>
            </li>
            <li class="">
                <a href="#">校园动态</a>
            </li>
            <li class="">
                <a href="#">通知公告</a>
            </li>
            <li class="">
                <a href="#">毕业留言</a>
            </li>
            <li class="">
                <a href="#">限时交流</a>
            </li>
            <li class="">
                <a href="#">联系我们</a>
            </li>
        </ul>
    </div>

    ​</div>
</body>
</html>


