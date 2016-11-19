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
            width: 100px;
            height: 41px;
            background-color: #AD142B;
            moz-border-radius: 0px;
            font-size: 9.5pt;
            display: table;
            align-items: center;
            color: white;
        }

        .museumBtn {
            width: 100px;
            height: 41px;
            background: #AD142B;
            moz-border-radius: 0px;
        }

        .museumBtnNoColor {
            width: 100px;
            height: 41px;
            background: #EAEAEA;
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

            if (id == 'td_1') {
                removeFirstRowCssClasses('td_1');
            }

            if (id == 'td_2') {
                removeFirstRowCssClasses('td_2');
            }

            if (id == 'td_3') {
                removeFirstRowCssClasses('td_3');
            }

            if (id == 'td_4') {
                removeSecondRowCssClasses('td_4');
            }

            if (id == 'td_5') {
                removeSecondRowCssClasses('td_5');
            }

            if (id == 'td_6') {
                removeSecondRowCssClasses('td_6');
            }

        }

        function removeFirstRowCssClasses(id) {
            $("#td_1").removeClass('museumBtn');
            $("#td_2").removeClass('museumBtn');
            $("#td_3").removeClass('museumBtn');

            $("#td_1").removeClass('museumBtnNoColor');
            $("#td_2").removeClass('museumBtnNoColor');
            $("#td_3").removeClass('museumBtnNoColor');

            if (id == 'td_1') {
                $("#td_1").addClass('museumBtn');
            } else {
                $("#td_1").addClass('museumBtnNoColor');
            }

            if (id == 'td_2') {
                $("#td_2").addClass('museumBtn');
            } else {
                $("#td_2").addClass('museumBtnNoColor');
            }

            if (id == 'td_3') {
                $("#td_3").addClass('museumBtn');
            } else {
                $("#td_3").addClass('museumBtnNoColor');
            }
        }

        function removeSecondRowCssClasses(id) {
            $("#td_4").removeClass('museumBtn');
            $("#td_5").removeClass('museumBtn');
            $("#td_6").removeClass('museumBtn');

            $("#td_4").removeClass('museumBtnNoColor');
            $("#td_5").removeClass('museumBtnNoColor');
            $("#td_6").removeClass('museumBtnNoColor');

            if (id == 'td_4') {
                $("#td_4").addClass('museumBtn');
            } else {
                $("#td_4").addClass('museumBtnNoColor');
            }

            if (id == 'td_5') {
                $("#td_5").addClass('museumBtn');
            } else {
                $("#td_5").addClass('museumBtnNoColor');
            }

            if (id == 'td_6') {
                $("#td_6").addClass('museumBtn');
            } else {
                $("#td_6").addClass('museumBtnNoColor');
            }
        }

    </script>
</head>
<body>
<div style="overflow: scroll;height: 820px;">
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
                        <div id="td_1" class="museumBtn" onclick="onItemSelect('td_1')"/>
                    </td>
                    <td width="30%" >
                        <div id="td_2" class="museumBtnNoColor" onclick="onItemSelect('td_2')"/>
                    </td>
                    <td width="30%" >
                        <div id="td_3" class="museumBtnNoColor" onclick="onItemSelect('td_3')"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div id="td_4" class="museumBtn" onclick="onItemSelect('td_4')"/>
                    </td>
                    <td width="30%">
                        <div id="td_5" class="museumBtnNoColor" onclick="onItemSelect('td_5')"/>
                    </td>
                    <td width="30%">
                        <div id="td_6" class="museumBtnNoColor" onclick="onItemSelect('td_6')"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                    <td width="30%">
                        <div class="museumBtnNoColor"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <a href="<c:out value="exposition"/>">Проектирование экспозиции</a>
</div>
</body>
</html>
