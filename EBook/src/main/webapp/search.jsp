<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Books</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
	User us = (User) session.getAttribute("userobj");
	%>
	<div class="container-fluid">
		<h3 class="text-center">Recent Book</h3>
		<div class="row p-3">

			<%
			String ch = request.getParameter("ch");
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao2.getBookBySearch(ch);
			for (BookDtls b : list) {
			%>

			<div class="col-md-3 p-3">
				<div class="card text-center">
					<div class="card-body">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 250px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>


						<%
						if (b.getBookCategory().equals("Old")) {

							if (us == null) {
						%>

						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="login.jsp" class="btn btn-success btn-sm ml-5">View
								Details</a> <a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>

						<%
						} else {
						%>

						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
						}
						%>



						<%
						} else {

						if (us == null) {
						%>

						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="login.jsp" class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a
								href="login.jsp"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>


						<%
						} else {
						%>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="cart?bid=<%=b.getBookId()%>&&uid?=<%=us.getId()%>" class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a
								href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
						}
						%>

						<%
						}
						%>

					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>

	</div>
</body>
</html>