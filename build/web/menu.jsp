<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            sessionStorage.setItem("score", 0);
            sessionStorage.setItem("number", 1);
        </script>
        <h1>Choose mode:</h1>
        <ul>
            <li><a href="question1.jsp">Easy</a></li>
            <li><a href="question2.jsp">Hard</a></li>
        </ul> 
    </body>
</html>
