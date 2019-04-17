<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/15
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <title>阿里小蜜</title>
    <meta id="WV.Meta.StopBounces" value="true">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="data-spm" content="a311a">
    <meta name="format-detection" content="telephone=no">
    <style>
        .m-alicare {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: 0;
            padding: 0;
            width: 100%;
            background-color: #F3F5F5;
        }

        .m-alicare-header,
        .m-alicare-footer {
            width: 100%;
            z-index: 2;
        }

        .m-alicare-header:empty {
            height: 60px;
            box-shadow: none;
        }

        .m-alicare-footer:empty {
            position: absolute;
            bottom: 0;
            left: 0;
            height: 80px;
        }

        .m-alicare-body:empty::after {
            content: "";
            display: block;
            width: 30px;
            margin: 18px 12px;
            padding: 20px;
            background-color: #FFF;
            background-image: url('//gw.alicdn.com/tfs/TB1vpdrRpXXXXb6aXXXXXXXXXXX-134-84.gif');
            background-repeat: no-repeat;
            background-position: center;
            background-size: 36px;
            border-radius: 20px 20px 20px 4px;
        }

        .m-alicare-header:empty::after,
        .m-alicare-footer:empty::after {
            content: "";
            display: block;
            width: 100%;
            height: 100%;
            background-color: #FFF;
            background-image:
                    linear-gradient(80deg, rgba(233, 233, 233, 0), rgba(233, 233, 233, .5) 50%, rgba(233, 233, 233, 0) 100%);
            background-repeat: repeat-y;
            background-size: 50% 100%;
            background-position: -100% 0;
            animation: shine 1.2s infinite;
        }

        @keyframes shine {
            to {
                background-position: 200% 0;
            }
        }
    </style>
    <link rel="stylesheet" href="./阿里小蜜_files/xiaomi.css">
</head>
<body data-spm="9588098">
<c:import url="head.jsp"></c:import>
<div class="m-alicare">
    <header class="m-alicare-header">
        <nav class="nav-bar">
            <div class="im-avatar">
                <div class="avatar-wrapper J_AvatarWrap">
                    <img src="./阿里小蜜_files/TB1cOtCayERMeJjSspiXXbZLFXa-144-143.png">
                </div>
            </div>
            <div class="im-title"><img src="./阿里小蜜_files/TB114bDayIRMeJjy0FbXXbnqXXa-220-44.png" class="title-image"></div>
            <div class="im-info">专门为你解决各类账户、订单、支付等问题，快速响应</div>
        </nav>
    </header>
    <div class="d-alicare-container">
        <div class="d-alicare-main">
            <div class="m-alicare-body" style="bottom: 126px;">
                <div class="m-alicare-chartPanel">
                    <div class="mod-body-column history">
                        <div class="m-history" aria-hidden="true">
                            <div class="m-history-item-0">
                                <div class="T_system m-chatpanel-item m-chatpanel-item-center  m-chatpanel-system " data-mid="">

                                    <div class="chat clearfix">
                                        <div class="J_Body body  ">
                                            <div class="J_Content content">
                                                今天 14:58
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="T_consumer m-chatpanel-item m-chatpanel-item-right  m-chatpanel-consumer "
                                     data-mid="1116958749963583488">

                                    <div class="chat clearfix">
                                        <div class="J_Body body  ">
                                            <div class="J_Content content">
                                                99
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="m-history-item-1">
                                <div class="T_recommend m-chatpanel-item m-chatpanel-item-left m-chatpanel-recommend "
                                     data-mid="1116958749976166400">

                                    <div class="chat clearfix">
                                        <div class="J_Body body  text-body">
                                            <div class="J_Content content">
                                                <ul>

                                                    <li class="J_Recommend" data-kid="1200389" data-orderid="" data-recommend=""
                                                        data-content="">
                                                        <a href="javascript:;">天猫积分兑换的地址是什么？</a>
                                                        <svg class="icon" aria-hidden="true">
                                                            <use xlink:href="#icon-send-half"></use>
                                                        </svg>
                                                    </li>

                                                </ul>

                                            </div>
                                            <div class="m-knowledge-rate">



                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="m-history-item-2">
                                <div class="T_system m-chatpanel-item m-chatpanel-item-center  m-chatpanel-system " data-mid="">

                                    <div class="chat clearfix">
                                        <div class="J_Body body  ">
                                            <div class="J_Content content">
                                                今天 16:59
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="T_consumer m-chatpanel-item m-chatpanel-item-right  m-chatpanel-consumer "
                                     data-mid="1116989262010724352">

                                    <div class="chat clearfix">
                                        <div class="J_Body body  ">
                                            <div class="J_Content content">
                                                aa
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
<c:import url="footer.jsp"></c:import>
</body>
</html>