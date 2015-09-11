<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%! String pageTitle = "Login"; %>

<!DOCTYPE html>
<html>
<head>
	<%@include file="includes/head.jsp" %>
</head>
<body class="container login">
	<%! boolean error; %> 
	<% error = request.getAttribute("error") != null; %>
    <section class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-5">
			<h3>Please log in</h3>
			<form method="post" action="login">
			  	<div class="form-group <% if (error) { %>has-error<% } %>">
			    	<label for="inputUsername" class="control-label">Username</label>
			   		<input type="text" class="form-control" placeholder="Username" name="username" autofocus required>
			  	</div>
			  	<div class="form-group <% if (error) { %>has-error<% } %>">
			    	<label for="inputPassword" class="control-label">Password</label>
			   		<input type="password" class="form-control" placeholder="Password" name="password" required>
			  	</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>		
			<% if (error) { %>
			      <div class="alert alert-danger" role="alert">Oh snap! Invalid credentials. Try submitting again.
			      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					</button>
			      </div>
			<% } %>
		</div>
		<div class="col-sm-4"></div>
	</section>
</body>
</html>
