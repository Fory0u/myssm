<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/18
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>二手商城首页</title>
    <%--<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="http://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="./shops商品/base.css" rel="stylesheet" media="all">
    <link href="./shops商品/sysp.css" rel="stylesheet" media="all">
    <script type="text/javascript" src="./shops商品/sysp.js"></script>
</head>
<body>
<c:import url="head.jsp"></c:import>
​<div class="container">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- 指示器 -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <!-- 轮播图片及说明文字 -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/13.jpg" alt="图片1">
            </div>
            <div class="item">
                <img src="img/16.png" alt="图片2">
            </div>
            <div class="item">
                <img src="img/17.png" alt="图片3">
            </div>
        </div>
        <!-- 控制按钮：左右切换 -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
    <div class="form-inline" style="margin-left: 20px">
        <h3>热门分类</h3>
        <a href="#"><img src="img/19.jpg" class="img-thumbnail"></a>
        <a href="#"><img src="img/20.jpg" class="img-thumbnail" style="margin-left: 10px">
        </a>
        <a href="#"><img src="img/21.jpg" class="img-thumbnail" style="margin-left: 10px">
        </a>
        <a href="#"><img src="img/22.jpg" class="img-thumbnail" style="margin-left: 10px">
        </a>
        <a href="#"><img src="img/19.jpg" class="img-thumbnail" style="margin-left: 10px">
        </a>
    </div>
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
                    <li>
                        <h2 class="tTit" title="北京租房区域">位置</h2>
                        <div class="tCon">
                            <dl class="adrMenu">
                                <dd class="curDd"><a href="/zufang">区域</a></dd>
                                <dd><a href="/zufang/subway/">地铁</a></dd>
                            </dl>
                        </div>
                        <div style="clear:both"></div>
                        <div class="adrCon">
                            <div class="quyu block">
                                <ul class="new_di_tab sTab">
                                    <a href="/zufang/" title="北京租房">
                                        <li class="new_di_tab_cur">全部<span class="new_icon"></span>
                                        </li>
                                    </a>
                                    <a href="/zufang/chaoyangqu/" title="北京朝阳租房">
                                        <li class="">朝阳<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/haidianqu/" title="北京海淀租房">
                                        <li class="">海淀<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/dongchengqu/" title="北京东城租房">
                                        <li class="">东城<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/xichengqu/" title="北京西城租房">
                                        <li class="">西城<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/fengtaiqu/" title="北京丰台租房">
                                        <li class="">丰台<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/shijingshanqu/" title="北京石景山租房">
                                        <li class="">石景山<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/tongzhouqu/" title="北京通州租房">
                                        <li class="">通州<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/changpingqu/" title="北京昌平租房">
                                        <li class="">昌平<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/daxingqu/" title="北京大兴租房">
                                        <li class="">大兴<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/yizhuang/" title="北京亦庄租房">
                                        <li class="">亦庄<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/shunyiqu/" title="北京顺义租房">
                                        <li class="">顺义<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/fangshanqu/" title="北京房山租房">
                                        <li class="">房山<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/mentougou/" title="北京门头沟租房">
                                        <li class="">门头沟<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/pinggu/" title="北京平谷租房">
                                        <li class="">平谷<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/huairou/" title="北京怀柔租房">
                                        <li class="">怀柔<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/miyun/" title="北京密云租房">
                                        <li class="">密云<span class="new_icon"></span></li>
                                    </a>
                                    <a href="/zufang/yanqing/" title="北京延庆租房">
                                        <li class="">延庆<span class="new_icon"></span></li>
                                    </a>
                                </ul>
                            </div>
                            <div class="ditie">
                                <ul class="new_di_tab dTab">
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h2 class="tTit" title="北京租房价格">租金</h2>
                        <div class="tCon">
                            <a href="/zufang/p1/" rel="nofollow"><span class="inputSty "></span>1500元以下</a>
                            <a href="/zufang/p2/" rel="nofollow"><span class="inputSty "></span>1500-2500元</a>
                            <a href="/zufang/p3/" rel="nofollow"><span class="inputSty "></span>2500-3500元</a>
                            <a href="/zufang/p4/" rel="nofollow"><span class="inputSty "></span>3500-5000元</a>
                            <a href="/zufang/p5/" rel="nofollow"><span class="inputSty "></span>5000-8000元</a>
                            <a href="/zufang/p6/" rel="nofollow"><span class="inputSty "></span>8000-10000元</a>
                            <a href="/zufang/p7/" rel="nofollow"><span class="inputSty "></span>10000元以上</a>
                            <div class="iTxt">
                                <input id="priceLow" type="text" maxlength="8"> ~ <input id="priceTop" type="text"
                                                                                         maxlength="8">
                                <span id="priceUnit"></span><input class="btnQ" type="button" value="确定"
                                                                   onclick="customPrice();">
                            </div>
                        </div>
                    </li>

                    <li>
                        <h2 class="tTit" title="北京租房户型">户型</h2>
                        <div class="tCon">
                            <a href="/zufang/r1/" rel="nofollow"><span class="inputSty "></span>一室</a>
                            <a href="/zufang/r2/" rel="nofollow"><span class="inputSty "></span>二室</a>
                            <a href="/zufang/r3/" rel="nofollow"><span class="inputSty "></span>三室</a>
                            <a href="/zufang/r4/" rel="nofollow"><span class="inputSty "></span>四室</a>
                            <a href="/zufang/r5/" rel="nofollow"><span class="inputSty "></span>五室</a>
                            <a href="/zufang/r9/" rel="nofollow"><span class="inputSty "></span>五室以上</a>
                        </div>
                    </li>


                    <li>
                        <div class="moreBtn">
                            <em class="bor1"></em>
                            <em class="bor2"></em>
                            <span>更多<i class="mBg"></i></span>
                        </div>
                    </li>
                    <li class="tj">
                        <h2 class="tTit" title="北京租房条件">条件</h2>
                        <div class="tCon">
                            <div class="btn-box">
                                <em class="bcBtn" onclick="saveCondition();"><i></i>保存</em>
                                <em class="qkBtn" onclick="cleanSelect();"><i></i>清空</em>
                            </div>
                        </div>
                    </li>
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
                <img src="商品/images/main/home/nav-left.jpg" alt="">
            </div>
            <div class="hm-el-ma-rgt f-lf">
                <ul class="hm-el-ma-rgt-top clearfix">
                    <li class="li-m-rgt">
                        <a href="#">
                            <img src="商品/images/main/home/01.jpg" alt="">
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
                            <img src="商品/images/main/home/02.jpg" alt="">
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
                            <img src="商品/images/main/home/01.jpg" alt="">
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
                            <img src="商品/images/main/home/04.jpg" alt="">
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
                            <img src="商品/images/main/home/01.jpg" alt="">
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
                            <img src="商品/images/main/home/02.jpg" alt="">
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
                            <img src="商品/images/main/home/01.jpg" alt="">
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
                            <img src="商品/images/main/home/04.jpg" alt="">
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

    ​</div>


<c:import url="footer.jsp"></c:import>
</body>
</html>


