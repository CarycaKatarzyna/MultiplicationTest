<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "src.Multiplication1" %>
<html>
    <%!
        Multiplication1 mult;
    %>
    <%
        mult= new Multiplication1();
    %>
    <head>
        <title>  Question  </title>
    </head> 
    <body>
        <h1> <script> document.write("Question "+ sessionStorage.getItem("number")); </script> </h1>
        <p>  <% out.println(mult.getFirst() + "*" + mult.getSecond());%> </p>
        <script>
        function enable() {
            var query = document.querySelector('input[type=\"submit\"]');
            query.removeAttribute('disabled');
            query.focus();
        }
        function checkAnswer() {    
            var id = document.querySelector('input[name="answer"]:checked').value;
            var correctId ="<%= mult.getCorrectId() %>"; 
            var s = sessionStorage.getItem("score");
            if(id === correctId){
                var newS = parseInt(s) + 1;
                sessionStorage.setItem("score", newS);
                alert("Correct!");
            }
            else{
                alert("Wrong :(");
            }
            var oldNr = sessionStorage.getItem("number");
            var newNr = parseInt(oldNr) + 1;
            sessionStorage.setItem("number", newNr);
        }
        
        </script>      
        <form action="">
        <% 
            int j=0; 
            for(Integer i : mult.getAnswers()){
                out.println("<input type=\"radio\" onchange=\'enable()\' name=\"answer\"  id=\"radioId\" value="+ j +">" + i +"<br>");
                j++;
            }
        %>
        </form>
        <script>
            if(parseInt(sessionStorage.getItem("number")) < 5){
                document.write("<form action = \"question1.jsp\" >");
            }
            else{
                document.write("<form action = \"result.jsp\" method = \"POST\">");
            }
        </script>
            <input type = "submit" onclick ='checkAnswer()' disabled="disabled" name = "button" value = "NEXT" />
        </form>
    </body>
</html>