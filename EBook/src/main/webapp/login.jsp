<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Login</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-1 mt-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center p-2">Login</h4>
						
						<c:if test="${not empty failedMsg}">
						<h5 class="test-center text-danger" style="margin-left:55px">${failedMsg}</h5>
						<c:remove var="failedMsg"/>
						
						</c:if>
						<c:if test="${not empty succMsg}">
						<h5 class="test-center text-success"style="margin-left:55px">${succMsg}</h5>
						<c:remove var="succMsg"/>
						
						</c:if>
						
						<form action="login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1"><i
									class="fa-solid fa-envelope"></i> Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="email"
									required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1"><i
									class="fa-solid fa-lock"></i> Password</label> <input type="password"
									class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">
									Login <i class="fa-solid fa-unlock-keyhole"></i>
								</button>
								<br> <a href="register.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>