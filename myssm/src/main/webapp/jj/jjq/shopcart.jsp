<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/15
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh-CN" xml:lang="zh-CN">

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <title>我的购物车-小米商城</title>
    <meta name="viewport" content="width=1226">


    <link rel="stylesheet" href="./shop购物车/base.min.css">
    <link rel="stylesheet" type="text/css" href="./shop购物车/cart.min.css">

</head>

<body>

<c:import url="head.jsp"></c:import>
<div class="page-main">

    <div class="container">


        <div id="J_cartBox" class="">
            <div class="addonitems-tips J_addonitemsTips">小米发货商品满150元免运费,还需<span>120.1<span>元<a
                    class="J_getaddItems" href="javascript:void(0);">去凑单 &gt;</a></span></span></div>
            <div class="cart-goods-list">
                <div class="list-head clearfix">
                    <div class="col col-check"><i class="iconfont icon-checkbox" id="J_selectAll">√</i>全选</div>
                    <div class="col col-img">&nbsp;</div>
                    <div class="col col-name">商品名称</div>
                    <div class="col col-price">单价</div>
                    <div class="col col-num">数量</div>
                    <div class="col col-total">小计</div>
                    <div class="col col-action">操作</div>
                </div>
                <div class="list-body" id="J_cartListBody">
                    <div class="item-box">
                        <div class="item-table J_cartGoods"
                             data-info="{ commodity_id:'1185000013', gettype:'buy', itemid:'2185000007_0_buy', num:'1'} ">
                            <div class="item-row clearfix">
                                <div class="col col-check"> <i
                                        class="iconfont icon-checkbox icon-checkbox  J_itemCheckbox"
                                        data-itemid="2185000007_0_buy" data-status="0">√</i> </div>
                                <div class="col col-img"> <a href="//item.mi.com/1185000013.html" target="_blank">
                                    <img alt="" src="./shop购物车/images/pms_1546058471.685154!80x80.jpg"
                                         width="80" height="80"> </a> </div>
                                <div class="col col-name">
                                    <div class="tags"> </div>
                                    <div class="tags"> </div>
                                    <h3 class="name"> <a href="//item.mi.com/1185000013.html" target="_blank">
                                        小米移动电源3 20000mAh 高配版 黑色 </a> </h3>
                                </div>
                                <div class="col col-price"> 199元 </div>
                                <div class="col col-num">
                                    <div class="change-goods-num clearfix J_changeGoodsNum"> <a
                                            href="javascript:void(0)" class="J_minus"><i class="iconfont"></i></a>
                                        <input type="text" name="2185000007_0_buy" value="1" data-num="1"
                                               data-buylimit="127" autocomplete="off"
                                               class="goods-num J_goodsNum" "=""> <a href=" javascript:void(0)"
                                                                                     class="J_plus"><i class="iconfont"></i></a> </div>
                                </div>
                                <div class="col col-total"> 199元 <p class="pre-info"> </p>
                                </div>
                                <div class="col col-action"> <a id="2185000007_0_buy" data-msg="确定删除吗？"
                                                                href="javascript:void(0);" title="删除" class="del J_delGoods"><i
                                        class="iconfont"></i></a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="item-box">
                        <div class="item-table J_cartGoods"
                             data-info="{ commodity_id:'1174100030', gettype:'buy', itemid:'2174100029_0_buy', num:'1'} ">
                            <div class="item-row clearfix">
                                <div class="col col-check"> <i
                                        class="iconfont icon-checkbox icon-checkbox-selected J_itemCheckbox"
                                        data-itemid="2174100029_0_buy" data-status="1">√</i> </div>
                                <div class="col col-img"> <a href="//item.mi.com/1174100030.html" target="_blank">
                                    <img alt="" src="./shop购物车/images/pms_1554721776.06777385!80x80.jpg"
                                         width="80" height="80"> </a> </div>
                                <div class="col col-name">
                                    <div class="tags"> </div>
                                    <div class="tags"> </div>
                                    <h3 class="name"> <a href="//item.mi.com/1174100030.html" target="_blank">
                                        小米USB充电器快充版（18W） 白色 </a> </h3>
                                </div>
                                <div class="col col-price"> 29.9元 </div>
                                <div class="col col-num">
                                    <div class="change-goods-num clearfix J_changeGoodsNum"> <a
                                            href="javascript:void(0)" class="J_minus"><i class="iconfont"></i></a>
                                        <input tyep="text" name="2174100029_0_buy" value="1" data-num="1"
                                               data-buylimit="5" autocomplete="off"
                                               class="goods-num J_goodsNum" "=""> <a href=" javascript:void(0)"
                                                                                     class="J_plus"><i class="iconfont"></i></a> </div>
                                </div>
                                <div class="col col-total"> 29.9元 <p class="pre-info"> </p>
                                </div>
                                <div class="col col-action"> <a id="2174100029_0_buy" data-msg="确定删除吗？"
                                                                href="javascript:void(0);" title="删除" class="del J_delGoods"><i
                                        class="iconfont"></i></a> </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- 加价购 -->
            <div class="raise-buy-box" id="J_raiseBuyBox"> </div>

            <div class="cart-bar clearfix" id="J_cartBar">
                <div class="section-left">
                    <a href="//list.mi.com/0" class="back-shopping J_goShoping" data-stat-id="b16361b4c5491b6d"
                       onclick="_msq.push(['trackEvent', '5df97b551662ffe7-b16361b4c5491b6d', '#', 'pcpid', '']);">继续购物</a>
                        <span class="cart-total">共 <i id="J_cartTotalNum">20</i> 件商品，已选择 <i id="J_selTotalNum">2</i>
                            件</span>
                        <span class="cart-coudan hide" id="J_coudanTip">
                            ，还需 <i id="J_postFreeBalance">11.20</i> 元即可免邮费 <a href="javascript:void(0);"
                                                                              id="J_showCoudan" data-stat-id="cfc8337d6cbfdef7"
                                                                              onclick="_msq.push(['trackEvent', '5df97b551662ffe7-cfc8337d6cbfdef7', 'javascript:void0', 'pcpid', '']);">立即凑单</a>
                        </span>
                </div>
                    <span class="activity-money hide">
                        活动优惠：减 <i id="J_cartActivityMoney">0</i> 元
                    </span>
                    <span class="total-price">
                        合计：<em id="J_cartTotalPrice">138.8</em>元
                    </span>
                <a href="javascript:void(0);" class="btn btn-a btn btn-primary" id="J_goCheckout"
                   data-stat-id="9bd56b7232f4ef1a"
                   onclick="_msq.push(['trackEvent', '5df97b551662ffe7-9bd56b7232f4ef1a', 'javascript:void0', 'pcpid', '']);">去结算</a>

                <div class="no-select-tip hide" id="J_noSelectTip">
                    请勾选需要结算的商品
                    <i class="arrow arrow-a"></i>
                    <i class="arrow arrow-b"></i>
                </div>
            </div>
        </div>

        <div class="cart-recommend hide" id="J_historyRecommend"></div>


        <!-- <div class="cart-recommend" id="J_miHistoryBox"></div> -->
    </div>
</div>




<!--js-->
<script type="text/javascript">
    // var formatImageUrl = function(url, size) {
    //   if (!url || !size) {
    //     return;
    //   }

    //   var dotIndex = url.lastIndexOf('.');
    //   var imgSuffix = url.slice(dotIndex);
    //   var urlMain = url.slice(0, dotIndex);
    //   var newUrl = urlMain + '!' + size + 'x' + size + imgSuffix;

    //   return newUrl;
    // };
    function formatImageUrl (path,size){
        var patt = /.jpg|.jpeg|.png/;
        var result = patt.exec(path);
        var thumb = path.indexOf('fds.api.mi-img.com') != -1;
        return thumb ? (path + '?thumb=1&w='+size + '&h=' + size) : path.replace(patt, ('!'+ size + 'x' + size + result));
    }
    var formatDate = function(now, temp) {
        if (!now) {
            return;
        }

        var d = new Date(parseInt(now) * 1000);
        var date = {
            Y: d.getFullYear(),
            M: d.getMonth() + 1,
            D: d.getDate(),
            h: d.getHours() < 10 ? '0' + d.getHours() : d.getHours(),
            m: d.getMinutes() < 10 ? '0' + d.getMinutes() : d.getMinutes(),
            s: d.getSeconds()
        };
        var str = temp || '##Y##-##M##-##D## ##h##:##m##:##s##';
        var key = '';

        for (var k in date) {
            if (date[k] >= 0) {
                key = '##' + k + '##';
                if (str.indexOf(key) >= 0) {
                    str = str.replace(key, date[k]);
                }
            }
        }

        return str;
    };
</script>

<script type="text/javascript">
    //精确乘法
    function mul(a, b) {
        var c = 0,
                d = a.toString(),
                e = b.toString();
        try {
            c += d.split(".")[1].length;
        } catch (f) {}
        try {
            c += e.split(".")[1].length;
        } catch (f) {}
        return Number(d.replace(".", "")) * Number(e.replace(".", "")) / Math.pow(10, c);
    }
    //精确减法
    function sub(a, b) {
        var c, d, e;
        try {
            c = a.toString().split(".")[1].length;
        } catch (f) {
            c = 0;
        }
        try {
            d = b.toString().split(".")[1].length;
        } catch (f) {
            d = 0;
        }
        return e = Math.pow(10, Math.max(c, d)), (mul(a, e) - mul(b, e)) / e;
    }</script>
<c:import url="footer.jsp"></c:import>
</body>

</html>
