<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Register</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2 mt-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">REGISTER</h4>
						<c:if test="${not empty Success}">
						<p class="text-center text-success">${Success}</p>
						<c:remove var="Success"/>
						</c:if>
						
						<c:if test="${not empty Failed}">
						<p class="text-center text-danger">${Failed}</p>
						<c:remove var="Failed"/>
						
						</c:if>
						<form action="Register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">  <i
									class="fa-regular fa-keyboard"></i>Enter Full name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"><i
									class="fa-solid fa-envelope"></i> Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"><i
									class="fa-solid fa-phone"></i> Phone Number</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="phno" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1"><i
									class="fa-solid fa-lock"></i> Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1" name="password" required="required">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1" > <label class="form-check-label"
									for="exampleCheck1" >Agree terms & condition</label>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">
									<i class="fa-regular fa-address-card"></i> Register
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>