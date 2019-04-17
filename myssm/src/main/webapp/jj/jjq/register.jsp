<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/24
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="../../res/static/css/main.css">
    <link rel="stylesheet" type="text/css" href="../../res/layui/css/layui.css">
    <script type="text/javascript" src="../../res/layui/layui.js"></script>
    <script type="text/javascript" src="../../res/jquery/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }

        .aquare{
            width: 293px !important;
            height: 360px !important;
            background-color: rgba(255, 255, 255, 0.6) !important;
            /* margin-top: 150px; */
            /* float: right; */
            position: absolute !important;
            padding: 0px 24px !important;
            top: 15% !important;
            right: 5% !important;
            border: 1px solid #d9dadc !important;
        }

    </style>
</head>
<body>
<div class="login-content">
    <div class="login login-bg">
        <div class="body login-cont">
            <div class="aquare form-box ">
                <form class="layui-form" id="loginForm" action="/login.do" method="post">
                    <legend>账户注册</legend>
                    <div class="layui-form-item">
                        <div class="layui-inline iphone">
                            <div class="layui-input-inline">
                                <i class="layui-icon layui-icon-username iphone-icon"></i>
                                <input required type="text" name="loginid" id="loginid"  placeholder="请设置用户名" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline  iphone">
                            <div class="layui-input-inline">
                                <i class="layui-icon layui-icon-password iphone-icon"></i>
                                <input required id="password" type="password" name="password" placeholder="请设置密码"  class="layui-input">
                            </div>
                        </div>
                    </div>
                    <div class="layui-form-item login-btn">
                        <div class="layui-input-block" style="  padding: 0 !important;">
                            <%--<input required class="layui-btn" type="submit" value="登录">--%>
                            <button class="layui-btn" lay-submit="" lay-filter="demo1" onclick="login()">注册</button>
                        </div>
                    </div>
                </form>
            </div>


        </div>
    </div>
</div>
<script type="text/javascript">
    //    $(function () {
    //
    //
    //    })
    function login(){
        $('#loginForm').submit();
//            $('#loginForm').serialize()
    }

</script>
</body>
</html>

