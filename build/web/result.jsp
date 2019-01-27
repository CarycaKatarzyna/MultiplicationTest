<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1>Your score:</h1>
        <script>
            document.write(sessionStorage.getItem("score"));
        </script>
        <form action = "menu.jsp" >
            <input type = "submit" autofocus="autofocus" value = "ONCE AGAIN!" />
        </form>
    </body>
</html>
