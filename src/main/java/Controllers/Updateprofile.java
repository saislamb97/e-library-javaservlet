package Controllers;

import java.io.IOException;
// import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateprofile")
public class Updateprofile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set the response content type to HTML
        response.setContentType("text/html");

        // Retrieve form data
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        
        // Set attributes for successful registration
        request.setAttribute("fullname", fullname);
        request.setAttribute("username", username);

        // Forward to userprofile.jsp page
        request.getRequestDispatcher("userprofile").forward(request, response);
    }
}
