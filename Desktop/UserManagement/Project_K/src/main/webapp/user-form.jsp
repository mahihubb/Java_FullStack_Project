<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
.save-btn {
    display: inline-block;
    background-color: #3e588b;
    color: white; /* Initially black text */
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    text-decoration: none; /* Remove underline from the link */
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
}

.save-btn:hover {
    background-color: #304a73; /* Slightly darker shade */
    color: white; /* Change to white on hover */
    transform: scale(1.05); /* Slightly larger on hover */
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
}

.save-btn:active {
    transform: scale(0.98); /* Slightly smaller when clicked */
    background-color: #2b4263; /* Even darker shade when pressed */
}

</style>
</head>
<body style="background-color: #eff3fa">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #3e588b">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> User Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card" style="border: 3px solid #3e588b;" >
			<div class="card-body" style="background-color: #eff3fa">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group" >
					<label>User Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>User Country</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="save-btn ">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>