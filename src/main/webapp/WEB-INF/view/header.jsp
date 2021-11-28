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



<body>
   <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
	
	<br>
    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <%-- <div class="humberger__menu__logo">
             <a href="#"><img src="${pageContext.request.contextPath}/resources/img/dev/logo_1.png" alt=""></a> 
        </div>--%>
        
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/register/showRegistrationForm" style = " color: #fff;">Sign Up</a></li>
                <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out" style = " color: #fff;"></i> Sign Out</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
       
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
           
        <div class="hero">
            <div class="row">
                
                <div class="col-lg-6">
                    <nav class="header__menu" style = "width:198%; margin-left:20px;justify-content : space-around;">
                        <ul>
                        	
                            <!--  <li class="active"><a href="${pageContext.request.contextPath}/login_home" style = " color: #fff;">Home</a></li>-->
                            
                            
                            <!-- Customer navigation -->
                            <security:authorize access="hasRole('CUSTOMER')">
                            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
						        <a class="navbar-brand" style = "padding:0; padding-left:105px;" href="${pageContext.request.contextPath}/login_home">
						        	<h4 style="font-weight: bold;color: #fff; padding-bottom: 50px;" class = "d-inline-block allign-top" >
					            Khushi's Designer Boutique</h4>
						        </a>
						       
						        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						          <div class="navbar-nav ml-auto"style = "padding-left:290px; ">
					              <li><a style = "color:white;" href="#">Contact Us</a></li>
                           		  <li><a style = "color:white;" href="${pageContext.request.contextPath}/customer/viewOrders">Your Orders</a></li>
                            	  <li><a style = "color:white;" href="${pageContext.request.contextPath}/customer/viewCart"><i class="fa fa-shopping-bag"></i>Cart</a></li>
	                            <form:form action="${pageContext.request.contextPath}/logout">
	
										<i style = "color:yellow;"class="fa fa-sign-out"></i><input  type="submit" value="Sign out" class="site-btn" />
	
								</form:form>
						          </div>
						        </div>
					      </nav>
    
                            
                            </security:authorize>
                            <!--li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out"></i> Sign Out</a></li-->
                            
                            <!--Staff navigation -->
                            <security:authorize access="hasRole('STAFF')">
                             <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
						        <a class="navbar-brand" style = "padding:0; padding-left:105px;" href="${pageContext.request.contextPath}/login_home">
						        	<h4 style="font-weight: bold;color: #fff; padding-bottom: 50px;" class = "d-inline-block allign-top" >
					            Khushi's Designer Boutique</h4>
						        </a>
						       
						        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						          <div class="navbar-nav ml-auto"style = "padding-left:290px; ">
					              <li><a href="#" style = "color:white;" >Manage Online Orders</a>
	                                <ul class="header__menu__dropdown">
	                                    
	                                    <li><a href="${pageContext.request.contextPath}/staff/viewProcessingOrders">Orders under process [DUE ORDERS]</a></li>
	                                    <li><a href="${pageContext.request.contextPath}/staff/viewProcessedOrders">Processed Orders</a></li>
	                                </ul>
                            	</li> 
                            	<li><a  style = "color:white;" href="${pageContext.request.contextPath}/staff/viewCart"><i class="fa fa-shopping-bag"></i>Sale Cart</a></li>
	                            <form:form action="${pageContext.request.contextPath}/logout">
	
										<i style = "color:yellow;"class="fa fa-sign-out"></i><input  type="submit" value="Sign out" class="site-btn" />
	
								</form:form>
						          </div>
						        </div>
					      </nav>
    
                            
                            </security:authorize>
                            <!-- Shipper navigation -->
                            <security:authorize access="hasRole('SHIPPER')">
                            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
						        <a class="navbar-brand" style = "padding:0; padding-left:105px;" href="${pageContext.request.contextPath}/login_home">
						        	<h4 style="font-weight: bold;color: #fff; padding-bottom: 50px;" class = "d-inline-block allign-top" >
					            Khushi's Designer Boutique</h4>
						        </a>
						       
						        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						          <div class="navbar-nav ml-auto"style = "padding-left:290px; ">
					              <li><a style = "color:white;" href="#">Contact Us</a></li>
                            		<li><a style = "color:white;" href="${pageContext.request.contextPath}/shipper/viewMyOrders">Your Deliveries</a></li>
	                            <form:form action="${pageContext.request.contextPath}/logout">
	
										<i style = "color:yellow;"class="fa fa-sign-out"></i><input  type="submit" value="Sign out" class="site-btn" />
	
								</form:form>
						          </div>
						        </div>
					      </nav>
    
                            
                            </security:authorize>
                            <!--li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out"></i> Sign Out</a></li-->
                            
                            <!-- Admin navigation -->
                            <security:authorize access="hasRole('ADMIN')">
                             <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
						        <a class="navbar-brand" style = "padding:0; padding-left:105px;" href="${pageContext.request.contextPath}/login_home">
						        	<h4 style="font-weight: bold;color: #fff; padding-bottom: 50px;" class = "d-inline-block allign-top" >
					            Khushi's Designer Boutique</h4>
						        </a>
						       
						        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						          <div class="navbar-nav ml-auto"style = "padding-left:290px; ">
					              <li><a  style = "color:white;"href="#">Manage Orders</a>
	                                <ul  class="header__menu__dropdown">
	                                    <li><a href="${pageContext.request.contextPath}/admin/viewUnprocessedOrders">Unprocessed Orders</a></li>
	                                    <li><a href="${pageContext.request.contextPath}/admin/viewProcessingOrders">Orders under process</a></li>
	                                    <li><a href="${pageContext.request.contextPath}/admin/viewProcessedOrders">Processed Orders</a></li>
	                                </ul>
	                            </li>
	                            <li><a  style = "color:white; href="#">Manage Counters</a>
	                                <ul class="header__menu__dropdown">
	                                    <li><a href="${pageContext.request.contextPath}/admin/addOnlineCounter">Add Online Counter</a></li>
	                                    <li><a href="${pageContext.request.contextPath}/admin/viewOnlineCounters">View Online Counters</a></li>
	                                    <li><a href="${pageContext.request.contextPath}/admin/addOfflineCounter">Add Offline Counter</a></li>
	                                    <li><a href="${pageContext.request.contextPath}/admin/viewOfflineCounters">View Offline Counters</a></li>
	                                </ul>
	                            </li>
	                            <form:form action="${pageContext.request.contextPath}/logout">
	
										<i style = "color:yellow;"class="fa fa-sign-out"></i><input  type="submit" value="Sign out" class="site-btn" />
	
								</form:form>
						          </div>
						        </div>
					      </nav>
                          
                          
                            </security:authorize>
                            
                        </ul>
                    </nav>
                </div>
                
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
        </div>
    </header>

</body>

</html>