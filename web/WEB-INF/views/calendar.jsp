<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Календарь мероприятий</title>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="<c:url value="https://code.jquery.com/jquery-1.12.4.js"/>"></script>
    <script src="<c:url value="https://code.jquery.com/ui/1.12.1/jquery-ui.js"/>"></script>

    <style>
        #mainDiv {
            height: 90%;
            weight: 90%;
            border: 0 solid;
            background: url(resources/calendar.png) no-repeat;
        }
    </style>
    <script>
        function redirectToDashboard() {
            $( "#dashboardForm" ).submit();
        }
        function redirectToCloseProjects() {
            $( "#closeProjForm" ).submit();
        }
    </script>
</head>
<body>
<div style="overflow: scroll;height: 1750px;">
    <div id="mainDiv">
    <div id="mainDiv1" style="height: 30%" onclick="redirectToDashboard()">
        <form id="dashboardForm" action="dashboard" method="get">
        </form>
    </div>
    <div id="mainDiv2" style="height: 70%" onclick="redirectToCloseProjects()">
        <form id="closeProjForm" action="closeProj" method="get">
        </form>
    </div>
    </div>
</div>
</body>
</html>
