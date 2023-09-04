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
<title>All New Books</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<style type="text/css">
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
<body>
	<%
	User us = (User) session.getAttribute("userobj");
	%>
	<c:if test="${not empty addCart}">
		<div id="toast">${addCart}</div>
		<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>
	</c:if>
	
	
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<h3 class="text-center">New Book</h3>
		<div class="row p-3">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getAllNewBook();
			for (BookDtls b : list2) {
			%>

			<div class="col-md-3 p-3">
				<div class="card text-center">
					<div class="card-body">
						<img src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 250px">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
						
						<%
							if (us == null) {
							%>

							<a href="login.jsp" class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>
								<a
								href="login.jsp"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							<%
							} else 
							{
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid?=<%=us.getId()%>" class="btn btn-danger btn-sm "><i
								class="fa-solid fa-cart-shopping"></i>Add Cart</a>
								<a
								href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>


							<%
							}
							%>
						</div>
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