package Registration;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registrationcontroller")
public class Registration extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set the response content type to HTML
        response.setContentType("text/html");

        // Retrieve form data
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String gender = request.getParameter("gender");
        String phoneValue = request.getParameter("phone");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        // Phone number validation code
        long phone = 0;

        try {
            if (phoneValue != null && phoneValue.matches("^\\d{11}$")) {
                phone = Long.parseLong(phoneValue);
            } else {
                throw new NumberFormatException();
            }
        } catch (NumberFormatException e) {
            PrintWriter out = response.getWriter();
            out.println("Invalid phone number. Please enter a valid 11-digit number.");
            return;
        }

        // Build a response message
        String responseMessage = "Registration Successful!<br><br>";
        responseMessage += "First Name: " + firstname + "<br>";
        responseMessage += "Last Name: " + lastname + "<br>";
        responseMessage += "Gender: " + gender + "<br>";
        responseMessage += "Phone: " + phone + "<br>";
        responseMessage += "Address: " + address + "<br>";
        responseMessage += "Email: " + email;

        // Send the response back to the client
        PrintWriter out = response.getWriter();
        out.println(responseMessage);
    }
}