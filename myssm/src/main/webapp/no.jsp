<%--
  Created by IntelliJ IDEA.
  User: GXD
  Date: 2019/4/17
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>无效操作页面</title>
</head>
<body>
<p>无效操作！！请重新操作！！</p>
<a href="<%=path%>/jj/jjq/login.jsp">重新登录</a>
</body>
</html>
