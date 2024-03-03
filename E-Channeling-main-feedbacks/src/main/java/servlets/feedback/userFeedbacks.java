package servlets.feedback;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.feedback.Feedback;
import service.feedback.FeedbackServiceImpl;


/**
 * Servlet implementation class userMessages
 */
@WebServlet("/userFeedbacks")
public class userFeedbacks extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		//allow access only if session exists
		if(session.getAttribute("id") == null){
			
			response.sendRedirect("/login");
		}
		else {
			int user_id = Integer.parseInt((String) session.getAttribute("usId"));
			System.out.println(user_id);
			
			
				
				ArrayList<Feedback> feedbacks = FeedbackServiceImpl.getFeedbackByUserID(user_id);
				
				 request.setAttribute("feedbacks", feedbacks);
			

			
			request.getRequestDispatcher("userFeedbacks.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}