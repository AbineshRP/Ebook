<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin :All Books</title>
<%@include file="allcss.jsp"%>
</head>
<body>

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
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"></c:redirect>

	</c:if>


	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="home.jsp"><i
			class="fa-sharp fa-solid fa-arrow-left"></i></a>
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

	<h2 class="text-center">Hello</h2>

	<c:if test="${not empty succMsg}">
		<h5 class="text-center text-success">${succMsg }</h5>
		<c:remove var="succMsg" />
	</c:if>
	<c:if test="${not empty failedMsg}">
		<h5 class="text-center text-danger">${failedMsg }</h5>
		<c:remove var="failedMsg" />
	</c:if>


	<table class="table table-striped ">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Book Name</th>
				<th scope="col">Image</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId() %></td>
				<td><img src="../book/<%=b.getPhotoName() %>" style="height:50px;width:50px;"></td>
				<td><%=b.getBookName() %></td>
				<td><%=b.getAuthor() %></td>
				<td><%=b.getPrice() %></td>
				<td><%=b.getBookCategory() %></td>
				<td><%=b.getStatus() %></td>
				<td><a href="editbooks.jsp?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-primary"><i
						class="fa-solid fa-pen-to-square"></i> Edit</a> <a
					href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger"><i
						class="fa-solid fa-trash"></i> Delete</a></td>
			
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
	<div style="margin-top: 7cm;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>