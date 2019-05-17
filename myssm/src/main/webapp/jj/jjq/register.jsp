<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/24
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
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
        #dlBtn{
            width: 100%;
            background: #cfb2f6;
            font-size: 18px;
        }
    </style>
</head>
<body>
<div class="login-content">
    <div class="login login-bg">
        <div class="body login-cont">
            <div class="aquare form-box ">
                <form class="layui-form" id="loginForm" action="<%=path%>/register.do" method="post">
                    <legend>账户注册</legend>
                    <div class="layui-form-item">
                        <div class="layui-inline iphone">
                            <div class="layui-input-inline">
                                <i class="layui-icon layui-icon-user iphone-icon"></i>
                                <input required type="text" name="CName" id="CName"  placeholder="请设置用户名" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline iphone">
                            <div class="layui-input-inline">
                                <i class="layui-icon layui-icon-username iphone-icon"></i>
                                <input required type="text" name="CLoginId" id="CLoginId"  placeholder="请设置登录id" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-inline iphone">
                            <div class="layui-input-inline">
                                <i class="layui-icon layui-icon-password iphone-icon"></i>
                                <input required id="CPassWord" type="password" name="CPassWord" placeholder="请设置密码"  class="layui-input">
                            </div>
                        </div>
                        <%--<div class="layui-inline  iphone">--%>
                            <%--<div class="layui-input-inline">--%>
                                <%--<img class="layui-icon yzm " style="position: absolute;right: 1px;top: 1px;width: 106px;height: 37px;" src="https://img.showapi.com/images/temp/20190512/94335a4c-7310-4f77-aae0-bff1e72550c2.jpg">--%>
                                <%--<input  id="yzm" type="text" name="yzm" placeholder="请输入验证码" class="layui-input" style="padding-left: 21px;">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    </div>
                    <div class="layui-form-item login-btn">
                        <div class="layui-input-block" style="  padding: 0 !important;">
                            <%--<input required class="layui-btn" type="submit" value="登录">--%>
                                <input type="button" class="layui-btn"   value="注册" id="dlBtn">
                        </div>
                    </div>
                    <input type="hidden" name="NFlag" id="NFlag"  value="1">
                </form>
            </div>


        </div>
    </div>
</div>
<script type="text/javascript">
    // $(function () {
    //     //以下代码仅为演示用,具体传入参数请参看接口描述详情页.
    //     //需要引用jquery库
    //     // var text;
    //     // function formatterDateTime() {
    //     //     var date=new Date()
    //     //     var month=date.getMonth() + 1
    //     //     var datetime = date.getFullYear()
    //     //         + ""// "年"
    //     //         + (month >= 10 ? month : "0"+ month)
    //     //         + ""// "月"
    //     //         + (date.getDate() < 10 ? "0" + date.getDate() : date
    //     //             .getDate())
    //     //         + ""
    //     //         + (date.getHours() < 10 ? "0" + date.getHours() : date
    //     //             .getHours())
    //     //         + ""
    //     //         + (date.getMinutes() < 10 ? "0" + date.getMinutes() : date
    //     //             .getMinutes())
    //     //         + ""
    //     //         + (date.getSeconds() < 10 ? "0" + date.getSeconds() : date
    //     //             .getSeconds());
    //     //     return datetime;
    //     // }
    //
    //     // function getYzm(){
    //     //    text="";
    //     //     $.ajax({
    //     //         type: 'post',
    //     //         url: 'http://route.showapi.com/26-4',
    //     //         dataType: 'json',
    //     //         data: {
    //     //             "showapi_timestamp": formatterDateTime(),
    //     //             "showapi_appid": '94843', //这里需要改成自己的appid
    //     //             "showapi_sign": 'e5738c3230f64646a8f30fa74d6df332',  //这里需要改成自己的应用的密钥secret
    //     //             "border":"",
    //     //             "border_color":"105,179,90",
    //     //             "border_thickness":"",
    //     //             "image_width":"",
    //     //             "image_height":"",
    //     //             "textproducer_char_string":"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
    //     //             "textproducer_char_length":"4",
    //     //             "textproducer_font_names":"",
    //     //             "textproducer_font_size":"",
    //     //             "textproducer_font_color":"105,179,90",
    //     //             "textproducer_char_space":"",
    //     //             "noise_color":"105,179,90",
    //     //             "obscurificator_impl":""
    //     //         },
    //     //         success: function(result) {
    //     //             debugger
    //     //             text=result.showapi_res_body.text;
    //     //             $('.yzm').attr('src',result.showapi_res_body.img_path_https);
    //     //         }
    //     //     });
    //     // }
    //     // getYzm();
    //     // $('.yzm').click(function () {
    //     //     getYzm()
    //     // })
    //
    //     $('#dlBtn').click(function () {
    //         // if((text.toLowerCase() == $('#yzm').val() )|| (text.toUpperCase() == $('#yzm').val() )){
    //         $('#loginForm').submit();
    //         // }else{
    //         //     alert("验证码错误");
    //         //     getYzm();
    //         //     return;
    //         // }
    //     })
    //
    // });

    $(function () {
        $('#dlBtn').click(function () {
            var flag =true;
            var v1 = $('#CLoginId').val();
            var v2 = $('#CPassWord').val();

            if("" == v1){
                alert('用户名不能为空');
                $('#CLoginId').val("")
                flag =false
            }
            else if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]{3,18}$").test(v1)){
                alert('用户名格式有误');
                $('#CLoginId').val("")
                flag =false

            }
            else if(/(^\_)|(\__)|(\_+$)/.test(v1)){
                alert('用户名首尾不能出现下划线\'_\'');
                $('#CLoginId').val("")
                flag =false
            }
            else if(/^\d+\d+\d$/.test(v1)){
                alert('用户名不能全为数字');
                $('#CLoginId').val("")
                flag =false
            }
            if(!flag)  return;

            if("" == v2){
                alert('密码不能为空');
                // $('#CLoginId').val("")
                $('#CPassWord').val("");
                flag =false
            }
            else if(!(/^[a-z0-9_-]{3,18}$/.test(v2))){
                alert('密码格式有误');
                // $('#CLoginId').val("")
                $('#CPassWord').val("");
                flag =false
            }


            // if((text.toLowerCase() == $('#yzm').val() )|| (text.toUpperCase() == $('#yzm').val() )){
            //  alert("提交")
            if(flag)
                $('#loginForm').submit();
            // }else{
            //     alert("验证码错误");
            //     getYzm();
            //     return;
            // }
        })

    });
</script>
</body>
</html>

