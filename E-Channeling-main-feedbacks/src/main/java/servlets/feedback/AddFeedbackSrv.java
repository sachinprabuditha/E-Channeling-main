package servlets.feedback;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.feedback.Feedback;
import service.feedback.FeedbackServiceImpl;

/**
 * Servlet implementation class AddFeedbackSrv
 */
@WebServlet("/add-feedback")

public class AddFeedbackSrv extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		

		int user_id = Integer.parseInt((String) session.getAttribute("usId"));
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String description = request.getParameter("description");
			int rating = Integer.parseInt(request.getParameter("rating"));
			
			
			Feedback feedback = new Feedback(user_id,fname, lname, description, rating);
			
			FeedbackServiceImpl.createFeedback(feedback);
			
			response.sendRedirect("home.jsp");
		
	}

}
