<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">
<style>
	

	  #hero {
	  width: 100%;
	  height: 100vh;
	  background: url(../img/hero-bg.jpg) top center;
	  background-size: cover;
	  position: relative;
	}
	 .wave{
        position: fixed;
        bottom: 0;
        left: 0;
        height: 100%;
        width: 100%;
        z-index: -1;
      }
      
 #hero .hero-container {
	  position: absolute;
	  bottom: 0;
	  top: 0;
	  left: 0;
	  right: 0;
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  flex-direction: column;
	  text-align: center;
	}

    </style>
	
<head>
	
	<title>Login Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0 ">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	


</head>

<body>

				

	<div>
		
		<div id="loginbox" style="margin-top: 100px; margin-left : 530px;"
			class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">
			
			<div class="panel panel-info">

				<div class="panel-heading">
					<div class="panel-title" align="center"><h3>Sign In</h3></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- Login Form -->
					<form action="${pageContext.request.contextPath}/authenticateTheUser" 
						  method="POST" class="form-horizontal">

					    <!-- Place for messages: error, alert etc ... -->
					    <div class="form-group">
					        <div class="col-xs-15">
					            <div>
								
									<!-- Check for login error -->
								
									<c:if test="${param.error != null}">
										
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Invalid username and password.
										</div>
		
									</c:if>
										
									<!-- Check for logout -->

									<c:if test="${param.logout != null}">
										            
										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											You have been logged out.
										</div>
								    
									</c:if>
									
					            </div>
					        </div>
					    </div>

						<!-- User name -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							
							<input type="text" name="username" placeholder="User ID" class="form-control">
						</div>

						<!-- Password -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
							
							<input type="password" name="password" placeholder="Password" class="form-control" >
						</div>

						<!-- Login/Submit Button -->
						<div style="margin-top: 10px; margin-left:95px;" class="form-group">						
							<div class="col-sm-6 controls" >
								<button type="submit" class="btn btn-success">Login</button>
							</div>
						</div>

						<!-- Manually adding tokens-->

						<input type="hidden"
							   name="${_csrf.parameterName}"
							   value="${_csrf.token}" />
						<br>
						
					<div align="center">
						<h4 >New User ?</h4>
						<a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="btn btn-primary" role="button" aria-pressed="true">Create Account</a>
					</div>
					</form>

				</div>
				
			</div>


		</div>

	</div>
	
	<section >
	    <div class="hero-container" data-aos="zoom-in" data-aos-delay="100">
	    <img class="wave" src="${pageContext.request.contextPath}/resources/img/dev/fashion.png">
	     </div>
	 </section>
	           	

</body>
</html>