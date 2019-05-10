<%--
  Created by IntelliJ IDEA.
  User: GXD
  Date: 2019/5/7
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>商品详情页面</title>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<%=path%>/jj/jjq/js/$json.js"></script>
    <link rel="stylesheet" href="<%=path%>/jj/jjq/shops商品/base.css">
    <link rel="stylesheet" href="<%=path%>/jj/jjq/shops商品/sysp.css">
    <script src="<%=path%>/jj/jjq/shops商品/sysp.js"></script>
</head>
<body>
    <div class="container">
        <div class="xm-buyBox" id="J_buyBox">
            <div class="box clearfix">

                <div class="pro-choose-main container clearfix">
                    <div class="pro-view span10">
                        <!-- 左侧轮播图 -->

                        <div id="J_img" class="img-con" style="left: 61.5px;">

                            <div class="ui-wrapper" style="max-width: 100%;">
                                <div class="ui-viewport"
                                     style="width: 100%; overflow: hidden; position: relative; height: 560px;">
                                    <div id="J_sliderView" class="sliderWrap" style="width: auto;position: relative;">
                                        <img  class="slider done" src="./images/pms_1477916442.08799062.jpg" style="float: none;list-style: none;position: absolute;width: 560px;z-index: 50;display: block;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro-info span10">
                        <h1 class="pro-title J_proName">
                            <span class="img"></span>
                            <span class="name">米家空气净化器Pro</span>
                        </h1>
                        <!-- 提示 -->
                        <p class="sale-desc" id="J_desc">OLED 显示屏幕 / 激光颗粒物传感器 / 500m³/h颗粒物 CADR / 60㎡适用面积</p>

                        <!-- 主体 -->
                        <div class="J_main">


                            <!-- 价格 -->
                            <div class="pro-price J_proPrice">
                                <span class="price">1499元 </span>
                                <span class="seckill-notic hide"><em></em><i></i><span><span> </span>
                                </span></span></div>


                            <div class="J_saleWrap sale-wrap">
                                <!-- 优惠券 -->
                                <div class="J_couponWrap coupon-wrap hide">
                                    <span class="coupon-tag">优惠券</span>
                                    <span class="coupon-name J_couponName"></span>
                                    <a class="J_getCouponList" href="javascript:void(0);" data-stat-id="7ac17e9d38644527"
                                       onclick="_msq.push(['trackEvent', '5422244440bbee22-7ac17e9d38644527', 'javascript:void0', 'pcpid', '']);">立即领取</a>
                                </div>
                                <!-- 4g -->
                                <div class="J_flowWrap flow-wrap">
                                    <ul>
                                        <li> <span class="flow-tag">赠品</span> <span class="flow-name">赠米粉卡，最高含100元话费</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>


                            <!-- 产品版本 -->
                            <div class="list-wrap" id="J_list">
                                <!-- 2级选择模板 -->
                                <div class="pro-choose pro-choose-col2 J_step" data-index="0">
                                    <div class="step-title" data-name="选择颜色"> 选择颜色 </div>
                                    <ul class="step-list clearfix">
                                        <li class="btn btn-biglarge active" data-id="2164300024" data-cid="1164300033"
                                            data-name="米家空气净化器Pro 白色" data-price="1499元" data-value="白色" data-index="0"> <a
                                                href="javascript:void(0);" class="step-name"> <img
                                                src="https://i8.mifile.cn/v1/a1/b315ba2c-3dc0-1352-3fbf-b23ffad1bb0f.jpg"
                                                data-src="//i8.mifile.cn/v1/a1/b315ba2c-3dc0-1352-3fbf-b23ffad1bb0f.jpg"
                                                alt="白色" class="icon done"> 白色 </a> </li>

                                        <li class="btn btn-biglarge" data-id="2164300024" data-cid="1164300033"
                                            data-name="米家空气净化器Pro 白色" data-price="1499元" data-value="白色" data-index="0"> <a
                                                href="javascript:void(0);" class="step-name"> <img
                                                src="https://i8.mifile.cn/v1/a1/b315ba2c-3dc0-1352-3fbf-b23ffad1bb0f.jpg"
                                                data-src="//i8.mifile.cn/v1/a1/b315ba2c-3dc0-1352-3fbf-b23ffad1bb0f.jpg"
                                                alt="白色" class="icon done"> 白色 </a> </li>
                                    </ul>
                                </div>
                            </div>


                            <div id="J_relation"></div>
                            <!-- 已选择的产品 -->
                            <div class="pro-list" id="J_proList">
                                <ul>
                                    <li>米家空气净化器Pro 白色 <span> 1499 元 </span> </li>
                                    <li class="totlePrice" data-name="common"> 总计 ：1499元 </li>
                                </ul>
                            </div>
                            <!-- 购买按钮 -->
                            <ul class="btn-wrap clearfix" id="J_buyBtnBox">
                                <li> <a href="javascript:void(0);" class="btn btn-primary  btn-biglarge J_proBuyBtn"
                                        data-type="common" data-isbigtap="false" data-name="加入购物车">加入购物车</a> </li>
                                <li> <a href="//order.mi.com/site/login?redirectUrl=https://item.mi.com/product/4802.html"
                                        class="btn-gray btn-like btn-biglarge"> <i class="iconfont default"></i>喜欢 </a>
                                </li>
                            </ul>
                            <div class="pro-policy" id="J_policy"> <a href="javascript:void(0);" title=""> <span
                                    class="support"> <i class="iconfont"></i> <em>小米自营</em> </span> </a> <a
                                    href="javascript:void(0);" title="由小米发货"> <span class="support"> <i
                                    class="iconfont"></i> <em>小米发货</em> </span> </a> <a href="javascript:void(0);"
                                                                                         title=""> <span class="support"> <i class="iconfont"></i> <em>7天无理由退货</em> </span> </a>
                                <a href="javascript:void(0);" title="由小米发货的商品，单笔满150元免运费;
由第三方商家发货的商品，免运费;
特殊商品需要单独收取运费，具体以实际结算金额为准；优惠券等不能抵扣运费金额;"> <span class="support"> <i class="iconfont"></i> <em>运费说明</em> </span> </a> <a
                                        href="https://m.mi.com/aftersale/policy/7" target="_blank" title=""> <span
                                        class="support"> <i class="iconfont"></i> <em>售后服务政策</em> </span> </a> </div>
                        </div>


                    </div>
                </div>


            </div>
        </div>
    </div>

</body>
</html>
