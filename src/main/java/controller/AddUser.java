package controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.UserDao;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acc_number=request.getParameter("acc_number");
		String email=request.getParameter("email");
		String pin=request.getParameter("pin");
		String userName=request.getParameter("userName");
		int age=Integer.parseInt(request.getParameter("age"));
		String address=request.getParameter("address");
		try {
			UserDao.createUser(acc_number, email, pin, userName, age, address, 0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			System.out.println("user created successfully");
		}
		response.sendRedirect("Login.jsp");
	}
}
