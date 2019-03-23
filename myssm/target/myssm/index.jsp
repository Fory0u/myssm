<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/17
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="static/jquery/jquery/jquery-2.1.1.min.js"></script>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>电影查询</h1>
<form action="init.do" method="post">
    <label for="">搜索电影</label>
    <input type="text" name="filmname">
    <button>搜索</button>
</form>
<table>
    <tr>
        <th>电影编号</th>
        <th>电影名称</th>
        <th>上映日期</th>
        <th>总计票房</th>
    </tr>
    <c:forEach var="film" items="${all}">
    <tr>
        <td>${film.filmid}</td>
        <td>${film.filmname}</td>
        <td>${film.showtime}</td>
        <td>${film.ticknum}</td>
    </tr>
    <tr>
        <td colspan="4">
            <c:forEach var="act" items="${all.acts}">
                <div class="act">
                    <img src="img/${act.photo}" alt="">
                    <p>演员姓名:${act.actname}</p>
                    <p>演员性别:${act.sex==0?'女':'男'}</p>
                </div>
            </c:forEach>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
<script>

</script>
</html>
