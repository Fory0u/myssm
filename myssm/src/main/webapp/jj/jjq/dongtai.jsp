<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/4/15
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<!-- saved from url=(0062)http://www.17sucai.com/preview/1528155/2019-03-31/sj/demo.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>时间轴</title>

    <style>
        *,
        *::before,
        *::after {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font: normal 16px/1.5 'Titillium Web', sans-serif;
            /*background: linear-gradient(54deg, #9164ff, #8bfff4);*/
            color: #3c3f64;
            overflow-x: hidden;
            padding-bottom: 50px;
        }

        .timeline ul li {
            list-style-type: none;
            position: relative;
            width: 6px;
            margin: 0 auto;
            padding-top: 50px;
            background: #fff;
        }

        .timeline ul li::after {
            content: '';
            position: absolute;
            left: 50%;
            bottom: 0;
            transform: translateX(-50%) rotate(45deg);
            width: 20px;
            height: 20px;
            z-index: 2;
            background: #eee;
        }

        .timeline ul li div {
            position: relative;
            bottom: 0;
            width: 400px;
            padding: 20px;
            background: #fff;
            box-shadow: 4px 13px 30px 1px rgba(252, 56, 56, 0.2);
            border-radius: 5px;
            display: flex;
            align-items: center;
        }

        .timeline ul li div time {
            position: absolute;
            background: #f5af19;
            width: 80px;
            height: 30px;
            top: -15px;
            border-radius: 5px;
            display: flex;
            justify-content: center;
            align-items: center;
            letter-spacing: 2px;
        }

        .timeline ul li div div {
            height: 100px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .timeline ul li div div p {
            text-align: center;
        }

        .timeline ul li div .discovery {
            margin-right: 10px;
        }

        .timeline ul li:nth-of-type(odd) > div {
            left: 45px;
        }

        .timeline ul li:nth-of-type(even) > div {
            left: -439px;
        }

        .timeline ul li div {
            visibility: hidden;
            opacity: 0;
            transition: all 0.5s ease-in-out;
        }

        .timeline ul li:nth-of-type(odd) div {
            transform: translate3d(100px, -10px, 0) rotate(10deg);
        }

        .timeline ul li:nth-of-type(even) div {
            transform: translate3d(-100px, -10px, 0) rotate(10deg);
        }

        .timeline ul li.in-view div {
            transform: none;
            visibility: visible;
            opacity: 1;
        }

        @media screen and (max-width: 900px) {
            .timeline ul li div {
                width: 250px;
                flex-direction: column;
            }

            .timeline ul li div div {
                width: 80%;
                margin: 10px;
            }

            .timeline ul li:nth-of-type(even) > div {
                left: -289px;
            }
        }

        @media screen and (max-width: 600px) {
            body {
                background: #8bfff4;
            }

            .timeline ul li {
                margin-left: 20px;
            }

            .timeline ul li div {
                width: calc(100vw - 91px);
            }

            .timeline ul li:nth-of-type(even) > div {
                left: 45px;
            }
        }

        .container{width:1170px;
            margin: auto;}
    </style>
</head>
<body>
<c:import url="./head.jsp"></c:import>
<div class="container">
    <section class="timeline" style="background: linear-gradient(0deg, #f9f9f9, #ecf9f7);">
        <ul>
            <c:forEach items="${xydtList}" var="o">
            <li class="in-view">
                <div>
                    <time>${o.DCjsj}</time>
                    <div class="discovery">
                        <h1>${o.CBt}</h1>
                        <p>
                            ${o.CNr}
                        </p>
                    </div>
                    <div class="scientist">
                        <h1>${o.CFbt}</h1>
                        <span>${o.CType} </span>
                    </div>
                </div>
            </li>
            </c:forEach>
        </ul>
    </section>
</div>
<c:import url="./footer.jsp"></c:import>

<script>
    var items = document.querySelectorAll(".timeline li");

    function isElementInViewport(el) {
        var rect = el.getBoundingClientRect();
        return (
            rect.top >= 0 &&
            rect.left >= 0 &&
            rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
            rect.right <= (window.innerWidth || document.documentElement.clientWidth)
        );
    }

    function callbackFunc() {
        for (var i = 0; i < items.length; i++) {
            if (isElementInViewport(items[i])) {
                if (!items[i].classList.contains("in-view")) {
                    items[i].classList.add("in-view");
                }
            } else if (items[i].classList.contains("in-view")) {
                items[i].classList.remove("in-view");
            }
        }
    }

    window.addEventListener("load", callbackFunc);
    window.addEventListener("scroll", callbackFunc);
</script>

</body>
</html>