<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">

<head>
	
	<title>Review</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
		<style>
		.error {color:red}
	</style>

</head>

<body>


	<div>
		
		<div id="loginbox" style="margin-top: 50px;margin-left:520px;"
			class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">
			
			<div class="panel panel-primary">

				<div class="panel-heading" style = " background-color: rgb(45, 45, 48);">
					<div class="panel-title"><h4 style="text-align:center;">Post your Product Review</h4></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- Registration Form -->
					<form action="${pageContext.request.contextPath}/customer/postProductReview" 
						
						  	   method="POST"
						  	   class="form-horizontal">
					

						
						<!-- Rating -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
		
							<input required type="number" step="0.1" name="rating" placeholder="Rate the Product out of 5" class="form-control" />
						</div>
						
						<!-- Description -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							
							<input required type="text" name="description" placeholder="Detailed Review of Product" class="form-control" />
						</div>
						
						
						
						
						<!-- Post Button -->
						<div style="margin-top: 10px;margin-left:95px;" class="form-group">						
							<div class="col-sm-6 controls">
								<button type="submit" class="btn btn-primary">Save</button>
							</div>
						</div>
						
						<!-- Order ID Hidden -->
						<input type="hidden"
								name="productId"
								value="${product.id}" />
						
						<!-- Manually add csrf token -->
						
						<input type="hidden"
								name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						
					</form>
					<div style="clear; both;"></div>
					<p>
					<a href="${pageContext.request.contextPath}/login_home"><h5 style="text-align:center;">Back to Home page</h5></a>
					
					
					
					</p>

				</div>

			</div>

		</div>

	</div>

</body>
</html>