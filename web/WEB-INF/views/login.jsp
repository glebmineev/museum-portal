<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Страница входа</title>
    <style>

        @font-face {
            font-family: 'MyWebFont';
            src: url(resources/intro.otf);
        }

        body {
            font-family: 'MyWebFont', sans-serif;
        }

        #centerDiv {
            position: absolute;
            top: 80%;
            left: 50%;
            margin-top: -50px;
            margin-left: -50px;
            width: 100px;
            height: 100px;
        }

        #museumBtn {
            width: 126px;
            height: 30px;
            background-color: #AD142B;
            moz-border-radius: 0px;
            font-size: 9.5pt;
            display:table;
            align-items:center;
            color: white;
        }

        #mainDiv {
            height: 100%;
            weight: 100%;
            border: 0 solid;
            background: url(resources/bg.jpg) no-repeat;
        }

    </style>
</head>
<body>
<div style="overflow: scroll;height: 750px;">
<div id="mainDiv">
    <div id="centerDiv">
        <table>
            <tr>
                <td>
                    <div id="museumBtn">
                        <p style="text-align: center;">Вход</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="museumBtn">
                        <p style="text-align: center;">Регистрация</p>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
</div>
</body>
</html>
