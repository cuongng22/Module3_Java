import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletProducts", value = "/ServletProducts")
public class ServletProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Description = request.getParameter("Description");
        double Price = Double.parseDouble(request.getParameter("Price"));
        int Percent = Integer.parseInt(request.getParameter("Percent"));

        double Discount_Amount = Price * Percent * 0.01;
        double Discount_Price = Price - Discount_Amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h3> Discount Amount: "+Discount_Amount+"</h3>");
        writer.println("<h3> Discount Percent: "+Discount_Price+"</h3>");
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
