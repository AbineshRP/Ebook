package com.user.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBook extends HttpServlet{
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String Categories = "Old";
			String status = "Active";
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();
			String useremail=req.getParameter("user");
			BookDtls b = new BookDtls(bookName, author, price, Categories, status, fileName, useremail);

			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());


			String path = getServletContext().getRealPath("") + "book";
			
			File file = new File(path);
			
			part.write(path + File.separator + fileName);
			boolean f = dao.addBooks(b);
			HttpSession session = req.getSession();
			if (f) {

				session.setAttribute("failedMsg", "Something Went Wrong");
				resp.sendRedirect("sellbook.jsp");
			} else {
				session.setAttribute("succMsg", "Book Add Successfully");
				resp.sendRedirect("sellbook.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
