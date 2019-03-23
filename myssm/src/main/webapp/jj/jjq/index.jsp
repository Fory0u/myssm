<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/18
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="head.jsp"></c:import>
<form action="/init.do" method="post">
    <input type="submit" id="toShouye1" value="toShouye1">
    </form>
<%--<form action="/login.do" method="post">--%>
    <%--<input type="submit" id="toShouye2" value="toShouye2">--%>
<%--</form>--%>

<script>
//        $(function(){
//            $("#toShouye").click(function(){
//                $.post("/init.do?init")
//                    .then(function(rs){
//                        debugger
//                console.log(rs)
//            });
//            })

//        })
</script>
</body>
</html>
