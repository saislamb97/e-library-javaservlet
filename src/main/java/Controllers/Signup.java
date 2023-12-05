package Controllers;

import java.io.IOException;
// import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signupcontroller")
public class Signup extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set the response content type to HTML
        response.setContentType("text/html");

        // Retrieve form data
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String retypePassword = request.getParameter("retype_password");

        // Check if passwords match
        if (!password.equals(retypePassword)) {
            // Passwords do not match
            request.setAttribute("validationError", "Passwords do not match! Please try again.");
            request.getRequestDispatcher("signup").forward(request, response);
            return; // Return without further processing
        }

        // Build a response message (in this case, successful registration)
        // String responseMessage = "Registration Successful!<br><br>";
        // responseMessage += "Full Name: " + fullname + "<br>";
        // responseMessage += "Username: " + username + "<br>";

        // Send the response back to the client (or further processing)
        // PrintWriter out = response.getWriter();
        // out.println(responseMessage);

        // Set attributes for successful registration
        request.setAttribute("fullname", fullname);
        request.setAttribute("username", username);

        // Forward to userprofile.jsp page
        request.getRequestDispatcher("userprofile").forward(request, response);
    }
}
