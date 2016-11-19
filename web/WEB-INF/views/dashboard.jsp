<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Страница входа</title>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="<c:url value="https://code.jquery.com/jquery-1.12.4.js"/>"></script>
    <script src="<c:url value="https://code.jquery.com/ui/1.12.1/jquery-ui.js"/>"></script>

    <style>

        @font-face {
            font-family: 'MyWebFont';
            src: url(resources/intro.otf);
        }

        body {
            font-family: 'MyWebFont', sans-serif;
        }

        #sprintDiv {
            position: absolute;
            top: 54%;
            left: 54.6%;
            margin-top: -50px;
            margin-left: -50px;
            width: 100px;
            height: 100px;
        }

        #museumHeaderDiv {
            width: 91px;
            height: 41px;
            background-color: #AD142B;
            moz-border-radius: 0px;
            font-size: 9.5pt;
            display: table;
            align-items: center;
            color: white;
        }

        .museumBtn {
            width: 91px;
            height: 41px;
            background: #AD142B;
            moz-border-radius: 0px;
        }

        .museumBtn:hover {
            width: 91px;
            height: 41px;
            background: #ffffff;
            border: 1px solid #EAEAEA;
            moz-border-radius: 0px;
        }

        #mainDiv {
            height: 90%;
            weight: 90%;
            border: 0 solid;
            background: url(resources/dashboard_bg.png) no-repeat;
        }

    </style>
    <script>

        function onItemSelect(id) {
            if () {

            }
        }

    </script>
</head>
<body>
<div style="overflow: scroll;height: 1750px;">
    <div id="mainDiv">
        <div id="sprintDiv">
            <table cellspacing="5px">
                <tr>
                    <td width="30%" >
                        <div id="museumHeaderDiv">
                            <p style="text-align: center;">PLAN</p>
                        </div>
                    </td>
                    <td width="30%" >
                        <div id="museumHeaderDiv">
                            <p style="text-align: center;">DO</p>
                        </div>
                    </td>
                    <td width="30%" >
                        <div id="museumHeaderDiv">
                            <p style="text-align: center;">DONE</p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td width="30%" >
                        <div class="museumBtn" onclick="onItemSelect('td_1')"/>
                    </td>
                    <td width="30%" >
                        <div class="museumBtn" onclick="onItemSelect('td_2')"/>
                    </td>
                    <td width="30%" >
                        <div class="museumBtn" onclick="onItemSelect('td_3')"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtn" onclick="onItemSelect('td_4')"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtn" onclick="onItemSelect('td_5')"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtn" onclick="onItemSelect('td_6')"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
