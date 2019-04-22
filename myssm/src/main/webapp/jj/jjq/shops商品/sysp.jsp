<%--
  Created by IntelliJ IDEA.
  User: GXD
  Date: 2019/4/20
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="<%=path%>/jj/jjq/shops商品/base.css">
    <link rel="stylesheet" href="<%=path%>/jj/jjq/shops商品/sysp.css">
    <script src="<%=path%>/jj/jjq/shops商品/sysp.js"></script>
</head>

<body>
<c:import url="../head.jsp"></c:import>
<div class="container">
    <div class="pxTab">
        <div class="hreFbox">
            <!--            <div class="hreF">
                    <a class="aCur" href="/zufang/">租房</a><a target="_blank" href="/xiaoqu">小区</a><a target="_blank" href="/map" class="noBor" onmousedown="_trackData.push(['addaction','PC_BJ_租房表页','地图找房按钮']);ga('send','event','PC_BJ_租房表页','地图找房按钮','PC_BJ_租房表页_地图找房按钮');">地图找房</a>
                </div>-->
        </div>
        <ul class="menusTab">
            <li class="cur01 cur"><a href="/zufang/">条件筛选</a></li>
        </ul>
        <!-- select start-->
        <div class="pxMain">
            <div class="pxMain_con block">
                <ul class="tiaoBox">
                    <li class="clearfix">
                        <h2 class="tTit" title="商品分类">商品分类</h2>
                        <div class="tCon">
                            <a href="/zufang/r1/" rel="nofollow"><span class="inputSty "></span>一室</a>
                            <a href="/zufang/r9/" rel="nofollow"><span class="inputSty "></span>五室以上</a>
                        </div>
                    </li>
                    <li class="clearfix">
                        <h2 class="tTit" title="商品价格">商品价格</h2>
                        <div class="tCon">
                            <a href="/zufang/p1/" rel="nofollow"><span class="inputSty "></span>1500元以下</a>
                            <a href="/zufang/p7/" rel="nofollow"><span class="inputSty "></span>10000元以上</a>
                            <%--<div class="iTxt">--%>
                                <%--<input id="priceLow" type="text" maxlength="8"> ~ <input id="priceTop" type="text"--%>
                                                                                         <%--maxlength="8">--%>
                                <%--<span id="priceUnit"></span><input class="btnQ" type="button" value="确定"--%>
                                                                   <%--onclick="customPrice();">--%>
                            <%--</div>--%>
                        </div>
                    </li>
                    <li class="clearfix">
                        <h2 class="tTit" title="商品数量">商品数量</h2>
                        <div class="tCon">
                            <a href="/zufang/r1/" rel="nofollow"><span class="inputSty "></span>一室</a>
                            <a href="/zufang/r9/" rel="nofollow"><span class="inputSty "></span>五室以上</a>
                        </div>
                    </li>
                    <li class="clearfix">
                        <div class="moreBtn">
                            <em class="bor1"></em>
                            <em class="bor2"></em>
                            <%--<span>更多<i class="mBg"></i></span>--%>
                        </div>
                    </li>
                    <%--<li class="tj">--%>
                        <%--<h2 class="tTit" title="北京租房条件">条件</h2>--%>
                        <%--<div class="tCon">--%>
                            <%--<div class="btn-box">--%>
                                <%--<em class="bcBtn" ><i></i>保存</em>--%>
                                <%--<em class="qkBtn" ><i></i>清空</em>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                </ul>
                <!-- <script>
                    var saveconditions = "";
                    var saveconditionsurl = "zufang/";
                    var type = "1";
                </script> -->
            </div>
        </div>
    </div>
    <div class="home-electronic w1226-m">
        <h3 class="h3-title">家电</h3>
        <div class="hm-el-main clearfix">
            <div class="hm-el-ma-lf f-lf">
                <img src="images/main/home/nav-left.jpg" alt="">
            </div>
            <div class="hm-el-ma-rgt f-lf">
                <ul class="hm-el-ma-rgt-top clearfix">
                    <li class="li-m-rgt">
                        <a href="#">
                            <img src="images/main/home/01.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                    <li class="li-m-rgt">
                        <a href="#">
                            <img src="images/main/home/02.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <i class="new">新品</i>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                    <li class="li-m-rgt">
                        <a href="#">
                            <img src="images/main/home/01.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/main/home/04.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                </ul>
                <ul class="hm-el-ma-rgt-bottom clearfix">
                    <li class="li-m-rgt">
                        <a href="#">
                            <img src="images/main/home/01.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                    <li class="li-m-rgt">
                        <a href="#">
                            <img src="images/main/home/02.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <i class="new">新品</i>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                    <li class="li-m-rgt">
                        <a href="#">
                            <img src="images/main/home/01.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/main/home/04.jpg" alt="">
                        </a>
                        <p class="title">
                            <a href="#">米家恒温电水壶</a>
                        </p>
                        <p class="info">
                            水温智能控制，304 不锈钢内胆
                        </p>
                        <p class="price">199元</p>
                        <div class="more">
                            <a href="#">
                                <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                            </a>
                            <a href="#">
                                <span class="author"> 来自于 胡尔卿 的评价 </span>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<form action="/shop.do?searchByTj" method="post" >
    <input type="text" id="spfl" placeholder="商品分类">
    <input type="text" id="spjgmin" placeholder="商品价格最小值" value="0.01">
    <input type="text" id="spjgmax" placeholder="商品价格最大值" value="99999999">
    <input type="text" id="spslmin" placeholder="商品数量最小值" value="1">
    <input type="text" id="spslmax" placeholder="商品数量最大值" value="999">
    <input type="submit">
</form>
<c:import url="../footer.jsp"></c:import>
</body>

</html>
