<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="<%=path%>/jj/ht/ht/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/jj/ht/ht/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/jj/ht/ht/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/jj/ht/ht/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/jj/ht/ht/static/h-ui.admin/skin/default/skin.css" id="skin" />
<title>管理员管理界面</title>
</head>
<body>
path:<%=path%>
basePath:<%=basePath%>
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml">二手商城后台管理系统</a>  <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
				</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">${user.CName}<i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="${pageContext.request.contextPath}/login.do">切换账户</a>
						</ul>
					</li>
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
							<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
							<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
							<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
							<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
							<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<aside class="Hui-aside">
	<input runat="server" id="divScrollValue" type="hidden" value="" />
	<div class="menu_dropdown bk_2">
		<dl id="menu-admin">
			<dt><i class="Hui-iconfont">&#xe62d;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
                	<li><a _href="${pageContext.request.contextPath}/listUser.do" data-title="用户列表" href="javascript:void(0)">用户列表</a></li>
				</ul>
			</dd>
		</dl>
		<%--id="menu-product"--%>
		<dl >
			<dt><i class="Hui-iconfont">&#xe620;</i>公告管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
                	<li><a _href="${pageContext.request.contextPath}/listNews.do" data-title="公告列表" href="javascript:void(0)">公告列表</a></li>
				</ul>
			</dd>
		</dl>
		
		<dl >
			<dt><i class="Hui-iconfont">&#xe60c;</i>校园动态管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
                	<li><a _href="${pageContext.request.contextPath}/xydt.do?listXydt" data-title="校园动态列表" href="javascript:void(0)">校园动态列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl >
			<dt><i class="Hui-iconfont">&#xe681;</i>留言管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
                	<li><a _href="${pageContext.request.contextPath}/listMessage.do" data-title="留言列表" href="javascript:void(0)">留言列表</a></li>
				</ul>
			</dd>
		</dl>
		<dl >
			<dt><i class="Hui-iconfont">&#xe627;</i>通信管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
                	<li><a _href="${pageContext.request.contextPath}/listChart.do" data-title="通信列表" href="javascript:void(0)">通信列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl >
			<dt><i class="Hui-iconfont">&#xe60c;</i>商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="${pageContext.request.contextPath}/shop.do?listShop" data-title="商品列表" href="javascript:void(0)">商品列表</a></li>
				</ul>
			</dd>
		</dl>
		<dl >
			<dt><i class="Hui-iconfont">&#xe60c;</i>商品类型管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="${pageContext.request.contextPath}/splx.do?listSplx" data-title="商品类型列表" href="javascript:void(0)">商品类型列表</a></li>
				</ul>
			</dd>
		</dl>
		<dl >
			<dt><i class="Hui-iconfont">&#xe60c;</i>购物车管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="${pageContext.request.contextPath}/shopcart.do?listShopcart" data-title="购物车列表" href="javascript:void(0)">购物车列表</a></li>
				</ul>
			</dd>
		</dl>
		<dl >
			<dt><i class="Hui-iconfont">&#xe60c;</i>订单管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="${pageContext.request.contextPath}/order.do?listOrder" data-title="订单列表" href="javascript:void(0)">订单列表</a></li>
				</ul>
			</dd>
		</dl>

	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面" data-href="<%=path%>/jj/ht/welcome.jsp">我的桌面</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="<%=path%>/jj/ht/welcome.jsp"></iframe>
		</div>
	</div>
</section>
<script type="text/javascript" src="<%=path%>/jj/ht/ht/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/jj/ht/ht/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="<%=path%>/jj/ht/ht/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="<%=path%>/jj/ht/ht/static/h-ui.admin/js/H-ui.admin.js"></script>
</body>
</html>