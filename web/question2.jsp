<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "src.Multiplication" %>
<html>
    <%! 
        Multiplication mult;
    %>
    <% 
       mult= new Multiplication();
    %>
    <head>
        <title>  Question </title>
    </head> 
    <body>
        <h1> <script> document.write("Question "+ sessionStorage.getItem("number")); </script>  </h1>
        <p>  <% out.println(mult.getFirst() + "*" + mult.getSecond());%> </p>
        <script>
        var Timer;
        var seconds;

        function CreateTimer(TimerID, Time) {
            Timer = document.getElementById(TimerID);
            seconds = Time;
            Timer.innerHTML = seconds;
            window.setTimeout("tick()", 1000);
        }

        function tick() {
            seconds -= 1;
            if(seconds === -1){
                var query = document.querySelector('input[type=\"submit\"]');
                query.removeAttribute('disabled');
                query.click();
                
            }
            else{
                Timer.innerHTML = seconds;
                window.setTimeout("tick()", 1000);
            }
        }

        function enable() {
            var query = document.querySelector('input[type=\"submit\"]');
            var len = document.querySelector('input[type=\"text\"]').value.length;
            if(len === 0){
                query.setAttribute('disabled', true);
            }
            else{
                query.removeAttribute('disabled');
            }
        }
        function checkAnswer() {    
            var ans = document.querySelector('input[type=\"text\"]').value;
            var correctAns ="<%= mult.getCorrectAnswer() %>"; 
            var s = sessionStorage.getItem("score");
            if(ans === correctAns){
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
        function checkEnter(event) {
            if(event.keyCode === 13){
                var len = document.querySelector('input[type=\"text\"]').value.length;
                if(len === 0){
                    event.preventDefault();
                    alert("Please enter your answer!");
                }
                else{
                    event.preventDefault();
                    var query = document.querySelector('input[type=\"submit\"]');
                    query.click();
                }
            }
        }
        </script>      
        <form>
            <input type="text" onkeyup='enable()' autofocus="autofocus" onkeypress='checkEnter(event)' name="userAnswer"><br>
        </form> 
        <script>
            if(parseInt(sessionStorage.getItem("number")) < 5){
                document.write("<form action = \"question2.jsp\" >");
            }
            else{
                document.write("<form action = \"result.jsp\" method = \"POST\">");
            }
        </script>
            <input type = "submit" onclick ='checkAnswer()' disabled="disabled" name = "button" value = "NEXT" />
        </form>
        
        
        <p1> Time limit: </p1>
        <div id='timer' />
        <script> window.onload = CreateTimer("timer", 5);</script>
        </form>
    </body>
</html>