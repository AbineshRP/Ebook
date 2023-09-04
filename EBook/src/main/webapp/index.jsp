<%@page import="com.entity.User"%>
<%@page import="java.awt.print.Book"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: index</title>
<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 65vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	padding-right: 98px;
	padding-top: 35px;
	-webkit-text-stroke: medium;
}
</style>
</head>
<body style="background-color: #f0f1f2">

	<%
	User us = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img"></div>

	<!-- Recent Book Start-->
	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao2.getRecentBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card text-center">
					<div class="card-body">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 250px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>


						<%
						if (b.getBookCategory().equals("Old")) {
						%>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<%
							if (us == null) {
							%>
							<a href="login.jsp" class="btn btn-success btn-sm ml-5">View
								Details</a> <a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							<%
							} else {
							%>
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>

							<%
							}
							%>
						</div>

						<%
						} else {
						%>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<%
							if (us == null) {
							%>

							<a href="login.jsp" class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a
								href="login.jsp" class="btn btn-success btn-sm ml-1">View
								Details</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid?=<%=us.getId()%>"
								class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a
								href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a>

							<%
							}
							%>
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
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
		<div class="text-center mt-3">
			<a href="all_recent_book.jsp"
				class="btn btn-success btn-sm text-white">view all</a>
		</div>
	</div>
	<!-- Recent Book End-->
	<hr>

	<!-- New Book Start-->
	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getNewBook();
			for (BookDtls b : list2) {
			%>

			<div class="col-md-3">
				<div class="card text-center">
					<div class="card-body">
						<img src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 250px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">

							<%
							if (us == null) {
							%>

							<a href="login.jsp" class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a
								href="login.jsp" class="btn btn-success btn-sm ml-1">View
								Details</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid?=<%=us.getId()%>"
								class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a
								href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a>


							<%
							}
							%>

							<a href="" class="btn btn-danger btn-sm ml-1"> <i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-3">
			<a href="all_new_book.jsp" class="btn btn-success btn-sm text-white">view
				all</a>
		</div>
	</div>
	<!-- New Book End-->
	<hr>
	<!-- Old Book Start-->
	<div class="container">
		<h3 class="text-center">Old Book</h3>
		<div class="row">
			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao3.getOldBook();
			for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card text-center">
					<div class="card-body">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 250px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<%
							if (us == null) {

							 %>
							<a href="login.jsp" class="btn btn-success btn-sm ml-5">View
								Details</a>

							<%
							}else 
							{
							%>

							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> 
							<%	
			                 }
			                 %>
								<a
								href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-3">
			<a href="all_old_book.jsp" class="btn btn-success btn-sm text-white">view
				all</a>
		</div>
	</div>
	<!-- Old Book End-->
	<%@include file="all_component/footer.jsp"%>
</body>
</html>