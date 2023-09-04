<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Settings</title>
<%@include file="all_component/allcss.jsp"%>
<style>
a{
text-decoration: none;
color:black;
}
a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f0f1f2">

<c:if test="${empty userobj}">
<c:redirect url="login.jsp"></c:redirect>
</c:if>

	<%@include file="all_component/navbar.jsp"%>
	
	<div class="container">
	<c:if test="${not empty userobj }">
		<h3 class="text-center">Hello,${userobj.name}</h3>	
	</c:if>
		<div class="row p-5">
			<div class="col-md-4">
				<a href="sellbook.jsp">
					<div class="card">
						<div class="card-body text-center"> 
						<div class="text-primary">
						<i class="fa-solid fa-book-open fa-3x"></i>
						</div>
						<h4>Sell Old Book</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="old_book.jsp">
					<div class="card">
						<div class="card-body text-center"> 
						<div class="text-primary">
						<i class="fa-solid fa-book-open fa-3x"></i>
						</div>
						<h4> Old Book</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="editprofile.jsp">
					<div class="card">
						<div class="card-body text-center"> 
						<div class="text-primary">
						<i class="fa-solid fa-address-card fa-3x"></i>
						</div>
						<h4>Edit Profile</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6 my-3">
				<a href="orderbook.jsp">
					<div class="card">
						<div class="card-body text-center"> 
						<div class="text-danger">
						<i class="fa-solid fa-box-open fa-3x"></i>
						</div>
						<h4>My Order</h4>
						<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6 my-3">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center"> 
						<div class="text-success">
						<i class="fas fa-user-circle fa-3x"></i>
						</div>
						<h4>Help Center</h4>
						<p>24*7 Service</p>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</body>
</html>