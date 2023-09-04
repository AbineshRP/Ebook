<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Details</title>
<%@include file="all_component/allcss.jsp"%>
</head>

<body style="background-color: #f0f1f2">


<%
	User us = (User) session.getAttribute("userobj");
	%>
	<c:if test="${not empty addCart}">
		<div id="toast">${addCart}</div>
		
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	

	<%	
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookbyId(bid);
	%>
	<div class="container p-3">
		<div class="row ">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoName()%>"
					style="height: 150px; width: 100px"><br>
				<h4 class="mt-2">
					Book Name:<span class="text-success"><%=b.getBookName()%></span>
				</h4>
				<h4>
					Author Name:<span class="text-success"> <%=b.getAuthor()%></span>
				</h4>
				<h4>
					Category:<span class="text-success"> <%=b.getBookCategory()%></span>
				</h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getBookName()%></h2>
				<%
				if (b.getBookCategory().equals("Old")) {
				%>
				<h5 class="text-primary">Contact To Seller</h5>
				<h5 class="text-success">
					<i class="fa-solid fa-envelope"></i> EMail:
					<%=b.getEmail()%></h5>
				<%
				}
				%>

				<div class="row ">
					<div class="col-md-4 text-danger text-center p-2">

						<i class="fa-solid fa-money-bill-1-wave fa-2x"></i>
						<p>Cash on delivery</p>
					</div>
					<div class="col-md-4 text-danger tect-center p-2">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger tect-center p-2">

						<i class="fa-solid fa-truck fa-2x"></i>
						<p>Free shipping</p>
					</div>
					<%
					if (b.getBookCategory().equals("Old")) {
					%>
				</div>
				<div class="text-center ml-5">
					<div class="row text-center ml-5">
						<a href="" class="btn btn-success text-center ml-2"><i
							class="fa-solid fa-cart-plus"></i> Continue Shopping</a> <a href=""
							class="btn btn-danger ml-2"><i
							class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
					</div>
				</div>
				<%
				} else {
				%>
				<div class="text-center ml-5">
					<div class="row text-center ml-5">
						<a href="cart?bid=<%=b.getBookId()%>&&uid?=<%=us.getId()%>" class="btn btn-success btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
							class="btn btn-danger ml-2"><i
							class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%> </a>
					</div>
				</div>
				<%
				}
				%>



			</div>
		</div>
	</div>
	</div>
</body>
</html>