<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

	<div class="container-fluid"
		style="height: 10px; background-color: #303f9f"></div>

	<div class="container-fluid p-3">
		<div class="row" style="margin-left: 18cm">
			<div class="col-md-3 text-success">
				<h3>
					<i class="fa-solid fa-book"></i>EBooks
				</h3>
			</div>
		</div>
	</div>

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="home.jsp"><i
			class="fa-sharp fa-solid fa-house"></i></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
			</ul>
		</div>
	</nav>


	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>
						
						
							<%
							/*  int id = Integer.parseInt(request.getParameter("id"));
							BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
							BookDtls b = dao.getBookbyId(id); 
							 */
							Connection conn = null;
							PreparedStatement stmt = null;
							{
								Class.forName("com.mysql.jdbc.Driver");
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "password");

								// Create a SQL query
								int id = Integer.parseInt(request.getParameter("id"));
								stmt = conn.prepareStatement("SELECT * FROM book_dts WHERE bookid=?");
								stmt.setInt(1, id);
								ResultSet rs = stmt.executeQuery();
								if (rs.next()) {
									String bookid = rs.getString("bookid");
									String bookname = rs.getString("bookname");
									String author = rs.getString("author");
									String price = rs.getString("price");
									String status = rs.getString("status");
							%>
							<form action="../editbooks" method="post">
							<input type="hidden" name="id" value="<%= bookid%>">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="bname" required="required"
									value="<%=bookname%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="author" required="required"
									value="<%=author%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="price" required="required"
									value="<%=price%>">
							</div>
							<div class="form-group">
								<label for="inputState"> Book Status</label> <select
									class="form-control" id="inputstate" name="status">
									<%
									if ("Active".equals(status)) {
									%>
									<option value="Active">Active</option>
									<Option value="Inactive">Inactive</option>
									<%
									} else {
									%>
									<option value="Active">Active</option>
									<Option value="Inactive">Inactive</option>
									<%
									}
									}
									}
									%>
								</select>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">UPDATE</button>
							</div>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>