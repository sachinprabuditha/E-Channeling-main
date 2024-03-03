package servlets.feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import service.feedback.FeedbackServiceImpl;

/**
 * Servlet implementation class DeleteFeedbackSrv
 */
@WebServlet("/delete-feedback")
public class DeleteFeedbackSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
	
			int fid = Integer.parseInt(request.getParameter("fid"));
			
			FeedbackServiceImpl.deleteFeedback(fid);
			
			RequestDispatcher dis = request.getRequestDispatcher("/userFeedbacks");
			dis.forward(request, response);
			
			
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
