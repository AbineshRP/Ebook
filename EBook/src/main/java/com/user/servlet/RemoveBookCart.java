package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/remove_book")
public class RemoveBookCart extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int bid=Integer.parseInt(req.getParameter("bid"));
		//int userId =Integer.parseInt(req.getParameter("userId"));
		int cid =Integer.parseInt(req.getParameter("cid"));
		CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
	 	boolean f = dao.delectBook(bid, cid);//userId ,
	 	HttpSession session = req.getSession();
	 	if(f) {
	 		session.setAttribute("succMsg", "Book Remove from Cart");
	 		resp.sendRedirect("checkout.jsp");
	 	}else {
	 		session.setAttribute("failed", "Something went wrong on server");
	 		resp.sendRedirect("checkout.jsp");
	 		
	 	}
	}
}
