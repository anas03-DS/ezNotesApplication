package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import com.DAO.UserDAO;
import com.User.UserDetails;
import com.db.DBConnect;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String name = request.getParameter("fname");
		String email = request.getParameter("uemail");
		String password = request.getParameter("upassword");

		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);

		UserDAO dao = new UserDAO(DBConnect.getConn());
		boolean f = dao.addUser(us);
		HttpSession session;
		
		
		if(f) {
			session = request.getSession();
			session.setAttribute("reg-success", "Registration Successfully.");
			response.sendRedirect("register.jsp");
		}
		else {
			session = request.getSession();
			session.setAttribute("failes-msg","Not Registered.");
			response.sendRedirect("register.jsp");
		}
//		PrintWriter out = response.getWriter();
//		if(f) {
//			out.print("Registered Successfully");
//		}
//		else {
//			out.print("Not Registered");
//		}
	}

}
