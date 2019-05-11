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

    <link rel="stylesheet" href="<%=path%>/jj/jjq/商品详情页面/base.min.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/jj/jjq/商品详情页面/product_buy.min.css">
    <script src="<%=path%>/jj/jjq/商品详情页面/spxqym.js"></script>
    <style>
        a:focus, a:hover,a:active{
            text-decoration: none !important;
        }

        .btn{
            border-radius:0;
        }
        .container{
            width: 1280px !important;
        }
        .change-goods-num {
            width: 228px;
            height: 45px;
            border: 1px solid #e0e0e0;
            text-align: center;
            background-color: #fff;
            position: relative;
            zoom: 1;
            margin: 15px 0;
        }
        .change-goods-num a {
            float: left;
            width: 70px;
            height: 45px;
            line-height: 45px;
            color: #757575;
            font-size: 20px;
            -webkit-transition: all .3s;
            transition: all .3s;
        }
        .change-goods-num input {
            float: left;
            width: 72px;
            height: 42px;
            line-height: 42px;
            padding: 0;
            color: #424242;
            font-size: 16px;
            text-align: center;
            border: none;
        }
        #zj{
            float: none;
        }
        .loadingBox{
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,.5);
            z-index: 99;
            top: 0;
            position: fixed;
            display: none;
        }
        .loading{
            position: absolute;
            top: 50%;
            left: 45%;
            vertical-align: middle;
            color: #fff;
            font-size: 16px;
        }
        .loadingBox img {
            width: 28px;
            margin: 0 10px 0 0;
        }
        
        .popBox{
            z-index: 99;
            position: fixed;
            top: 30%;
            left: 41%;
            background: #fff;
            border: 1px solid #d6d6d6;
            display: none;
        }
        .popTop{
            width: 201px;
            font-size: 18px;
            height: 42px;
            padding: 12px 13px;
            background-color: #f5f5f5;
        }
        .popTop .popTitle{
            float: left;
            color:#424242;
        }
        .popTop .popClose{
            float: right;
            color: #757575;
            cursor: pointer;
        }
        .popMain{
            padding: 17px;
            text-align: center;
        }
        .popMain .popBtn{
            margin: 29px 0 0 0;
        }
        .popMain .popBtn span{
            background: #fff;
            color: #757575;
            display: inline-block;
            width: 68px;
            height: 30px;
            padding: 0;
            margin: 0;
            border: 1px solid #b0b0b0;
            font-size: 14px;
            line-height: 30px;
            text-align: center;
            cursor: pointer;
            -webkit-transition: all .4s;
            transition: all .4s;
        }
        .popFotter{

        }
        .clearfix::after{
            content: '';
            display: block;
            clear: both;
        }
    </style>
</head>
<body>
<c:import url="../head.jsp"></c:import>
    <div class="container" >
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
                                        <img  class="slider done" src="<%=path%>/jj/jjq/商品详情页面/images/pms_1477916442.08799062.jpg" style="float: none;list-style: none;position: absolute;width: 560px;z-index: 50;display: block;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pro-info span10">
                        <h1 class="pro-title J_proName">
                            <span class="img"></span>
                            <span class="name">${shop.CSpmc}</span>
                        </h1>
                        <!-- 提示 -->
                        <p class="sale-desc" id="J_desc">${shop.CSpms}</p>
                        <!-- 主体 -->
                        <div class="J_main">
                            <!-- 价格 -->
                            <div class="pro-price J_proPrice">
                                <span class="price">${shop.FSpjg}元 </span>
                                <span class="seckill-notic hide"><em></em><i></i><span><span> </span>
                                </span></span></div>
                            <div class="J_saleWrap sale-wrap">
                                <!-- 优惠券 -->
                                <div class="J_couponWrap coupon-wrap hide">
                                    <span class="coupon-tag">优惠券</span>
                                    <span class="coupon-name J_couponName"></span>
                                    <a class="J_getCouponList" href="javascript:void(0);"  >立即领取</a>
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
                                        <li class="btn btn-biglarge active" > <a href="javascript:void(0);" class="step-name">  白色 </a> </li>
                                        <li class="btn btn-biglarge" > <a href="javascript:void(0);" class="step-name">  白色 </a> </li>
                                    </ul>
                                </div>
                                <div class="pro-choose pro-choose-col2 J_step" data-index="0">
                                    <div class="step-title" data-name="选择数量">选择数量</div>
                                    <div class="change-goods-num clearfix J_changeGoodsNum">
                                        <a href="javascript:void(0)" class="J_minus"><i class="iconfont"></i></a>
                                        <input tyep="number" readonly="readonly" class="goods-num J_goodsNum" value="1" min="1" max="${shop.NSpsl}">
                                        <a href=" javascript:void(0)" class="J_plus"><i class="iconfont"></i></a>
                                    </div>
                                </div>
                            </div>


                            <div id="J_relation"></div>
                            <!-- 已选择的产品 -->
                            <div class="pro-list" id="J_proList">
                                <ul>
                                    <li>${shop.CSpmc}<span> ${shop.FSpjg} 元 </span> </li>
                                    <li class="totlePrice" data-name="common"> 总计 ：<span id="zj">${shop.FSpjg}</span>元 </li>
                                </ul>
                            </div>
                            <!-- 购买按钮 -->
                            <ul class="btn-wrap clearfix" id="J_buyBtnBox">
                                <li> <a href="javascript:void(0);" class="btn btn-primary  btn-biglarge J_proBuyBtn" id="addGwc">加入购物车</a> </li>
                                <li> <a href="#" class="btn-gray btn-like btn-biglarge"> <i class="iconfont default"></i>喜欢 </a>
                                </li>
                            </ul>
                            <div class="pro-policy" id="J_policy">
                                <a href="javascript:void(0);" title=""> <span class="support"> <i class="iconfont"></i> <em>自营</em> </span> </a>
                                <a href="javascript:void(0);" title="由校园二手系统发货"> <span class="support"> <i class="iconfont"></i> <em>校园二手系统发货</em> </span> </a>
                                <a href="javascript:void(0);" title=""> <span class="support"> <i class="iconfont"></i> <em>7天无理由退货</em> </span> </a>
                                <a href="javascript:void(0);" title="由校园二手系统发货的商品，单笔满150元免运费;由第三方商家发货的商品，免运费;特殊商品需要单独收取运费，具体以实际结算金额为准；优惠券等不能抵扣运费金额;"> <span class="support"> <i class="iconfont"></i><em>运费说明</em> </span></a>
                                <a href="javascript:void(0);" target="_blank" title=""> <span class="support"> <i class="iconfont"></i> <em>售后服务政策</em> </span> </a> </div>
                        </div>


                    </div>
                </div>


            </div>
        </div>
    </div>
    <div class="loadingBox">
        <div class="loading"><img src="<%=path%>/jj/jjq/img/loading.gif" alt="#">正在加载</div>
    </div>
    <div class="popBox">
        <div class="popTop clearfix">
            <div class="popTitle">
                提示
            </div>
            <div class="popClose">
                X
            </div>
        </div>
        <div class="popMain">
            <div class="popMessage">购物车添加成功</div>
            <div class="popBtn">
                <span>关闭</span>
            </div>
        </div>
        <div class="popFotter">
        </div>
    </div>
<form id="addGwcForm" style="-display:none;">
    <!--当前商品的id-->
    <input type="text" id="spid_this" name="spid_this" placeholder="商品id_当前" value="${shop.CId}">
    <input type="text" id="spmc_this" name="spmc_this" placeholder="商品名称_当前" value="${shop.CSpmc}">
    <input type="text" id="spdj_this" name="spdj_this" placeholder="商品单价_当前" value="${shop.FSpjg}">
    <input type="text" id="spsl_this" name="spsl_this" placeholder="商品数量_当前" value="">


    <input type="text" id="shopcartid" name="shopcartid" placeholder="购物车id" value="${shopcart.CId}">
    <input type="text" id="spid" name="spid" placeholder="商品id" value="${shopcart.CSpid}">
    <input type="text" id="spmc"  name="spmc"  placeholder="商品名称" value="${shopcart.CSpmc}">
    <input type="text" id="spdj" name="spdj" placeholder="商品单价" value="${shopcart.CSpdj}">
    <input type="text" id="spsl" name="spsl" placeholder="商品数量" value="${shopcart.CSpsl}">
</form>
<c:import url="../footer.jsp"></c:import>
</body>
</html>
