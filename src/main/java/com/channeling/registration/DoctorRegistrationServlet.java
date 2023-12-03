package com.channeling.registration;

import java.io.FileOutputStream;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 * Servlet implementation class RegistrationServlet
 */

@MultipartConfig
@WebServlet("/register")
public class DoctorRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private static Connection con = null;
	private static PreparedStatement pst = null;
	
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fullname = request.getParameter("name");
		String special = request.getParameter("special");
		String uaddress = request.getParameter("address");
		String uage = request.getParameter("age");
		String ugender = request.getParameter("gender");
		String ucontact = request.getParameter("contact");
		String uemail = request.getParameter("email");
		String uname = request.getParameter("username");
		String upwd = request.getParameter("pass");
		String reupwd = request.getParameter("re_pass");
		
		
		//dispatcher servlet object
				RequestDispatcher dispatcher = null;
				
				
		//server side validation for registration form
				if(fullname == null || fullname.equals("")){
					request.setAttribute("status", "invalidName");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				} if(uaddress == null || uaddress.equals("")){
					request.setAttribute("status", "invalidAddress");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				} if(uage  == null || uage.equals("")){
					request.setAttribute("status", "invalidAge");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				} if(ugender == null || ugender.equals("")){
					request.setAttribute("status", "invalidGender");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				} if(ucontact == null || ucontact.equals("")){
					request.setAttribute("status", "invalidContact");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				}if(ucontact.length() > 10 || ucontact.length() < 10){
					request.setAttribute("status", "invalidContactnum");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
				}
				
				if(uemail == null || uemail.equals("")){
					request.setAttribute("status", "invalidEmail");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				} if(uname == null || uname.equals("")){
					request.setAttribute("status", "invalidUserName");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				}if(uname.equals("admin")){
					request.setAttribute("status", "invalidUserNameType");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				}
				if(upwd == null || upwd.equals("")){
					request.setAttribute("status", "invalidPassword");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				}if(upwd.length() > 8 || upwd.length() < 8){
					request.setAttribute("status", "invalidPassFormate");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				} if(!upwd.equals(reupwd)) {
					request.setAttribute("status", "passwordMissMatch");
					dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
					dispatcher.forward(request, response);
					return;
					
				} 
		
		
		//insert details in to database
		try {
			
			
			
			con = DBConnect.getConnection();
			pst = con.prepareStatement("insert into usertable(fullName,uAddress,uAge,uGender,uPhone,uEmail,userName,password,special) values(?,?,?,?,?,?,?,?,?)");
			
			
			pst.setString(1, fullname);
			pst.setString(2, uaddress);
			pst.setString(3, uage);
			pst.setString(4, ugender);
			pst.setString(5, ucontact);
			pst.setString(6, uemail);
			pst.setString(7, uname);
			pst.setString(8, upwd);
			pst.setString(9, special);
			
			
			int rowCount = pst.executeUpdate();
			
			
			if(rowCount > 0) {
				
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("Doctorregistration.jsp");
			}
			dispatcher.forward(request, response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
		
		
	}
}
