<!doctype html>
<html lang="en">
<head>
<%@include file="./base.jsp"%>
</head>
<body>

	<!-- Navigation Bar --> <!-- style="background-color: #e3f2fd; -->
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


	<!-- Registration form Design -->
	<div class="container mt-2 border border-primary rounded p-3" style="width:600px;">
	
		<div class="text-center">
      			<h4 class="text-success">New User Registration</h4>
    	</div>
    	
    	<hr class="text-primary"/>
		
		<form action="user_registration" method="post">
			
			<!-- Name Field -->
			<div class="form-group">
				<label for="name">Name</label> 
				<input type="text" class="form-control form-control-sm" id="name" placeholder="Enter full name" name="name" required>				
			</div>	
	
			<!-- Email Field -->
			<div class="form-group">
				<label for="email">Email address</label> 
				<input type="email" class="form-control form-control-sm" id="email" aria-describedby="emailHelp"
					placeholder="Enter email" name="email" required>					
			</div>			
			<!-- User ID -->
			<div class="form-group">
				<label for="userid">User Name</label> 
				<input type="text" class="form-control form-control-sm" id="userid" placeholder="Enter User id" name="username" required>
			</div>
			<!-- Password -->
			<div class="form-group">
				<label for="email">User Password</label> 
				<input type="password" class="form-control form-control-sm" id="password" placeholder="Enter password" name="password" required>
		
			</div>
			
			<!-- Button -->
			
			 <div class="text-center">
      			<button type="submit" class="btn btn-outline-success btn-sm">Sign Up</button>
    		 </div>
    		 <div class="text-right">
      			<small>Already Registered? Login<a href="${pageContext.request.contextPath }/"> here...</a></small>
      		</div>

		</form>
	</div>

</body>
</html>