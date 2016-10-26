

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.isEmpty() || password.isEmpty()) //form username and password is empty
		{
			// setting error message to variable
			String error = new Display(Display.Type.ERROR).getHtml("Both username and password are required to process your request!\n Please try again!");
			// code to redirect to index.html(Login Page) with error string set in session so message can be displayed in the error div.
			response.getWriter().append("Served at: ").append(request.getContextPath()).append("\rResponse: ").append(error);
		}
		else // username and password not empty(Valid)
		{
			//replace with server
			if (username.equals("TEST") && password.equals("password"))
			{
				 HttpSession session = request.getSession();
				 session.setAttribute("username", username);
				 response.sendRedirect("student.jsp");
			}
			else
			{
				response.sendRedirect("index.jsp");
			}
			response.getWriter().append("Served at: ").append(request.getContextPath());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
