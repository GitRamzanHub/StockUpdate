<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
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
	
	<!-- Form for Adding New Ports -->
	<div class="container mt-2 border border-primary rounded p-3" style="width:600px;">
	
		<div class="text-center">
      			<h4 class="text-color-primary">Adding New Ports</h4>
    	</div>
    	
    	<hr class="text-primary"/>
		
		<form action="addingPort" method="POST">
			<!-- Port Name -->
			<div class="form-group mt-4">
				<label for="pname">Port Name</label> 
				<input type="text" class="form-control form-control-sm" id="pname" placeholder="Enter Port Name" name="portName" required>
			</div>
			
			<!-- CHA Name -->
			<div class="form-group">
				<label for="chanName">CHA Name</label> 
				<input type="text" class="form-control form-control-sm" id="chaName" placeholder="Enter CHA Name" name="cha" required>
		
			</div>
			
			<div class="form-group">
				<label for="chaNumber">CHA Number</label> 
				<input type="text" class="form-control form-control-sm" id="chaNumber" placeholder="Enter CHA Number" name="number" required>
		
			</div>
			
			<!-- Button -->
			
			 <div class="text-center">
			 	<a href="welcome">
				 	<button type="button" class="btn btn-outline-success btn-sm">Back</button>
				</a>
				<form action="addingPort" method="POST">
      				<button type="submit" class="btn btn-outline-success btn-sm">Add Port</button>
      			</form>
    		 </div>
		</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<body>

</body>
</html>