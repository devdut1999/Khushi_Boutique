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
	
	<title>Register New User Form</title>
	
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
				<div class="col-lg-3">
                    
                </div>


	<div>
		
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">
			
			<div class="panel panel-primary">

				<div class="panel-heading" style="background-color: rgb(45, 45, 48);">
					<div class="panel-title" ><h3 style = "text-align:center;">Register New User</h3></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- Registration Form -->
					<form:form action="${pageContext.request.contextPath}/register/processRegistrationForm" 
						  	   modelAttribute="crmUser"
						  	   class="form-horizontal">

					    <!-- Place for messages: error, alert etc ... -->
					    <div class="form-group">
					        <div class="col-xs-15">
					            <div>
								
									<!-- Check for registration error -->
									<c:if test="${registrationError != null}">
								
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											${registrationError}
										</div>
		
									</c:if>
																			
					            </div>
					        </div>
					    </div>

						
						<!-- First name -->
						<div style="margin-bottom: 5px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							<form:errors path="firstName" cssClass="error" />
							<form:input path="firstName" placeholder="First Name (*)" class="form-control" />
						</div>
						
						<!-- Middle name -->
						<div style="margin-bottom: 5px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							<form:errors path="middleName" cssClass="error" />
							<form:input path="middleName" placeholder="Middle Name" class="form-control" />
						</div>
						
						<!-- Last name -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
							<form:errors path="lastName" cssClass="error" />
							<form:input path="lastName" placeholder="Last Name" class="form-control" />
						</div>
						
						<!-- Email -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> 
							<form:errors path="email" cssClass="error" />
							<form:input path="email" placeholder="Email (*)" class="form-control" />
						</div>
						
						<!-- Street -->
						<div style="margin-bottom: 5px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							<form:errors path="street" cssClass="error" />
							<form:input path="street" placeholder="Street" class="form-control" />
						</div>
						
						<!-- City -->
						<div style="margin-bottom: 5px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							<form:errors path="city" cssClass="error" />
							<form:input path="city" placeholder="City (*)" class="form-control" />
						</div>
						
						<!-- Pin -->
						<div style="margin-bottom: 5px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							<form:errors path="pin" cssClass="error" />
							<form:input type="number" path="pin" placeholder="PIN Code (*)" min="100000" class="form-control" />
						</div>
						
						<!-- State -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							<form:errors path="state" cssClass="error" />
							<form:input path="state" placeholder="State (*)" class="form-control" />
						</div>
						
						<!-- Password -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
							<form:errors path="password" cssClass="error" />
							<form:password path="password" placeholder="password (*)" class="form-control" />
						</div>
						
						<!-- Confirm Password -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
							<form:errors path="matchingPassword" cssClass="error" />
							<form:password path="matchingPassword" placeholder="confirm password (*)" class="form-control" />
						</div>
					
						

						<!-- Register Button -->
						<div style="margin-left:85px; text-align:center;" class="form-group">						
							<div class="col-sm-6 controls">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>
						</div>
						
					</form:form>

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