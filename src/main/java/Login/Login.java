package Login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Authenticate.Authenticate;

@WebServlet("/logincontroller")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				Authenticate auth = new Authenticate();
				String userRole = auth.authenticate(username, password);

				if (userRole.equals("admin")) {
					RequestDispatcher rd = request.getRequestDispatcher("admin");
					rd.forward(request, response);
				} else if (userRole.equals("student")) {
					RequestDispatcher rd = request.getRequestDispatcher("student");
					rd.forward(request, response);
				} else {
					// If username or password is incorrect, set an attribute for validation error
					request.setAttribute("validationError", "Invalid username or password");
					// Redirect back to the login page
					RequestDispatcher rd = request.getRequestDispatcher("login");
					rd.forward(request, response);
				}
    }
}
