<!doctype html>
<html lang="en">
<%@page isELIgnored = "false" %>
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
	        <a class="nav-link" href="${pageContext.request.contextPath }/login">Login</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/list_user">Users</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	<!-- Navigationbar end here.... -->
	
	<!-- Form for User Login -->
	<div class="container mt-2 border border-primary rounded p-3" style="width:600px;">
	
		<!-- Registration form Design -->
		<div class="text-center">
      			<h4 class="text-color-primary">User Login</h4>
    	</div>
    	
    	<hr class="text-primary"/>
		
		<form action="user_login" method="POST">
			<!-- User ID -->
			<div class="form-group mt-4">
				<label for="uname">User Name</label> 
				<input type="text" class="form-control form-control-sm" id="uname" placeholder="Enter Username" name="username" required>
			</div>
			<!-- Password -->
			<div class="form-group">
				<label for="email">User Password</label> 
				<input type="password" class="form-control form-control-sm" id="password" placeholder="Enter password" name="password" required>
		
			</div>
			
			<!-- Button -->
			
			 <div class="text-center">
      			<button type="submit" class="btn btn-outline-success btn-sm">Login</button>
    		 </div>
    		 <div class="text-center">
    		 	<small class="text-danger">${msg }</small>
    		 </div>
    		 <div class="text-right">
      			<small>New User? Registered<a href="${pageContext.request.contextPath }/registration"> here...</a></small>
      		</div>

		</form>
	</div>
</body>
</html>