<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/lib/Hui-iconfont/1.0.7/iconfont.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/lib/icheck/icheck.css"/>
    <title>编辑用户 </title>
    <meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
    <meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
    <form class="form form-horizontal" id="form-dish-edit" action="<%=path%>/shop.do?updateShop" method="post" target="_parent">
        <div class="row cl" style="display:none;">
            <label class="form-label col-xs-4 col-sm-3">id：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="text" class="input-text" value="${shop.CId}" name="CId" readonly="readonly"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl" style="display: none;">
            <label class="form-label col-xs-4 col-sm-3">商品所有人id：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="text" class="input-text" value="${shop.CUserId}" name="CUserId"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">商品所有人姓名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <select id="CUserName" name="CUserName" style='width:250px;height:30px'>
                </select>
                <input required type="hidden" class="input-text" value="${shop.CUserName}" id="CUserNameOld"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">商品名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="text" class="input-text" value="${shop.CSpmc}" name="CSpmc"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">商品描述：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="text" class="input-text" value="${shop.CSpms}" name="CSpms"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">商品价格：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="number" class="input-text"  step="0.01" value="${shop.FSpjg}" name="FSpjg"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">商品数量：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="number" class="input-text" value="${shop.NSpsl}" name="NSpsl"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">商品类型：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="hidden" class="input-text" value="${shop.CType}" id="CTypeOld"
                       style="width: 250px">
                <select id="CType" name="CType" style='width:250px;height:30px'>

                </select>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">操作人：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="text" class="input-text" value="${user.CId}" name="CCzr"
                       style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input required class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;保存&nbsp;&nbsp;"
                       style="width: 250px">
            </div>
        </div>
    </form>
</article>

<script type="text/javascript" src="http://lib.h-ui.net/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/layer/2.1/layer.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/jquery.validation/1.14.0/messages_zh.min.js"></script>

<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
    $(function () {
        $("#form-dish-edit").validate({

            onkeyup: false,
            focusCleanup: true,
            success: "valid",
            submitHandler: function (form) {
                $(form).ajaxSubmit();
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }
        });


        (function () {

            var $ctypeold = $('#CTypeOld');
            var $usernameold = $("#CUserNameOld");

            //所有人id和姓名
            var $cuserid = $('#CUserId');
            var $cusername = $('#CUserName');
            var $ctype = $('#CType');

            //获取所有用户
            $.ajax({
                url:'${pageContext.request.contextPath}/getAllUser.do',
                type:"POST",
                success:function(rs){
                    console.log(rs)

                    for (var i=0;i<rs.length;i++){

                        var $dom = $("<option value ='"+rs[i].c_name+"' data-id='"+rs[i].c_id+"'>"+rs[i].c_name+"</option>")
                        if($dom.attr('value') ==  $usernameold.val()){
                            $dom.attr('selected','selected');
                        }
                        $cusername.append($dom);
                    }


                }
            })

            //获取所有商品类型
            $.ajax({
                url:'${pageContext.request.contextPath}/splx.do?getAllSplx',
                type:"POST",
                success:function(rs){
                    console.log(rs)

                    for (var i=0;i<rs.length;i++){

                        var $dom = $("<option value ='"+rs[i].c_id+"' >"+rs[i].c_lxmc+"</option>")
                        if($dom.attr('value') ==  $ctypeold.val()){
                            $dom.attr('selected','selected');
                        }
                        $ctype.append($dom);
                    }
                }
            })


            $cusername.on('change',function () {
                $cuserid.val($(this).find('option:checked').data("id"));
                // console.log($cuserid.val())
            })

        })();







    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>