<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html >
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta charset="UTF-8">
	<title>我的购物车-小米商城</title>
	<meta name="viewport" content="width=1226">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<%=path%>/jj/jjq/js/$json.js"></script>
	<link rel="stylesheet" href="<%=path%>/jj/jjq/商品详情页面/base.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/jj/jjq/shop购物车/cart.min.css">
    <script src="<%=path%>/jj/jjq/shop购物车/shopcat.js"></script>
    <style>
        a:focus, a:hover,a:active{
            text-decoration: none !important;
        }

        .btn{
            border-radius:0;
        }
        .container{
            width: 1262px !important;
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
    <div class="page-main">
        <div class="container">
            <div id="J_cartBox" class="">
                <div class="cart-goods-list">
                    <div class="list-head clearfix">
                        <div class="col col-check"><i class="iconfont icon-checkbox icon-checkbox-selected" id="J_selectAll">√</i>全选</div>
                        <div class="col col-img">&nbsp;</div>
                        <div class="col col-name">商品名称</div>
                        <div class="col col-price">单价</div>
                        <div class="col col-num">数量</div>
                        <div class="col col-total">小计</div>
                        <div class="col col-action">操作</div>
                    </div>
                    <div class="list-body" id="J_cartListBody">
                        <c:forEach items="${shopList}" var="o">
                        <div class="item-box">
                            <div class="item-table J_cartGoods" >
                                <div class="item-row clearfix">
                                    <input type="hidden" value="${o.CId}" class="shopCId">
                                    <div class="col col-check">
                                        <i class="iconfont icon-checkbox icon-checkbox-selected J_itemCheckbox" >√</i>
                                    </div>
                                    <div class="col col-img">
                                        <a href="#" target="_blank">
                                            <img alt="" src="./images/pms_1554721776.06777385!80x80.jpg" width="80" height="80">
                                        </a>
                                    </div>
                                    <div class="col col-name">
                                        <h3 class="name"> <a href="#" target="_blank">${o.CSpmc}</a> </h3>
                                    </div>
                                    <div class="col col-price">${o.FSpjg}</div>
                                    <div class="col col-num">
                                        <div class="change-goods-num clearfix J_changeGoodsNum">
                                            <a href="javascript:void(0)" class="J_minus"><i class="iconfont"></i></a>
                                            <input type="number" class="goods-num J_goodsNum" value="${o.MAxSl}" min="1" max="${o.NSpsl}" readonly="readonly">
                                            <a href=" javascript:void(0)" class="J_plus"><i class="iconfont"></i></a>
                                        </div>
                                    </div>
                                    <div class="col col-total"> ${o.FSpjg}元 <p class="pre-info"> </p> </div>
                                    <div class="col col-action">
                                        <a id="2174100029_0_buy" class="del J_delGoods"><i class="iconfont"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="raise-buy-box" id="J_raiseBuyBox"> </div>
                <div class="cart-bar clearfix" id="J_cartBar">
                    <div class="section-left">
                        <a href="<%=path%>/shop.do?listShopQt" class="back-shopping J_goShoping" >继续购物</a>
                        <span class="cart-total">共 <i id="J_cartTotalNum"></i> 件商品，已选择 <i id="J_selTotalNum"></i>
                                件</span>
                    </div>
                    <span class="total-price">
                            合计：<em id="J_cartTotalPrice"></em>元
                        </span>
                    <a href="javascript:void(0);" class="btn btn-a btn btn-primary" id="J_goCheckout"  >结算</a>
                </div>
            </div>
            <div class="cart-recommend hide" id="J_historyRecommend"></div>
        </div>
    </div>
    <form id="addOrderForm" style="display:none;">
        <input type="text" id="username" name="username" placeholder="用户姓名" value="${user.CName}">
        <input type="text" id="userid" name="userid" placeholder="用户id" value="${user.CId}">

        <input type="text" id="spid" name="spid" placeholder="商品id" >
        <input type="text" id="spmc" name="spmc" placeholder="商品名称" >
        <input type="text" id="spdj" name="spdj" placeholder="商品单价" >
        <input type="text" id="spsl" name="spsl" placeholder="商品数量" >

        <input type="text" id="spzs" name="spzs" placeholder="商品总数" >
        <input type="text" id="spzj" name="spzj" placeholder="商品总价" >
        <%--1未支付 2已完成--%>
        <input type="text" id="ddzt" name="ddzt" placeholder="订单状态" value="2">
    </form>
    <c:import url="../footer.jsp"></c:import>
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
            <div class="popMessage">商品结算成功！</div>
            <div class="popBtn">
                <span>确定</span>
            </div>
        </div>
        <div class="popFotter">
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


</body>
</html>