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
            var CUserId = document.getElementById("CUserId").value;
            var CUserName = document.getElementById("CUserName").value;
            var CSpid = document.getElementById("CSpid").value;
            var CSpmc = document.getElementById("CSpmc").value;
            var CLxnr = document.getElementById("CLxnr").value;
            var DCjsj = document.getElementById("DCjsj").value;
            if(DCjsj.length==0){
                alert("请输入用户id");
                return false;
            }
            if(CUserName.length==0){
                alert("请输入用户姓名！");
                return false;
            }

            if(CSpid.length==0){
                alert("请输入商品信息id!");
                return false;
            }
            if(CSpmc.length==0){
                alert("请选择商品名称!");
                return false;
            } if(CLxnr.length==0){
                alert("请输入留言内容!");
                return false;
            }
            if(DCjsj.length==0){
                alert("请输入创建时间!");
                return false;
            }else{
                document.getElementById("form-admin-add").submit();
                return true;

            }
        }
    </script>
</head>
<body>
<article class="page-container">
    <form class="form form-horizontal" id="form-admin-add" action="/addMessage.do" method="post" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户i(对应用户表C_id)：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" id="CUserId" name="CUserId" placeholder="用户i(对应用户表C_id)" style="width: 250px">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户姓名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" placeholder="用户姓名" id="CUerName" name="CUerName" style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>商品信息id：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" placeholder="商品信息id" id="CSpid" name="CSpid" style="width: 250px">
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
        <%--<div class="row cl">--%>
            <%--<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>商品名称：</label>--%>
            <%--<div class="formControls col-xs-8 col-sm-9">--%>
                <%--<select id="CType" name="CType"  style='width:250px;height:30px'>--%>
                    <%--<option value ="1">强制性公告</option>--%>
                    <%--<option value ="2">指挥性公告</option>--%>
                    <%--<option value ="3">决策性公告</option>--%>
                <%--</select>--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>商品名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" placeholder="商品名称" id="CSpmc" name="CSpmc" style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>留言内容：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" placeholder="留言内容" id="CLxnr" name="CLxnr" style="width: 250px">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>创建时间：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" autocomplete="off" placeholder="创建时间" id="DCjsj" name="DCjsj" style="width: 250px">
            </div>
        </div>
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