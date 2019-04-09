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
        function validate() {
            var CBt = document.getElementById("CBt").value;
            var CFbt = document.getElementById("CFbt").value;
            var CNr = document.getElementById("CNr").value;
            var CType = document.getElementById("CType").value;
            if(CBt.length==0){
                alert("请输入标题");
                return false;
            }
            if(CFbt.length==0){
                alert("请输入副标题！");
                return false;
            }

            if(CNr.length==0){
                alert("请输入内容!");
                return false;
            }
            if(CType.length==0){
                alert("请选择公告类型!");
                return false;
//            } if(DCjsj.length==0){
//                alert("请输入创建时间!");
//                return false;
//            }
//            if(DGxsj.length==0){
//                alert("请输入跟新时间!");
//                return false;
            }else{
                document.getElementById("form-admin-add").submit();
                return true;

            }
        }
    </script>
</head>
<body>
<article class="page-container">
    <form class="form form-horizontal" id="form-admin-add" action="/addNews.do" method="post" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" id="CBt" name="CBt" placeholder="标题" style="width: 250px">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>副标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" placeholder="副标题" id="CFbt" name="CFbt" style="width: 250px">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>内容：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" placeholder="内容" id="CNr" name="CNr" style="width: 250px">
            </div>
        </div>

        <!-- <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>性别：</label>
            <div class="formControls col-xs-8 col-sm-9">
                    <select id="userAgender" name="userAgender"  style='width:250px;height:30px'>
                    <option value ="男">男</option>
                    <option value ="女">女</option>
                      </select>
            </div>
        </div> -->
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>公告类型：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <select id="CType" name="CType"  style='width:250px;height:30px'>
                    <option value ="强制性公告">强制性公告</option>
                    <option value ="指挥性公告">指挥性公告</option>
                    <option value ="决策性公告">决策性公告</option>
                </select>
            </div>
        </div>
        <%--<div class="row cl">--%>
            <%--<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>创建时间：</label>--%>
            <%--<div class="formControls col-xs-8 col-sm-9">--%>
                <%--<input type="text" class="input-text" autocomplete="off" placeholder="创建时间" id="DCjsj" name="DCjsj" style="width: 250px">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="row cl">--%>
            <%--<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>更新时间：</label>--%>
            <%--<div class="formControls col-xs-8 col-sm-9">--%>
                <%--<input type="text" class="input-text" autocomplete="off" placeholder="创建时间" id="DGxsj" name="DGxsj" style="width: 250px">--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button" onclick="validate()" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
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