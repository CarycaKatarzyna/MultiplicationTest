<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body style="background-color:99FF99;">
        <script>
            sessionStorage.setItem("score", 0);
            sessionStorage.setItem("number", 1);
        </script>
        <h1 style="text-align:center; color:006666;">Choose mode:</h1>
        <ul>
            <li style="text-align:center; color:006666;"><a href="question1.jsp">Easy</a></li>
            <li style="text-align:center; color:006666;"><a href="question2.jsp">Hard</a></li>
        </ul> 
    </body>
</html>
