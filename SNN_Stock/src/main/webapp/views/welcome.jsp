<!doctype html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<head>
<%@include file="./base.jsp"%>
</head>
	<body>	
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="#">RamzanSheikh</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/">Home</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/list_user">Users</a>
	      </li>
	      <li class="nav-item">
	        <form action="logout" method="post">
				<a class="nav-link" href="${pageContext.request.contextPath }/login">Logout</a>
			</form>
	      </li>
	    </ul>
	  </div>
	</nav>
	<!-- Navigationbar end here.... -->
	
	<h5>Welcome ${user.name } to SNN Stock update</h5>
	
	<!-- Available port table -->
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h4 class="text-center mb-3">Available Ports</h4>
				
				<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Port Name</th>
								<th scope="col">CHA Name</th>
								<th scope="col">Number</th>								
								<th scope="col">Show Stock</th>
								<th scope="col">Edit Port</th>
								<th scope="col">Delete Port</th>
							</tr>
						</thead>
						<tbody>						
						<c:forEach items="${ports }" var="pt">
								<tr>
									<th scope="row">${pt.id }</th>
									<td>${pt.portName }</td>
									<td>${pt.cha }</td>
									<td>${pt.number }</td>
									<td><a href="show-stock/${pt.portName }">Show</a></td>
									<td><a href="edit/${pt.id }"><i class="fa-solid fa-pen" style="font-size: 20px;"></i></a></td>										 
									<td><a href="delete/${pt.id }"><i class="fa-solid fa-trash-can text-danger" style="font-size: 20px;"></i></a></td>
									</tr>
							</c:forEach>
						</tbody>
				 </table>
				 <div class="text-center">
						<a href="addport" class="btn btn-outline-success">Add Port</a>
				 </div>			
			</div>
		</div>
	</div>
	
	
	</body>
</html>






















