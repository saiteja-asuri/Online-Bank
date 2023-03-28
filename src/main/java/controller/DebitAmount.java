package controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Debit;
import Model.User;
import Model.UserDao;

@WebServlet("/debit")
public class DebitAmount extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int money=Integer.parseInt(request.getParameter("amount"));
		HttpSession session=request.getSession();
		User userObj=(User)session.getAttribute("user");
		String msg="";
		try {
			if(Debit.debitAmount(userObj,money)==true)
			{
				msg="Amount Debited successfully !!!";
			}
			else
			{
				msg="You dont have enough balance !!";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		RequestDispatcher rd=request.getRequestDispatcher("Message.jsp");
		request.setAttribute("message", msg);
		rd.forward(request, response);
	}

}
