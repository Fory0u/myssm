<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/15
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <title>客服</title>
    <meta id="WV.Meta.StopBounces" value="true">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="data-spm" content="a311a">
    <meta name="format-detection" content="telephone=no">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<%=path%>/jj/jjq/js/$json.js"></script>
    <link rel="stylesheet" href="<%=path%>/jj/jjq/客服/xiaomi.css">
    <script src="<%=path%>/jj/jjq/客服/help.js"></script>
    <style>
        body{
            overflow: auto !important;
        }
        .m-alicare{
            position: absolute;
            top: 295px;
            bottom: 0;
            left: 204px;
            right: 0;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            width: 73%;
            overflow: hidden;
            min-width: 600px;
            min-height: 520px;
        }
        .m-alicare-footer {
            z-index: 2;
            border-bottom: 1px solid;
            border-left: 1px solid;
            border-right: 1px solid;
            border-color: #eeeeee;
        }
        .m-input-panel {
            box-sizing: border-box;
            padding: 0 20px 0 ;
        }
        .im-title {
            float: left;
            position: relative;
            left: 16px;
            top: 10px;
            color: #377bb7;
            /* font-size: 24px; */
            font: 28px "Comic Sans MS";
            /* color: white; */
            text-shadow: 3px -1px 4px #337ab7;
        }
    </style>
</head>
<body >
<c:import url="head.jsp"></c:import>
<div class="container" style="
    height: 560px;
">
    <div class="m-alicare">
        <header class="m-alicare-header">
            <nav class="nav-bar">
                <div class="im-avatar">
                    <div class="avatar-wrapper J_AvatarWrap">
                        <img src="./客服/TB1cOtCayERMeJjSspiXXbZLFXa-144-143.png">
                    </div>
                </div>
                <div class="im-title">客服小蜜</div>
                <div class="im-info">专门为你解决各类账户、订单、支付等问题，快速响应</div>
            </nav>
        </header>
         <div class="d-alicare-container">
            <div class="d-alicare-main">
                <div class="m-alicare-body" style="bottom: 126px;">
                    <div class="m-alicare-chartPanel">
                        <div class="mod-body-column history">
                            <div class="m-history" aria-hidden="true">
                                <div class="m-history-item-1">
                                    <div class="T_recommend m-chatpanel-item m-chatpanel-item-left m-chatpanel-recommend ">
                                        <div class="chat clearfix">
                                            <div class="J_Body body  text-body">
                                                <div class="J_Content content">
                                                    <ul>
                                                        <li class="J_Recommend">
                                                            <a href="javascript:;">Hi，${user.CName}，你好，小蜜在此等主人很久了，有什么烦恼快和小蜜说说吧～</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="m-alicare-footer">
                    <div class="m-footer-panel">
                        <div class="J_InputWrap m-input-wrap">
                            <!--扩展-->
                            <div class="m-input-toolbar J_InputToolbar">
                                <div class="m-input-toolbar-panel">
                                    <!--输入-->
                                    <div class="m-input-form J_InputForm">
                                        <div class="m-input-panel">
                                            <div class="panel J_Panel">
                                                <div class="m-input-wrap">
                                                    <div class="keyboard-wrap">
                                                        <textarea placeholder="有问题 找小蜜 " class="textarea J_Field"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="m-input-btn J_InputBtn">
                                                <button class="btn send-btn J_SendMessageButton">
                                                    发送
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<c:import url="footer.jsp"></c:import>
</body>
</html>