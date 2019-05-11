<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>商品留言页面</title>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<%=path%>/jj/jjq/js/$json.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <script type="text/javascript" src="<%=path%>/jj/jjq/留言/ly.js"> </script>

    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            /*background: url("bg.jpg") no-repeat fixed;*/
        }

        #qq {
            width: 600px;
            /*宽*/
            height: 170px;
            /*高*/
            background: #fff;
            /*背景颜色*/
            margin: 50px auto 30px;
            border-radius: 5px;
            /*Html5 圆角*/
        }

        #qq p {
            font-size: 12px;
            color: #666;
            font-family: "微软雅黑";
            line-height: 45px;
            text-indent: 20px;
        }

        #qq .message {
            width: 560px;
            height: 70px;
            margin: 0 auto;
            overflow: hidden;
            outline: none;
            border: 1px solid #ddd;
            padding: 8px;
            box-sizing: border-box;
            font-size: 14px;
            -webkit-background-clip: text;
            color: transparent;
            background-image: linear-gradient(to right, #778899 0%, #333 100%);
            /*粗细 风格 颜色*/
        }

        #qq .But {
            width: 560px;
            height: 35px;
            margin: 15px auto 0px;
            position: relative;
            /*相对，参考对象*/
        }

        #qq .But img.bq {
            float: left;
            /*左浮动*/
        }

        #qq .But span.submit {
            width: 80px;
            height: 30px;
            background: #ff8140;
            display: block;
            float: right;
            /*右浮动*/
            line-height: 30px;
            border-radius: 5px;
            cursor: pointer;
            /*手指*/
            color: #fff;
            font-size: 12px;
            text-align: center;
            font-family: "微软雅黑";
        }

        /*face begin*/
        #qq .But .face {
            width: 440px;
            background: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 0 12px #666;
            position: absolute;
            /*绝对定位*/
            top: 21px;
            left: 15px;
            display: none;
            /*隐藏*/
        }

        #qq .But .face ul {
            width: 100%;
            height: 100%;
            display: flex;
            flex-wrap: wrap;
            padding: 8px;
            box-sizing: border-box;
        }

        #qq .But .face ul li {
            width: 30px;
            height: 30px;
            list-style-type: none;
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /*msgCon begin*/
        .msgCon {
            width: 600px;
            margin: 0px auto;
            margin-bottom: 60px;
        }

        .msgCon .msgBox {
            background: #fff;
            padding: 10px;
            box-sizing: border-box;
            margin-top: 16px;
            border-radius: 4px;
        }

        .msgCon .msgBox .headUrl {
            width: 100%;
            height: 60px;
            border-bottom: 1px dotted #ddd;
            display: flex;
            align-items: center;
        }

        .msgCon .msgBox .headUrl img {
            width: 46px;
            height: 46px;
            border-radius: 50%
        }

        .msgCon .msgBox .headUrl div {
            flex: 1;
            display: flex;
            flex-flow: column;
            font-size: 16px;
            margin-left: 16px;
            -webkit-background-clip: text;
            color: transparent;
            background-image: linear-gradient(to top, #b224ef 0%, #7579ff 100%);
        }

        .msgCon .msgBox .headUrl div .time {
            font-size: 14px;
            margin-top: 6px;
            -webkit-background-clip: text;
            color: transparent;
            background-image: linear-gradient(to right, #74ebd5 0%, #9face6 100%);
        }

        .msgCon .msgBox .headUrl a {
            font-size: 14px;
            padding: 10px;
            color: salmon;
            cursor: pointer;
        }

        .msgCon .msgBox .msgTxt {
            font-size: 14px;
            color: #666;
            min-height: 40px;
            line-height: 24px;
            padding: 10px;
            box-sizing: border-box;
            word-wrap: break-word;
            -webkit-background-clip: text;
            color: transparent;
            background-image: linear-gradient(to right, #778899 0%, #333 100%);
        }
    </style>


</head>

<body style="">
<c:import url="./head.jsp"></c:import>
<div id="qq">
    <p>欢迎来到商品评论区</p>
    <div class="message" contenteditable="true"></div>
    <div class="But">
        <img src="<%=path%>/jj/jjq/留言/bba_thumb.gif" class="bq">
        <span class="submit">发表</span>
        <select class="form-control" style="
            /* display: inline-block; */
            float: right;
            margin: 0 21px 0 0;
            width: 31%;
            height: 33px;
            padding: 0px 11px;
        ">
            <option value="0" checked >请选择要评论的商品</option>
            <c:forEach var="o" items="${shopList}">
                <option value="${o.CId}">${o.CSpmc}</option>
            </c:forEach>
        </select>
        <!--face begin-->
        <div class="face" style="display: none;">
            <ul>
                <li><img src="<%=path%>/jj/jjq/留言/smilea_thumb.gif" title="呵呵]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/tootha_thumb.gif" title="嘻嘻]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/laugh.gif" title="[哈哈]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/tza_thumb.gif" title="[可爱]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/kl_thumb.gif" title="[可怜]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/kbsa_thumb.gif" title="[挖鼻屎]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/cj_thumb.gif" title="[吃惊]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/shamea_thumb.gif" title="[害羞]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/zy_thumb.gif" title="[挤眼]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/bz_thumb.gif" title="[闭嘴]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/bs2_thumb.gif" title="[鄙视]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/lovea_thumb.gif" title="[爱你]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sada_thumb.gif" title="[泪]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/heia_thumb.gif" title="[偷笑]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/qq_thumb.gif" title="[亲亲]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sb_thumb.gif" title="[生病]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/mb_thumb.gif" title="[太开心]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/ldln_thumb.gif" title="[懒得理你]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/yhh_thumb.gif" title="[右哼哼]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/zhh_thumb.gif" title="[左哼哼]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/x_thumb.gif" title="[嘘]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/cry.gif" title="[衰]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/wq_thumb.gif" title="[委屈]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/t_thumb.gif" title="[吐]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/k_thumb.gif" title="[打哈气]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/bba_thumb.gif" title="[抱抱]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/angrya_thumb.gif" title="[怒]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/yw_thumb.gif" title="[疑问]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/cza_thumb.gif" title="[馋嘴]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/88_thumb.gif" title="[拜拜]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sk_thumb.gif" title="[思考]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sweata_thumb.gif" title="[汗]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sleepya_thumb.gif" title="[困]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sleepa_thumb.gif" title="[睡觉]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/money_thumb.gif" title="[钱]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sw_thumb.gif" title="[失望]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/cool_thumb.gif" title="[酷]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/hsa_thumb.gif" title="[花心]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/hatea_thumb.gif" title="[哼]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/gza_thumb.gif" title="[鼓掌]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/dizzya_thumb.gif" title="[晕]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/bs_thumb.gif" title="[悲伤]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/crazya_thumb.gif" title="[抓狂]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/h_thumb.gif" title="[黑线]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/yx_thumb.gif" title="[阴险]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/nm_thumb.gif" title="[怒骂]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/hearta_thumb.gif" title="[心]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/unheart.gif" title="[伤心]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/pig.gif" title="[猪头]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/ok_thumb.gif" title="[ok]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/ye_thumb.gif" title="[耶]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/good_thumb.gif" title="[good]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/no_thumb.gif" title="[不要]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/z2_thumb.gif" title="[赞]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/come_thumb.gif" title="[来]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/sad_thumb.gif" title="[弱]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/lazu_thumb.gif" title="[蜡烛]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/clock_thumb.gif" title="[钟]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/cake.gif" title="[蛋糕]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/m_thumb.gif" title="[话筒]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/weijin_thumb.gif" title="[围脖]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/lxhzhuanfa_thumb.gif" title="[转发]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/lxhluguo_thumb.gif" title="[路过这儿]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/bofubianlian_thumb.gif" title="[bofu变脸]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/gbzkun_thumb.gif" title="[gbz困]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/boboshengmenqi_thumb.gif" title="[生闷气]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/chn_buyaoya_thumb.gif" title="[不要啊]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/daxiongleibenxiong_thumb.gif" title="[dx泪奔]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/cat_yunqizhong_thumb.gif" title="[运气中]"></li>
                <li><img src="<%=path%>/jj/jjq/留言/youqian_thumb.gif" title="[有钱]"></li>
            </ul>
        </div>
        <!--face end-->
    </div>
</div>
<!--qq end-->
<!--msgCon begin-->
<div class="msgCon">
    <c:forEach var="o" items="${messageList}">
        <div class="msgBox">
            <div class="headUrl">
                <img src="<%=path%>/jj/jjq/留言/tx.jpg" width="50" height="50">
                <div>
                    <span class="title">${o.CUserName}</span>
                    <span class="time">${o.DCjsj}</span>
                </div>
                <a class="del">删除</a>
            </div>
            <div class="msgTxt">
                ${o.CLxnr}
            </div>
        </div>
    </c:forEach>
</div>
<c:import url="./footer.jsp"></c:import>

</body>
</html>
