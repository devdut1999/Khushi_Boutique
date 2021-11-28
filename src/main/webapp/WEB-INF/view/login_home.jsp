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
    <title>Login Page</title>

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

<body >
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
    <!-- Header Section End -->
	
    
    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
            
            <!-- Customer menu -->
                <security:authorize access="hasRole('CUSTOMER')">
                <div class="col-lg-3.7">
                    <div class="hero__categories" style = "background:rgba(0, 0, 0, 0.6);">
                        <div class="hero__categories__all" style = "background:rgba(22, 28, 28);">
                            <i class="fa fa-bars"></i>
                            <span>Shop by Categories</span>
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
                </security:authorize>
                 <!-- Shipper menu -->
                <security:authorize access="hasRole('SHIPPER')">
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
                </security:authorize>
                
                
                <!-- Staff menu -->
                <security:authorize access="hasRole('STAFF')">
                <div class="col-lg-3.7" >
                    <div class="hero__categories" style = "background:rgba(0, 0, 0, 0.6);">
                        <div class="hero__categories__all" style = "background:rgba(22, 28, 28);">
                            <i class="fa fa-bars"></i>
                            <span>Shop by Categories</span>
                        </div>
                        <ul>
                        <!-- loop over all categories -->
                        <c:forEach var="temp" items="${categories}">
                        
                        <!-- construct an update "link" with distributor id -->
							  
						<c:url var="viewLink" value="/staff/viewProducts">
							  			
							  	<c:param name="categoryId" value="${temp.id}" />
							  		
						</c:url>
						
                           <li><h4><a style = " color: #fff;" href="${viewLink}"> ${temp.catName} </a></h4></li>
                         </c:forEach>
                        </ul>
                       
                    </div>
                </div>
                </security:authorize>
                
                  <!-- Admin menu -->
                <security:authorize access="hasRole('ADMIN')">
                <div class="col-lg-3" >
                    <div class="hero__categories"style = "background:rgba(0, 0, 0, 0.6);">
                        <div class="hero__categories__all" style = "background:rgba(22, 28, 28);">
                            <i class="fa fa-bars"></i>
                            <span>Manage Store</span>
                        </div>
                        <ul>
                        	<li><h4 style = " color: #fff;"><b>Customers</b></h4></li>
                        	<li><hr></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewCustomer"> View Customers </a></h5></li>
                            
                            <li><hr></li>
                            <li><h4 style = " color: #fff;"><b>Staffs</b></h4></li>
                        	<li><hr></li>
                            <li><h5><a  style = " color: #fff;" href="${pageContext.request.contextPath}/admin/addStaff"> Add Staff </a></h5></li>
                            <li><h5 ><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewStaff"> View Staffs </a></h5></li>
                            <li><hr></li>
                            <li><h4 style = " color: #fff;"><b>Shippers</b></h4></li>
                        	<li><hr></li>
                            <li><h5 ><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/addShipper"> Add Shipper </a></h5></li>
                            <li><h5 ><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewShipper"> View Shipper </a></h5></li>
                            <li><hr></li>
                            <li><h4 style = " color: #fff;"><b>Distributors </b></h4></li>
                        	<li><hr></li>
                            <li><h5><a style = " color: #fff;"href="${pageContext.request.contextPath}/admin/addDistributor"> Add Distributor </a></h5></li>
                            <li><h5><a  style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewDistributor"> View Distributors </a></h5></li>
                           	<li><hr></li>
                            <li><h4 style = " color: #fff;"><b>Products</b></h4></li>
                        	<li><hr></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/addCategory"> Add Product Category </a></h5></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/addBrand"> Add New Brand </a></h5></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/addProduct"> Add Product </a></h5></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewCats"> View Product Categories </a></h5></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewBrands"> View Brands </a></h5></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewProducts"> View Products </a></h5></li>
                            <li><hr></li>
                            <li><h4 style = " color: #fff;"><b>Godowns</b></h4></li>
                        	<li><hr></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/addGodown"> Add Godown </a></h5></li>
                            <li><h5><a style = " color: #fff;" href="${pageContext.request.contextPath}/admin/viewGodown"> View Godowns </a></h5></li>
                            
                            
                            
                         
                        </ul>
                    </div>
                </div>
                 
                </security:authorize>
                
                <div class="col-lg-9">
                    
                        
                        <div class="hero__search__phone">
                            
                           
                        </div>
                    
                    
                    <div>
                    
                	<section id="hero">
					    <div class="hero-container" data-aos="zoom-in" data-aos-delay="100">
					    <img class="wave" src="${pageContext.request.contextPath}/resources/img/dev/fashion.png">
					      <h1>Welcome to Khushi's Designer Boutique</h1><br>
					      <h2>Here you get clothes that are more than just stitched fabric. Our fabric will build your trust in us. Be what you want to be and wear what you like, so keep calm and try our outfit!</h2>
					      
					    </div>
					 </section>
                	</div>
                    <%-- <div class="hero__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/dev/bg.jpg">                       
                    </div>
                     <br>
                    <div class="hero__item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/dev/home.jpg">                       
                    </div>--%>
		            
        </div>
        </div>
        </div>
        

            
    </section>
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
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  

</body>

</html>









