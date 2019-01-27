<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body><center>
        <body onload="blockBack();" onunload="">
        <body style="background-color:99FF99; color:006666;">
        <h1>Your score:</h1>
        <script>
            window.history.forward();
            function blockBack() {
                window.history.forward();
            }
            document.write(sessionStorage.getItem("score"));
        </script>
        <form action = "menu.jsp" >
            <input type = "submit" autofocus="autofocus" value = "ONCE AGAIN!" />
        </form></center>
    </body>
</html>
