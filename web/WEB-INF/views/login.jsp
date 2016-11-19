<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Страница входа</title>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="<c:url value="https://code.jquery.com/jquery-1.12.4.js"/>"></script>
    <script src="<c:url value="https://code.jquery.com/ui/1.12.1/jquery-ui.js"/>"></script>

    <%--<!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"/>"></script>--%>

<%--    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>--%>

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

        #titleDiv {
            font-size: 20pt;
            color: #AD142B;
        }

        #museumBtn {
            width: 126px;
            height: 30px;
            background-color: #ffffff;
            moz-border-radius: 0px;
            font-size: 9.5pt;
            display: table;
            align-items: center;
            color: #AD142B;
        }

        #mainDiv {
            height: 100%;
            weight: 100%;
            border: 0 solid;
            background: url(resources/bg.png) no-repeat;
        }

        input {
            border: 0;
            outline: 0;
            background: transparent;
            border: 2px solid black;
            width: 20px;
        }

    </style>
    <script>

        function openRegister() {
            $("#registerForm").dialog({
                position: { my: "center", at: "top" },
                modal: true,
                resizable: false,
                width: 468,
                height: 623,
                buttons: {
                    "Войти": function () {
                        $( "#rgForm" ).submit();
                    },
                    "Закрыть": function () {
                        $(this).dialog("close");
                    }
                }
            });

            $(".ui-dialog-titlebar").hide();
        }

        function loginDlg() {
            $("#loginForm").dialog({
                position: { my: "center", at: "top" },
                modal: true,
                resizable: false,
                width: 468,
                height: 623,
                buttons: {
                    "Войти": function () {
                        $( "#lgForm" ).submit();
                    },
                    "Закрыть": function () {
                        $(this).dialog("close");
                    }
                }
            });

            $(".ui-dialog-titlebar").hide();
        }

    </script>
</head>
<body>
<div style="overflow: scroll;height: 1750px;">
    <div id="mainDiv">
        <div id="centerDiv">
            <table cellspacing="5px">
                <tr>
                    <td>
                        <div id="museumBtn" onclick="openRegister()">
                            <p style="text-align: center;">Регистрация</p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="museumBtn" onclick="loginDlg()">
                            <p style="text-align: center;">Вход</p>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div id="registerForm" title="Регистрация" style="display: none;">
    <form id="rgForm"  action="register" method="post">
        <table>
            <tr>
                <td colspan="2">
                    <div id="titleDiv">
                        РЕГИСТРАЦИЯ
                    </div>
                </td>
            </tr>
            <tr>
                <td width="50%">
                    <input type="text" id="name" name="name"/>
                </td>
                <td width="50%">
                    <input type="text" id="surname" name="surname"/>
                </td>
            </tr>
            <tr>
                <td width="20%">
                    <img src=""/>
                </td>
                <td width="80%">
                    <input type="password" name="password"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Войти"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="loginForm" title="Вход" style="display: none;">
    <form id="lgForm" action="checkAuth" method="post">
        <table>
            <tr>
                <td colspan="2">
                    <div id="titleDiv">
                        ВОЙТИ
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    Логин
                </td>
                <td>
                    <input type="text" id="login" name="login"/>
                </td>
            </tr>
            <tr>
                <td>
                    Пароль
                </td>
                <td>
                    <input type="password" name="password"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Войти"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
