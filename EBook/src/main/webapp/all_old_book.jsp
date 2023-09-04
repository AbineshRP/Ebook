<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Old Books</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<%
	User us = (User) session.getAttribute("userobj");
	%>
	<div class="container-fluid">
		<h3 class="text-center">Old Book</h3>
		<div class="row p-3">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getAllOldBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3 p-3">
				<div class="card text-center">
					<div class="card-body">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 250px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<%
						if (us == null) {
						%>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row ml-4">
							<a href="login.jsp" class="btn btn-success btn-sm ml-5">View
								Details</a> <a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row ml-4">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
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
	</div>
</body>
</html>