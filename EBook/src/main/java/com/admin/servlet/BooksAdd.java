package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.omg.CORBA.Request;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String Categories = req.getParameter("categories");
			String status = req.getParameter("status");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			BookDtls b = new BookDtls(bookName, author, price, Categories, status, fileName, "admin");

			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());


			String path = getServletContext().getRealPath("") + "book";
			
			File file = new File(path);
			
			part.write(path + File.separator + fileName);
			boolean f = dao.addBooks(b);
			HttpSession session = req.getSession();
			if (f) {

				session.setAttribute("failedMsg", "Something Went Wrong");
				resp.sendRedirect("admin/add_books.jsp");
			} else {
				session.setAttribute("succMsg", "Book Add Successfully");
				resp.sendRedirect("admin/add_books.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
