<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/lib/Hui-iconfont/1.0.7/iconfont.css" />
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/lib/icheck/icheck.css" />
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/jj/ht/ht/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <title>新闻列表</title>
</head>
<body>
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 首页
    <span class="c-gray en">&gt;</span> 留言
    <span class="c-gray en">&gt;</span> 留言列表
    <a class="btn btn-success radius r"
       style="line-height: 1.6em; margin-top: 3px"
       href="javascript:location.replace(location.href);" title="刷新"><i
            class="Hui-iconfont">&#xe68f;</i>
    </a>
</nav>

    <div class="page-container">
        <div class="text-c">
            <form action="<%=path%>/findMoByMessage.do" method="post" id="findMoByMessage">
            <input type="text" class="input-text" style="width: 250px"
                placeholder="输入商品名称" id="CSpmc" name="CSpmc">
            <%--<input type="text" class="input-text" style="width: 250px"--%>
            <%--placeholder="输入编码" id="" name="hosNo">--%>
            <%--<select id="hosType" name="hosType"  style='width:250px;height:30px'>--%>
                <%--<option value="">全选</option>--%>
               <%--</select>--%>
            <button type="submit"  class="btn btn-success mhcx">
                <i class="Hui-iconfont">&#xe665;</i>查询
            </button>
                </form>
        </div>
        <div class="cl pd-5 bg-1 bk-gray mt-20">
					<span class="l"> <a href="javascript:;"
                                        onclick="admin_add('留言添加','jj/ht/message_add.jsp','600','500')"
                                        class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i>
                        添加留言</a>
					</span>
    </div>
        <table class="table table-border table-bordered table-bg">
            <thead>
            <tr>
                <th scope="col" colspan="9">
                    留言列表
                </th>
            </tr>
            <tr class="text-c">
                <th width="50" class="">
                    留言编码
                </th>
                <th width="120">
                    用户id
                </th>
                <th width="120">
                    用户姓名
                </th>
                <th width="120">
                    商品信息id
                </th>
                <th width="120">
                    商品名称
                </th>
                <th width="120">
                    留言内容
                </th>
                <th width="120">
                    创建时间
                </th>
                <th width="100">
                    操作
                </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${message}" var="m">
                <tr class="text-c">
                    <td class="">
                            ${m.CId}
                    </td>
                    <td>
                            ${m.CUserId}
                    </td>
                    <td>
                            ${m.CUserName}
                    </td>
                    <td>
                            ${m.CSpid}
                    </td>
                    <td>
                            ${m.CSpmc}
                    </td>
                    <td>
                            ${m.CLxnr}
                    </td>
                    <td>
                        <fmt:formatDate value="${m.DCjsj}" pattern="yyyy-MM-dd HH:mm:ss"/>

                    </td>
                    <td class="td-manage">
                        <a title="编辑" href="javascript:;"
                           onclick="admin_edit('留言编辑','${pageContext.request.contextPath}/findByCidMessage.do?cid=${m.CId}','1','600','500')"
                           class="ml-5" style="text-decoration: none"><i
                                class="Hui-iconfont">&#xe6df;</i>
                        </a>
                        <a title="删除" href="${pageContext.request.contextPath}/deleteMessage.do?cid=${m.CId}"
                           onclick="if(confirm('确定要删除吗?')==false)return false;"
                           class="ml-5"
                           style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <p align="center">

            总页数：${total}
            <a href="${pageContext.request.contextPath}/listMessage.do?index=${index-1}"><c:if
                    test="${index-1>0}">上一页</c:if> </a>
            <a href="${pageContext.request.contextPath}/listMessage.do?index=${index+1}"><c:if
                    test="${index<total}">下一页</c:if> </a>

        </p>
    </div>

<script type="text/javascript"
        src="<%=path%>/jj/ht/ht/lib/jquery/1.9.1/jquery.min.js">
</script>
<script type="text/javascript"
        src="<%=path%>/jj/ht/ht/lib/layer/2.1/layer.js">
</script>
<script type="text/javascript"
        src="<%=path%>/jj/ht/ht/lib/laypage/1.2/laypage.js">
</script>
<script type="text/javascript"
        src="<%=path%>/jj/ht/ht/static/h-ui/js/H-ui.js">
</script>
<script type="text/javascript"
        src="<%=path%>/jj/ht/ht/static/h-ui.admin/js/H-ui.admin.js">
</script>
<script type="text/javascript">
    /*
     参数解释：
     title	标题
     url		请求的url
     id		需要操作的数据id
     w		弹出层宽度（缺省调默认值）
     h		弹出层高度（缺省调默认值）
     */
    /*管理员-增加*/
    function admin_add(title, url, w, h) {

        layer_show(title, url, w, h);
    }
    /*管理员-删除*/
    function admin_del(obj, id) {
        layer.confirm('确认要删除吗？', function(index) {
            //此处请求后台程序，下方是成功后的前台处理……

            $(obj).parents("tr").remove();
            layer.msg('已删除!', {
                icon : 1,
                time : 1000
            });
        });
    }
    /*管理员-编辑*/
    function admin_edit(title, url, id, w, h) {
        layer_show(title, url, w, h);
    }
    $('.mhcx').on("click",function(){
        $('#findMoByMessage').submit();
//        var  cxbt ='CBt='+$('#CBt').val();
//        window.location.href =getHref()+'findMo.do?'+cxbt;
    })
    function getHref(){
        return  window.location.protocol + '//' + window.location.host +   window.location.pathname.substring(0, window.location.pathname.substring(1).indexOf('/')+1)+'/'
    }
    <%--
    $(function(){

        //加载所有学院
            $.post(
                      "${pageContext.request.contextPath}/hospital.do?getHospitalType",{},
                          function(data,status){
                              var html = "<option value="+''+">"+'全选'+"</option>";
                            for(var i=0;i<data.length;i++){
                                html += "<option value="+data[i].TYPE_CODE+">"+data[i].TYPE_NAME+"</option>";
                            }
                            $("#hosType").html(html);
                          }
                    );
        });
    --%></script>
</body>
</html>