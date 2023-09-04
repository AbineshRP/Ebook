<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Books</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h5 class="text-center text-primary">Sell Old Books</h5>
						<form action="add_old_book" method="post"
							enctype="multipart/form-data">
							
							<c:if test="${not empty succMsg}">
								<p class="text-center text-success">${succMsg }</p>
								<c:remove var="succMsg" />
							</c:if>
							<c:if test="${not empty failedMsg}">
								<p class="text-center text-danger">${failedMsg }</p>
								<c:remove var="failedMsg" />
							</c:if>
							<input type="hidden" value="${userobj.email }"name="user">
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
								<label for="exampleFormControlfile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Sell</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>