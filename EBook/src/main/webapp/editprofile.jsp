<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Edit Profile</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h4 class="text-center text-primary"> Edit Profile</h4>
					
						<c:if test="${not empty succMsg}">
						<h5 class="test-center text-success"style="margin-left:55px">${succMsg}</h5>
						<c:remove var="succMsg"/>
						
						</c:if>
						<c:if test="${not empty failedMsg}">
						<h5 class="test-center text-danger" style="margin-left:55px">${failedMsg}</h5>
						<c:remove var="failedMsg"/>
						
						</c:if>
					
					
					<form action="update_profile" method="post">
					<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-group">
								<label for="exampleInputEmail1">  <i
									class="fa-regular fa-keyboard"></i>Enter Full name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname" required="required" value="${userobj.name}">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"><i
									class="fa-solid fa-envelope"></i> Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email" required="required" value="${userobj.email }">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"><i
									class="fa-solid fa-phone"></i> Phone Number</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="phno" required="required" value="${userobj.phno}">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1"><i
									class="fa-solid fa-lock"></i> Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1" name="password" required="required">
							</div>
							
							<div class="text-center">
								<button type="submit" class="btn btn-primary">
									<i class="fa-regular fa-address-card"></i> Update
								</button>
							</div>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>