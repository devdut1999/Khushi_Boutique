<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="zxx">
 <style>
	* {margin: 0; padding: 0; box-sizing: border-box;}

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

	#hero:before {
	  content: "";
	  background: rgba(0, 0, 0, 0.6);
	  position: absolute;
	  bottom: 0;
	  top: 0;
	  left: 0;
	  right: 0;
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

	#hero h1 {
	  margin: 30px 0 10px 0;
	  font-size: 48px;
	  font-weight: 700;
	  line-height: 56px;
	  text-transform: uppercase;
	  color: #fff;
	}

	@media (max-width: 768px) {
	  #hero h1 {
	    font-size: 28px;
	    line-height: 36px;
	  }
	}

	#hero h2 {
	  color: #eee;
	  margin-bottom: 50px;
	  font-size: 24px;
	}

	@media (max-width: 768px) {
	  #hero h2 {
	    font-size: 18px;
	    line-height: 24px;
	    margin-bottom: 30px;
	  }
	}

	#hero .btn-get-started {
	  font-family: "Poppins", sans-serif;
	  text-transform: uppercase;
	  font-weight: 500;
	  font-size: 16px;
	  letter-spacing: 1px;
	  display: inline-block;
	  padding: 8px 28px;
	  border-radius: 50px;
	  transition: 0.5s;
	  margin: 10px;
	  border: 2px solid #fff;
	  color: #fff;
	}

	#hero .btn-get-started:hover {
	  background: #2dc997;
	  border: 2px solid #2dc997;
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

    </style>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="KVS Departmental Store">
    <meta name="keywords" content="html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Khushi Boutique Home</title>

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
   <header class="header">
           
        <div class="hero">
          <div class="row">
                
            <div class="col-lg-6">
             <nav class="header__menu" style = "width:198%; margin-left:20px;justify-content : space-around;">
               <ul>
              
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style = "margin-top:20px;">
						        <a class="navbar-brand" style = " padding-left:105px;padding-bottom: 50px; " href="${pageContext.request.contextPath}/login_home">
						        	<h4 style="font-weight: bold;color: #fff; ;" class = "d-inline-block allign-top" >
					            Khushi's Designer Boutique</h4>
						        </a>
						       
						        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						          <div class="navbar-nav ml-auto"style = "padding-left:520px; ">
					              <li class="active"><a style = "color:white" href="${pageContext.request.contextPath}/">Home</a></li>
                            
                            	  <li><a style = "color:white" href="${pageContext.request.contextPath}/register/showRegistrationForm">Sign Up</a></li>
                            	  <li><a style = "color:white" href="${pageContext.request.contextPath}/showMyLoginPage"><i class="fa fa-user"></i> Sign In</a></li>
                            
	                           
						          </div>
						        </div>
					      </nav>
                       
                       
                        </ul>
                    </nav>
                </div>
                
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
        </div>
    </header>
               
    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3.7">
                    <div class="hero__categories" style = "background:rgba(0, 0, 0, 0.6);">
                        <div class="hero__categories__all" style = "background:rgba(22, 28, 28);">
                            <i class="fa fa-bars"></i>
                            <span>Product Categories</span>
                        </div>
                        <ul>
                        <!-- loop over all categories -->
                        <c:forEach var="temp" items="${categories}">
                        
                        <!-- construct an update "link" with distriutor id -->
							  
						<c:url var="viewLink" value="/customer/viewProducts">
							  			
							  	<c:param name="categoryId" value="${temp.id}" />
							  		
						</c:url>
						
                           <li><a style = " color: #fff;" href="${viewLink}"> ${temp.catName} </a></li>
                         </c:forEach>
                        </ul>
                    </div>
                </div>
                 <div class="col-lg-9">
                    
                        
                        <div class="hero__search__phone">
                            
                           
                        </div>
                    
                    
                    <div>
                    
                	<section id="hero">
					    <div class="hero-container" data-aos="zoom-in" data-aos-delay="100">
					    <img class="wave" src="${pageContext.request.contextPath}/resources/img/dev/fashion.png">
					      <h1>Welcome to Khushi's Designer Boutique</h1><br>
					      <h2>Here you get clothes that are more than just stitched fabric. Our fabric will build your trust in us. Be what you want to be and wear what you like, so keep calm and try our outfit!</h2>
					      <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="btn-get-started">Get Started</a>
					    </div>
					 </section>
                	</div>
              
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    
      <!-- Footer Section Begin -->
    <jsp:include page="footer.jsp" />
      <!-- Footer Section End -->
    	
    
    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</body>

</html>