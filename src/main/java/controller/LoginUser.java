package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.User;
import Model.UserDao;

@WebServlet("/login")
public class LoginUser extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String pin=request.getParameter("pin");
		HttpSession session = request.getSession();
		try {
			User res=UserDao.findUser(email,pin);
			System.out.println(res);
			if(res!=null)
			{
				session.setAttribute("user",res);
				response.sendRedirect("DashBoard.jsp");
			}
			else
			{
				response.sendRedirect("Login.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

}
