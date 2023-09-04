<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Old: Books</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<style>
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-5">
		<div class="text-center">
			<c:if test="${not empty succMsg}">
				<h3 class="test-center text-success">${succMsg}</h3>
				<c:remove var="succMsg" />
			</c:if>
		</div>
		<table class="table table-hover bg-white">
			<thead class="bg-primary text-white ">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<%
				User u = (User) session.getAttribute("userobj");
				String email = u.getEmail();
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getBookByOld(email, "Old");
				for (BookDtls b : list) {
				%>
				<tr>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><a href="delete_old_book?em=<%=u.getEmail()%>&&id=<%=b.getBookId()%>" class="btn btn-sm btn-danger">Delete</a></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
	</div>
</body>
</html>