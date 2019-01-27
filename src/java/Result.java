import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 

public class Result extends HttpServlet {
 
   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      response.setContentType("text/html");

      PrintWriter out = response.getWriter();
    
        out.println(
          "<html>\n" +
          "<head><title>" + "Result" + "</title></head>\n" + 
          "<body>"+
              "<h1>"+ "END" + "</h1>"+
          "</body>\n" +
          "</html>");
      }
}