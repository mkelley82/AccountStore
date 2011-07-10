<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="AccountStore.login2" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nettuts JQuery</title>
    <link href="_css/login.css" rel="stylesheet" type="text/css" />
    <script src="_js/jquery-1.6.2.js" type="text/javascript"></script>
    <script src="_js/slidingpanel.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("div.panel_button").click(
                function () {
                    $("div#panel").animate({ height: "500px" }).animate({
                        height: "400px"
                    }, "fast");
                    $("div.panel_button").toggle();
                });
            $("div#hide_button").click(function () {
                $("div#panel").animate({
                    height: "0px"
                }, "fast");
            });
        });
    </script>
</head>
<body>
    <div id="header">
        <h1>
            The Account Store</h1>
        <br />
        <h2>
            Account Management System</h2>
    </div>
    <hr id="header_stripe" />
    <div id="wrapper">
        <div id="toppanel">
            <div id="panel">
                <div id="panel_contents">
                    <img class="border_pic" src="images/slidingpanel/tutsplus.jpg" alt="Screenshot" />
                    <div class="border" id="login">
                        <p>
                            Username:
                            <input type="text" size="15" name="username" id="username" />
                            <br />
                            Password:
                            <input type="password" size="15" name="password" id="password" />
                            <br />
                            <input type="button" accesskey="l" id="login_btn" name="login" value="Login" />
                        </p>
                    </div>
                </div>
            </div>
            <div class="panel_button">
                <p>
                    <a href="#">Login Here</a></p>
            </div>
            <div class="panel_button">
                <p>
                    <a href="#">Hide</a></p>
            </div>
        </div>
    </div>
    <div id="content">
    </div>
</body>
</html>
