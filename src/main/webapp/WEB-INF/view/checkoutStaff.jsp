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
    <title>Checkout</title>

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
    <!-- Header Section End -->

  

    
   

    <!-- Shoping Cart Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table id="distributors">
                            
                             <tr class="blank_row">
							    <td colspan="9"><h2 style = "color:white;">Checkout</h2></td>
							</tr>
                                
                            </table>  
                       </div>
                </div>
          </div>
         </div>
     </section>   

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            
            <div class="checkout__form" >
                
                <form action="${pageContext.request.contextPath}/staff/processSale" method="POST">
                   
                        
                        <div class="col-lg-6 col-md-8" style = "margin-left : 275px;">
                            <div class="checkout__order">
                            <h4 style = "text-align:center;">Sale Details</h4>
                                <h4 style = "text-align:center;">Your Sale</h4>
                                <div class="checkout__order__products">Products <span>Total</span></div>
                                
                                <ul>
                                	<c:forEach var="temp" items="${products}">
                                    <li>${temp.p.primaryKey.product.productName} - ${temp.p.primaryKey.product.brand.brandName} <span>Rs. ${temp.total}</span></li>
                                    </c:forEach>
                                </ul>
                                
                                <div class="checkout__order__total">Total <span>Rs. ${total}</span></div>
                                <div class="checkout__input__checkbox">
                                    <p>
                                        Choose Payment Method:
                                        
                                    </p>
                                </div>
                                <div class="checkout__input__checkbox">
                                    <input required type="radio" id="cod" name="payment_method" value="cod">
  									<label for="cod">Cash On Delivery</label><br>
  									<input required type="radio" id="ePayment" name="payment_method" value="ePayment">
  									<label for="ePayment">Online Payment</label>
                                </div>
                                <div class="checkout__input__checkbox">
                                    <label for="customerId">Enter Customer ID:</label>
                                    <input required type="number" id="customerId" name="customerId" min="1">
  									
                                </div>
                                <button type="submit" class="site-btn">PROCESS SALE</button>
                            </div>
                        </div>
                    </div>
                    <!-- Manually add csrf token -->
						<input type="hidden"
								name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						
                </form>
            </div>
        </div>
    </section>
    
    <br>
                   <br>
		
                    
           	<section>
			  
			  <img class="wave" src="${pageContext.request.contextPath}/resources/img/dev/fashion.png">
			    
			   
			</section>
    
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
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  

</body>

</html>
