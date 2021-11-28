<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="zxx">

 <style>
	.blank_row
	{
		background-color: rgb(4, 16, 89) !important;
	    height: 10px !important; /* overwrites any other rules */
	    
	}

	  #hero {
	  width: 100%;
	  height: 100vh;
	  background: url(../img/hero-bg.jpg) top center;
	  background-size: cover;
	  position: relative;
	}

	@media (min-width: 1024px) {
	  #hero {
	    background-attachment: fixed;
	  }
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

	
	
      .wave{
        position: fixed;
        bottom: 0;
        left: 0;
        height: 100%;
        width: 100%;
        z-index: -1;
      }
      
    @media screen and (max-width: 1050px){
      .container{
        grid-gap: 5rem;
      }
    }

 
#distributors {
  
  border-collapse: collapse;
  width: 100%;
}

#distributors td, #distributors th {
  border: 1px solid #ddd;
  padding: 8px;
}

#distributors tr:nth-child(even){background-color: white;}

#distributors tr:nth-child(odd){background-color: white;}
#distributors tr:hover {background-color: #ddd;}

#distributors th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: rgb(116, 116, 196);
  color: rgb(45, 45, 48);
}

.error {color:red}
</style>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="KVS Departmental Store">
    <meta name="keywords" content="html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Product</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" type="text/css">
     <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="{% static 'open-iconic/font/css/open-iconic-bootstrap.css' %}" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
   </head>


<body>
    

  
<jsp:include page="header.jsp" />



	<div>
		
		<div id="loginbox" style="margin-top: 50px; margin-left:520px;"
			class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">
			
			<div class="panel panel-primary">

				<div class="panel-heading" style = " background-color: rgb(45, 45, 48);">
					<div class="panel-title"><h4 style = "text-align:center;">Add/Update Product</h4></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<!-- Registration Form -->
					<form action="${pageContext.request.contextPath}/admin/saveProduct" 
						
						  	   method="POST"
						  	   class="form-horizontal">
					

						
						<!-- Product name -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
		
							<input required type="text" name="productName" placeholder="Name of the Product" class="form-control" />
						</div>
						
						<!-- Product Description -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							
							<input required type="text" name="productDes" placeholder="Product Description" class="form-control" />
						</div>
						
						<!-- Product Category -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							
							<select required name="category" class="form-control">
                  					
                  					<!-- loop over all categories -->
                  				<option value="none" selected disabled hidden>Choose Product Category</option>
                        		<c:forEach var="temp" items="${categories}">
                  					<option value="${temp.catName}" label="${temp.catName}"/>
                         		</c:forEach>
                         
							</select>
						</div>
						
						<!-- Product Brands -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							
							<select required name="brand" class="form-control">
								<!-- loop over all brands -->
								<option value="none" selected disabled hidden>Choose Brand</option>
                        		<c:forEach var="temp" items="${brands}">
                  					<option value="${temp.brandName}" label="${temp.brandName}"/>
                         		</c:forEach> 
							</select>
						</div>
						
						<!-- MRP -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							
							<input required type="number" name="MRP" placeholder="MRP (in Rs.)" min="1" class="form-control" />
						</div>
						
						<!-- Quantity in stock -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							
							<input required type="number" name="quantity" placeholder="Quantity in Stock" min="0" class="form-control" />
						</div>
						
						<!-- Godown -->
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span> 
							
							<select required name="godown" class="form-control">
								<!-- loop over all brands -->
								<option value="none" selected disabled hidden>Select Godown Id</option>
                        		<c:forEach var="temp" items="${godowns}">
                  					<option value="${temp.id}" label="${temp.id}"/>
                         		</c:forEach> 
							</select>
						</div>
						

						<!-- Register Button -->
						<div style="margin-top: 10px;margin-left:85px;" class="form-group">						
							<div class="col-sm-6 controls">
								<button type="submit" class="btn btn-primary">Save</button>
							</div>
						</div>
						
						<!-- Manually add csrf token -->
						
						<input type="hidden"
								name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						
					</form>
					
					<div style="clear; both;"></div>
					<p>
					<a  href="${pageContext.request.contextPath}/login_home"><h5 style= "text-align:center;">Back to Home page</h5></a>
					
					
					</p>

				</div>

			</div>

		</div>

	</div>

<br>
                   <br>
		
                    
           	<section >
			  
			  <img class="wave" src="${pageContext.request.contextPath}/resources/img/dev/fashion.png">
			    
			   
			</section>
           	


   
    
    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  

</body>

</html>
