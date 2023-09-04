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
<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"></c:redirect>
	
	</c:if>


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
					<h4 class="text-center">Add Books</h4>
						<form action="../add_books" method="post" 
						enctype="multipart/form-data">
						<c:if test="${not empty succMsg}">
						<p class="text-center text-success">${succMsg }</p>
						<c:remove var="succMsg"/>
						 </c:if>
						<c:if test="${not empty failedMsg}">
						<p class="text-center text-danger">${failedMsg }</p>
						<c:remove var="failedMsg"/>
						 </c:if>
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="bname" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="author" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="price" required="required">
							</div>
							<div class="form-group">
								<label for="inputState"> Book Categories</label> <select
									class="form-control" id="inputstate" name="categories">
									<option selected>--select--</option>
									<option value="New">New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="inputState"> Book Status</label> <select
									class="form-control" id="inputstate" name="status">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlfile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">ADD</button>
							</div>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>