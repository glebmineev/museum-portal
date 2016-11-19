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

        .textInput {
            border: 0;
            outline: 0;
            width:100%;
            height: 100%;
            background: #EAEAEA;
            font-size: 14pt;
            font-family: 'MyWebFont';
        }

    </style>
    <script>

        function openRegister() {
            $("#registerForm").dialog({
                //position: { my: "center", at: "top+150" },
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
                },
                open: function(event, ui) {
                    $(event.target).parent().css('position', 'fixed');
                    $(event.target).parent().css('top', '20px');
                    $(event.target).parent().css('left', '30%');
                }
            });

            $(".ui-dialog-titlebar").hide();
        }

        function loginDlg() {
            $("#loginForm").dialog({
                //position: { my: "center", at: "top" },
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
                },
                open: function(event, ui) {
                    $(event.target).parent().css('position', 'fixed');
                    $(event.target).parent().css('top', '20px');
                    $(event.target).parent().css('left', '30%');
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
<div id="registerForm" title="Регистрация" style="display: none;margin-top: 20px">
    <form id="rgForm"  action="register" method="post">

        <table width="100%" cellspacing="5px" style="margin-top: 45px">
            <tr>
                <td colspan="2" align="center">
                    <div id="titleDiv">
                        РЕГИСТРАЦИЯ
                    </div>
                </td>
            </tr>
        </table>
        <table width="100%" cellspacing="5px" style="margin-top: 45px">
            <tr>
                <td width="50%" height="45px" align="center">
                    <input type="text" id="name" placeholder="Имя" name="name" class="textInput"/>
                </td>
                <td width="50%" height="45px" align="center">
                    <input type="text" id="surname" placeholder="Фамилия" name="surname" class="textInput">
                </td>
            </tr>

        </table>
        <table width="100%" cellspacing="5px">
            <tr>
                <td width="10%" height="45px" align="left">
                    <img src="<c:url value="/resources/profile.png"/>" class="textInput" style="width:45px;height: 45px"/>
                </td>
                <td width="90%" height="45px" align="center">
                    <input type="text" id="login" name="login" placeholder="Имя пользователя" class="textInput"/>
                </td>
            </tr>
        </table>
        <table width="100%" cellspacing="5px" style="margin-top: 45px">
            <tr>
                <td width="10%" height="45px" align="left">
                    <img src="<c:url value="/resources/email.png"/>" class="textInput" style="width:45px;height: 45px"/>
                </td>
                <td width="90%" height="45px" align="center">
                    <input type="text" id="email" name="email" placeholder="Почта" class="textInput"/>
                </td>
            </tr>
            <tr>
                <td width="10%" height="45px" align="left">
                    <img src="<c:url value="/resources/lock.png"/>" class="textInput" style="width:45px;height: 45px"/>
                </td>
                <td width="90%" height="45px" align="center">
                    <input type="password" id="password" name="password" placeholder="Пароль" class="textInput"/>
                </td>
            </tr>
            <tr>
                <td width="10%" height="45px" align="left">
                    <img src="<c:url value="/resources/lock.png"/>" class="textInput" style="width:45px;height: 45px"/>
                </td>
                <td width="90%" height="45px" align="center">
                    <input type="password" id="passwordRepeat" name="password" placeholder="Повторите пароль" class="textInput"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="loginForm" title="Вход" style="display: none;">
    <form id="lgForm" action="checkAuth" method="post">
        <table width="100%" cellspacing="5px" style="margin-top: 45px">
            <tr>
                <td colspan="2" align="center">
                    <div id="titleDiv">
                        ВХОД
                    </div>
                </td>
            </tr>
        </table>
        <table width="100%" cellspacing="5px" style="margin-top: 70px">
            <tr>
                <td width="10%" height="45px" align="left">
                    <img src="<c:url value="/resources/profile.png"/>" class="textInput" style="width:45px;height: 45px"/>
                </td>
                <td width="90%" height="45px" align="center">
                    <input type="text" id="login" name="login" placeholder="Имя пользователя" class="textInput"/>
                </td>
            </tr>
            <tr>
                <td width="10%" height="45px" align="left">
                    <img src="<c:url value="/resources/lock.png"/>" class="textInput" style="width:45px;height: 45px"/>
                </td>
                <td width="90%" height="45px" align="center">
                    <input type="password" id="password" name="password" placeholder="Пароль" class="textInput"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
