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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Authenticate auth = new Authenticate();
		String userRole = auth.authenticate(username, password);
		
		if (userRole.equals("admin")) {
			RequestDispatcher rd = request.getRequestDispatcher("admin");
			rd.forward(request, response);
		}
		
		else if (userRole.equals("coach")) {
			RequestDispatcher rd = request.getRequestDispatcher("coach");
			rd.forward(request, response);
		}
		
		else if (userRole.equals("trainee")) {
			RequestDispatcher rd = request.getRequestDispatcher("trainee");
			rd.forward(request, response);
		}
		
		else {
			RequestDispatcher rd = request.getRequestDispatcher("error");
			rd.forward(request, response);
		}
	}	
}
