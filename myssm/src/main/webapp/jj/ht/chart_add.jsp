<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
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
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link href="./ht/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="./ht/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
    <link href="./ht/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
    <link href="./ht/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />

    <title>公告添加</title>
    <script language="javascript" type="text/javascript">
        // function validate() {
        //     var CGjc = document.getElementById("CGjc").value;
        //     var CFhxx = document.getElementById("CFhxx").value;
        //     if(CGjc.length==0){
        //         alert("请输入关键词");
        //         return false;
        //     }
        //     if(CFhxx.length==0){
        //         alert("请输入返回信息！");
        //         return false;
        //     }else{
        //         document.getElementById("form-admin-add").submit();
        //         return true;
        //
        //     }
        // }
    </script>
</head>
<body>
<article class="page-container">
    <form class="form form-horizontal" id="form-admin-add" action="/addChart.do" method="post" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>关键词：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="text" class="input-text" id="CGjc" name="CGjc" placeholder="关键词" style="width: 250px">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>返回信息：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input required type="text" class="input-text" autocomplete="off" placeholder="返回信息" id="CFhxx" name="CFhxx" style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input required class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>

<%--<!--_footer 作为公共模版分离出去--> --%>
<script type="text/javascript" src="http://lib.h-ui.net/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/layer/2.1/layer.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="http://lib.h-ui.net/jquery.validation/1.14.0/validate-methods.js"></script>
<%--<script type="text/javascript" src="http://lib.h-ui.net/jquery.validation/1.14.0/messages_zh.min.js"></script> --%>
<%--<script type="text/javascript" src="./ht/static/h-ui/js/H-ui.js"></script>--%>
<%--<script type="text/javascript" src="./ht/static/h-ui.admin/js/H-ui.admin.js"></script>--%>
<%--<!--/_footer /作为公共模版分离出去--> --%>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
    $(function(){
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-admin-add").validate({
            rules:{
                adminName:{
                    required:true,
                    minlength:4,
                    maxlength:16
                },
                password:{
                    required:true,
                },
                adminRole:{
                    required:true,
                },
            },
            onkeyup:false,
            focusCleanup:true,
            success:"valid",
            submitHandler:function(form){
                $(form).ajaxSubmit();
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }
        });
    });
    <%--
    $(function(){

        //加载所有学院
            $.post(
                      "${pageContext.request.contextPath}/hospital.do?getHospitalType",{},
                          function(data,status){
                              var html = "";
                            for(var i=0;i<data.length;i++){
                                html += "<option value="+data[i].TYPE_CODE+">"+data[i].TYPE_NAME+"</option>";
                            }
                            $("#hos_type").html(html);
                          }
                    );
        });
    --%></script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>