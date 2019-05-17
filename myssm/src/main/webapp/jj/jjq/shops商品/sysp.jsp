<%--
  Created by IntelliJ IDEA.
  User: GXD
  Date: 2019/4/20
  Time: 22:54
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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>首页商品展示</title>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<%=path%>/jj/jjq/js/$json.js"></script>
    <link rel="stylesheet" href="<%=path%>/jj/jjq/shops商品/base.css">
    <link rel="stylesheet" href="<%=path%>/jj/jjq/shops商品/sysp.css">
    <script src="<%=path%>/jj/jjq/shops商品/sysp.js"></script>
    <style>
        a:focus, a:hover,a:active{
            text-decoration: none !important;
        }
    </style>
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
            <li class="cur01 cur"><a href="#">条件筛选</a></li>
        </ul>
        <!-- select start-->
        <div class="pxMain">
            <div class="pxMain_con block">
                <ul class="tiaoBox">
                    <li class="clearfix">
                        <h2 class="tTit" title="商品分类">商品分类</h2>
                        <div class="tCon">
                            <c:forEach items="${listSplx}" var="o">
                                <a href="#" rel="nofollow" class="spfl">
                                    <span class="inputSty " data-info="${o.c_id}">
                                    </span>${o.c_lxmc}
                                </a>
                            </c:forEach>
                        </div>
                    </li>
                    <li class="clearfix" >
                        <h2 class="tTit" title="商品价格">商品价格</h2>
                        <div class="tCon">
                            <a href="#" rel="nofollow" class="spjg"><span class="inputSty " data-minjg="0" data-maxjg="100"></span>0~100</a>
                            <a href="#" rel="nofollow" class="spjg"><span class="inputSty " data-minjg="100" data-maxjg="1000"></span>100~1000</a>
                            <a href="#" rel="nofollow" class="spjg"><span class="inputSty " data-minjg="1000" data-maxjg="2000"></span>1000~2000</a>
                            <a href="#" rel="nofollow" class="spjg"><span class="inputSty " data-minjg="2000" data-maxjg="" ></span>2000元以上</a>

                        </div>
                    </li>
                    <li class="clearfix">
                        <h2 class="tTit" title="商品数量">商品数量</h2>
                        <div class="tCon">
                            <a href="#" rel="nofollow" class="spsl" ><span class="inputSty " data-minsl="0" data-maxsl="0"></span>空</a>
                            <a href="#" rel="nofollow" class="spsl" ><span class="inputSty " data-minsl="0" data-maxsl="5"></span>5件及以下</a>
                            <a href="#" rel="nofollow" class="spsl" ><span class="inputSty " data-minsl="5" data-maxsl="10"></span>10件及以下</a>
                            <a href="#" rel="nofollow" class="spsl" ><span class="inputSty " data-minsl="10" data-maxsl=""></span>10件以上</a>
                        </div>
                    </li>
                    <li class="clearfix">
                        <div class="moreBtn">
                            <em class="bor1"></em>
                            <em class="bor2"></em>
                            <span id="clearTj">清空条件<i class="mBg"></i></span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="home-electronic w1226-m" id="shopLxMain">
        <c:forEach items="${listSplx}" var="o">
            <h3 class="h3-title">${o.c_lxmc}</h3>
            <div class="hm-el-main clearfix">
                <div class="hm-el-ma-lf f-lf">
                    <img src="<%=path%>/jj/jjq/shops商品/images/main/home/nav-left.jpg" alt="">
                </div>
                <div class="hm-el-ma-rgt f-lf">
                    <ul class="hm-el-ma-rgt-top clearfix shopListMain">
                        <c:forEach var="shop" items="${o.listSp}" varStatus="aa">
                            <li <c:if test="${aa.count%4!=0}" >class="li-m-rgt"</c:if> onclick="toSpxqym(this)" data-spid="${shop.c_id}">
                                <a href="#">
                                    <%--<img src="<%=path%>/jj/jjq/shops商品/images/main/home/0${aa.count}.jpg" alt="">--%>
                                    <img src="<%=path%>/upload/${shop.c_photo}" alt="">
                                </a>
                                <p class="title">
                                    <a href="#">${shop.c_spmc}</a>
                                </p>
                                <p class="info">
                                        ${shop.c_spms}
                                </p>
                                <p class="price">${shop.f_spjg}</p>
                                <div class="more">
                                    <a href="#">
                                        <span class="review">优雅的我烧一壶优雅的水，再泡一壶优雅的茶与客服妹子共享</span>
                                    </a>
                                    <a href="#">
                                        <span class="author"> 来自于 胡尔卿 的评价 </span>
                                    </a>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<form id="shopTj" style="display:none;">
    <input type="text" id="spfl" name="spfl" placeholder="商品分类">
    <input type="text" id="spjgmin" name="spjgmin" placeholder="商品价格最小值" value="">
    <input type="text" id="spjgmax" name="spjgmax" placeholder="商品价格最大值" value="">
    <input type="text" id="spslmin" name="spslmin" placeholder="商品数量最小值" value="">
    <input type="text" id="spslmax" name="spslmax" placeholder="商品数量最大值" value="">

</form>
<c:import url="../footer.jsp"></c:import>
</body>

</html>
