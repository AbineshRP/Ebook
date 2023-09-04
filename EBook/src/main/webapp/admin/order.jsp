<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin :All Books</title>
<%@include file="allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"></c:redirect>

	</c:if>
	<h2 class="text-center">Hello</h2>

	<table class="table table-striped ">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Order Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>

			<%
			BookOrderDAOImpl dao = new BookOrderDAOImpl(DBConnect.getConn());
			List<Book_Order> blist = dao.getBookAllOrder();
			for (Book_Order b : blist) {
			%>
			
			<tr>
				<th scope="row"><%=b.getOrderId() %></th>
				<td><%=b.getUsername() %></td>
				<td><%=b.getEmail() %></td>
				<td><%=b.getFulladd() %></td>
				<td><%=b.getPhno() %></td>
				<td><%=b.getBookName() %></td>
				<td><%=b.getAuthor() %></td>
				<td><%=b.getPrice() %></td>
				<td><%=b.getPaymentType() %></td>

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