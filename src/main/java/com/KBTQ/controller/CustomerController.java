package com.KBTQ.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
//import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.KBTQ.entity.User;
import com.KBTQ.entity.EPayment;
import com.KBTQ.entity.Order;
import com.KBTQ.entity.OrderedProducts;
import com.KBTQ.entity.OrderedProductsId;
import com.KBTQ.entity.Product;
import com.KBTQ.entity.ProductReview;
import com.KBTQ.entity.ProductWithTotal;
import com.KBTQ.entity.ProductsInCart;
import com.KBTQ.entity.ProductsInCartId;
import com.KBTQ.service.CartService;
import com.KBTQ.service.CategoryService;
import com.KBTQ.service.OrderService;
import com.KBTQ.service.PaymentService;
import com.KBTQ.service.ProductService;
import com.KBTQ.service.ProductReviewService;
import com.KBTQ.service.UserService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private ProductReviewService productReviewService;
	@Autowired
	private UserService userService;
	@Autowired
	private CartService cartService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private PaymentService paymentService;
	
	@GetMapping("/viewProducts")
	public String listProducts(@RequestParam("categoryId") int categoryId,
								Model theModel){
		
		//get categories from dao
		List<Product> theProducts = productService.findProductByCatAndQty(categoryId);;
		
		//add the categories to the model
		theModel.addAttribute("products", theProducts);
		
		return "viewProductstoCust";
		
	}
	
	@GetMapping("/addtocart")
	public String addProductToCart(@RequestParam("productId") int theId,
											Model theModel, Authentication authentication) {
		
		
		//get categories from service
		//List<Category> theCategories = categoryService.getCategories();
		
		//get the product from database
		Product theProduct = productService.getProduct(theId);
		//System.out.println(theProduct);
		
		//get the customer_id
		String id= authentication.getName();
		//System.out.println(id);
		Integer cid=Integer.parseInt(id);
		int customer_id=cid.intValue();
		
		//get the user with customer_id as id
		User customer = userService.findByUserName(customer_id);
		
		//generate the primary key
		ProductsInCartId primarykey= new ProductsInCartId(customer, theProduct);
		
		ProductsInCart existing=cartService.findProductInCart(customer, theProduct);
		
		if(existing==null) {
		//create new product in cart object
		ProductsInCart productInCart=new ProductsInCart(primarykey, 1);
		
		cartService.saveCart(productInCart);
		}
		
		else {
			
			int quantity=existing.getQuantity();
			//System.out.println("HEEEEllll");
			ProductsInCart productInCart=new ProductsInCart(primarykey, quantity+1);
			
			cartService.saveCart(productInCart);
		}
		
		//set vendor as a model attribute to pre-populate the form
		theModel.addAttribute("product", theProduct);
		
		//send over to our form
				
		return "redirect:/customer/viewCart";
	
	}
	
	@GetMapping("/viewCart")
	public String showCart(Authentication authentication, Model theModel){
		
		//get the customer_id
		String id= authentication.getName();
		Integer cid=Integer.parseInt(id);
		int customer_id=cid.intValue();
				
		//get the user with customer_id as id
		User customer = userService.findByUserName(customer_id);
		
		//get cart products
		//List<Product> theProducts =cartService.getProductsInCart(customer);
		List<ProductsInCart> cartProducts =cartService.getCartProducts(customer);
		
		List<ProductWithTotal> tp = new ArrayList<ProductWithTotal>();
		
		int sum=0;
		
		for(ProductsInCart p : cartProducts) {
			int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
			ProductWithTotal t = new ProductWithTotal(p,total);
			tp.add(t);
		}
		
		for(ProductWithTotal pt : tp) {
			int price = pt.getTotal();
			sum=sum+price;
		}
		
		//add the categories to the model
		//theModel.addAttribute("products", theProducts);
		theModel.addAttribute("products", tp);
		theModel.addAttribute("total", sum);
		
		return "shopping_cart";
		
	}
	
	@GetMapping("/removeFromCart")
	public String removeFromCart(@RequestParam("productId") int theId,
									Model theModel, Authentication authentication){
		
				//get the product from database
				Product theProduct = productService.getProduct(theId);
				//System.out.println(theProduct);
				
				//get the customer_id
				String id= authentication.getName();
				//System.out.println(id);
				Integer cid=Integer.parseInt(id);
				int customer_id=cid.intValue();
				
				//get the user with customer_id as id
				User customer = userService.findByUserName(customer_id);
				
				//generate the primary key
				ProductsInCartId primarykey= new ProductsInCartId(customer, theProduct);
				
				cartService.removeProduct(primarykey);
						
				return "redirect:/customer/viewCart";
		
	}
	
	@GetMapping("/increaseQty")
	public String increaseQty(@RequestParam("productId") int theId, Authentication authentication, Model theModel){
		
				
				//get the product from database
				Product theProduct = productService.getProduct(theId);
				//System.out.println(theProduct);
				
				//get the customer_id
				String id= authentication.getName();
				//System.out.println(id);
				Integer cid=Integer.parseInt(id);
				int customer_id=cid.intValue();
				
				//get the user with customer_id as id
				User customer = userService.findByUserName(customer_id);
				
				//generate the primary key
				ProductsInCartId primarykey= new ProductsInCartId(customer, theProduct);
				
				ProductsInCart existing=cartService.findProductInCart(customer, theProduct);
				
				int quantity=existing.getQuantity();
				
				ProductsInCart productInCart=new ProductsInCart(primarykey, quantity+1);
				
				cartService.saveCart(productInCart);
		
				return "redirect:/customer/viewCart";
		
	}
	
	@GetMapping("/decreaseQty")
	public String decreaseQty(@RequestParam("productId") int theId, Authentication authentication, Model theModel){
		
				
				//get the product from database
				Product theProduct = productService.getProduct(theId);
				//System.out.println(theProduct);
				
				//get the customer_id
				String id= authentication.getName();
				//System.out.println(id);
				Integer cid=Integer.parseInt(id);
				int customer_id=cid.intValue();
				
				//get the user with customer_id as id
				User customer = userService.findByUserName(customer_id);
				
				//generate the primary key
				ProductsInCartId primarykey= new ProductsInCartId(customer, theProduct);
				
				ProductsInCart existing=cartService.findProductInCart(customer, theProduct);
				
				int quantity=existing.getQuantity();
				
				ProductsInCart productInCart=new ProductsInCart(primarykey, quantity-1);
				
				cartService.saveCart(productInCart);
		
				return "redirect:/customer/viewCart";
		
	}
	
	@GetMapping("/toPayment")
	public String viewPaymentsPage(Authentication authentication, Model theModel){
		
		//get the customer_id
		String id= authentication.getName();
		Integer cid=Integer.parseInt(id);
		int customer_id=cid.intValue();
				
		//get the user with customer_id as id
		User customer = userService.findByUserName(customer_id);
		
		//get cart products
		//List<Product> theProducts =cartService.getProductsInCart(customer);
		List<ProductsInCart> cartProducts =cartService.getCartProducts(customer);
		
		List<ProductWithTotal> tp = new ArrayList<ProductWithTotal>();
		
		int sum=0;
		
		for(ProductsInCart p : cartProducts) {
			int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
			ProductWithTotal t = new ProductWithTotal(p,total);
			tp.add(t);
		}
		
		for(ProductWithTotal pt : tp) {
			int price = pt.getTotal();
			sum=sum+price;
		}
		
		if ( sum > 0){
		//add the categories to the model
		//theModel.addAttribute("products", theProducts);
		theModel.addAttribute("products", tp);
		theModel.addAttribute("total", sum);
		
		return "checkout";
		}
		
		else {return "redirect:/customer/viewCart";}
		
	}
	
	@GetMapping("/demoPayment")
	public String processPayment(@RequestParam("payment_method") String method, Authentication authentication, Model theModel){
		
		//get the customer_id
		String id= authentication.getName();
		Integer cid=Integer.parseInt(id);
		int customer_id=cid.intValue();
				
		//get the user with customer_id as id
		User customer = userService.findByUserName(customer_id);
		
		//get cart products
		//List<Product> theProducts =cartService.getProductsInCart(customer);
		List<ProductsInCart> cartProducts =cartService.getCartProducts(customer);
		
		//List<ProductWithTotal> tp = new ArrayList<ProductWithTotal>();
		
		int sum=0;
		
		for(ProductsInCart p : cartProducts) {
			int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
			sum=sum+total;
			//ProductWithTotal t = new ProductWithTotal(p,total);
			//tp.add(t);
		}
		
		/*for(ProductWithTotal pt : tp) {
			int price = pt.getTotal();
			sum=sum+price;
		}*/
		
		if ( sum > 0){
		String str ="cod"; 
		
		 if(method.equals(str)) {
			 //System.out.println("HELLLO");
			 return "redirect:/customer/placeOrder";
			 
		 } else {
		//add the categories to the model
		//theModel.addAttribute("products", theProducts);
		//theModel.addAttribute("products", tp);
	    
		theModel.addAttribute("total", sum);
		
		return "demo_payment";
		 }
		}
		else {return "redirect:/customer/viewCart";}
		
	}
	
	@GetMapping("/placeOrder")
	public String placeCODorder(Authentication authentication, Model theModel){
		
				//get the customer_id
				String id= authentication.getName();
				Integer cid=Integer.parseInt(id);
				int customer_id=cid.intValue();
						
				//get the user with customer_id as id
				User customer = userService.findByUserName(customer_id);
				
				//get cart products
				List<ProductsInCart> cartProducts =cartService.getCartProducts(customer);
				
				int sum=0;
				
				for(ProductsInCart p : cartProducts) {
					int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
					sum=sum+total;
					//ProductWithTotal t = new ProductWithTotal(p,total);
					//tp.add(t);
				}
				//Date today = new Date();
				long millis = System.currentTimeMillis();
				java.sql.Date today = new java.sql.Date(millis);
				
				
				Order theOrder = new Order("Not Processed", today, "Cash On Delivery", sum, customer);
				int orderId = orderService.saveOrder(theOrder);
				
				Order orderplaced=orderService.getOrder(orderId);
				
				for(ProductsInCart p : cartProducts) {
					
					OrderedProductsId key = new OrderedProductsId(orderplaced, p.getProduct());
							
					OrderedProducts orderProduct = new OrderedProducts(key, p.getQuantity()); 
					
					orderService.saveOrderedProducts(orderProduct);
					//int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
					//sum=sum+total;
				}
				
				cartService.deleteCartProducts(customer);
				
				//System.out.println(orderId);
				//Order orderplaced=orderService.getOrder(orderId);
				
				//add the categories to the model
				//theModel.addAttribute("products", theProducts);
				//theModel.addAttribute("products", tp);
				theModel.addAttribute("total", sum);
				
				return "order_confirmation";
				 
		
	}
	
	@PostMapping("/placeOrder_e")
	public String placeEorder(Authentication authentication, Model theModel){
		
				//get the customer_id
				String id= authentication.getName();
				Integer cid=Integer.parseInt(id);
				int customer_id=cid.intValue();
						
				//get the user with customer_id as id
				User customer = userService.findByUserName(customer_id);
				
				//get cart products
				List<ProductsInCart> cartProducts =cartService.getCartProducts(customer);
				
				int sum=0;
				
				for(ProductsInCart p : cartProducts) {
					int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
					sum=sum+total;
					//ProductWithTotal t = new ProductWithTotal(p,total);
					//tp.add(t);
				}
				//Date today = new Date();
				long millis = System.currentTimeMillis();
				java.sql.Date today = new java.sql.Date(millis);
				
				
				Order theOrder = new Order("Not Processed", today, "Online Payment", sum, customer);
				int orderId = orderService.saveOrder(theOrder);
				
				Order orderplaced=orderService.getOrder(orderId);
				
				for(ProductsInCart p : cartProducts) {
					
					OrderedProductsId key = new OrderedProductsId(orderplaced, p.getProduct());
							
					OrderedProducts orderProduct = new OrderedProducts(key, p.getQuantity()); 
					
					//System.out.println("before save");
					orderService.saveOrderedProducts(orderProduct);
					//System.out.println("after save");
					//int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
					//sum=sum+total;
				}
				
				cartService.deleteCartProducts(customer);
				
				EPayment thePayment = new EPayment(sum, today, "Successfully paid", orderplaced);
				
				paymentService.savePayment(thePayment);
				
				//System.out.println(orderId);
				//Order orderplaced=orderService.getOrder(orderId);
				
				//add the categories to the model
				//theModel.addAttribute("products", theProducts);
				//theModel.addAttribute("products", tp);
				theModel.addAttribute("total", sum);
				
				return "order_confirmation";
				 
		
	}
	
	@GetMapping("/viewOrders")
	public String showOrderDetails(Authentication authentication, Model theModel){
		
		//get the customer_id
		String id= authentication.getName();
		Integer cid=Integer.parseInt(id);
		int customer_id=cid.intValue();
				
		//get the user with customer_id as id
		User customer = userService.findByUserName(customer_id);
		
		//get cart products
		//List<Product> theProducts =cartService.getProductsInCart(customer);
		List<Order> theOrders = orderService.getOrders(customer);
		
		theModel.addAttribute("orders", theOrders);
		theModel.addAttribute("customer", customer);
		return "viewOrders";
		
	}
	
	@GetMapping("/viewProductsInOrder")
	public String showOrderProductDetails(@RequestParam("orderId") String orderID, Model theModel){
		
		//get the order_id
		Integer theid=Integer.parseInt(orderID);
		int orderId=theid.intValue();
				
		//get the order
		Order theOrder = orderService.getTheOrder(orderId);
		
		//get ordered products
		//List<Product> theProducts =orderService.getProductsInOrder(theOrder);
		
		List<OrderedProducts> orderProducts =orderService.getOrderedProducts(theOrder);
		
		/*List<ProductWithTotal> tp = new ArrayList<ProductWithTotal>();
		
		int sum=0;
		
		for(OrderedProducts p : orderProducts) {
			int total = (p.getQuantity())*((Integer.parseInt(p.getProduct().getMRP())));
			ProductWithTotal t = new ProductWithTotal(p,total);
			tp.add(t);
		}
		
		for(ProductWithTotal pt : tp) {
			int price = pt.getTotal();
			sum=sum+price;
		}*/
		
		
		//theModel.addAttribute("products", theProducts);
		theModel.addAttribute("products", orderProducts);
		//theModel.addAttribute("total", sum);
		
		return "viewProductsInOrder";
		
	}

	@GetMapping("/shipperDetails")
	public String shipperDetails(@RequestParam("shipperId") String shipperID, Model theModel) {
		
		Integer theid=Integer.parseInt(shipperID);
		int shipperId=theid.intValue();
		User shipper = userService.findByUserName(shipperId);
		theModel.addAttribute("shipper", shipper);
		return "shipperDetails";
		
		
	}
	@GetMapping("/giveProductReview")
	public String giveProductReview(Authentication authentication,@RequestParam("productId") String productID, Model theModel){
		String id= authentication.getName();
		Integer cid=Integer.parseInt(id);
		int customerId=cid.intValue();
		
		
		Integer theproductid = Integer.parseInt(productID);
		int productId = theproductid.intValue();
		
		User customer = userService.findByUserName(customerId);
		Product product     = productService.getProduct(productId);
		
		theModel.addAttribute("product", product);
		theModel.addAttribute("customer", customer);
		return "postReviewForm";
				
	}
	
	@PostMapping("/postProductReview")
	public String postProductReview(@RequestParam("rating") double rating,
								 @RequestParam("description") String description,
								 @RequestParam("productId") String productID,
								 Authentication authentication,
								 Model theModel) {
			
		long millis = System.currentTimeMillis();
		java.sql.Date today = new java.sql.Date(millis);
		String id= authentication.getName();
		Integer cid=Integer.parseInt(id);
		int customerId=cid.intValue();
		User customer = userService.findByUserName(customerId);
		Integer theid=Integer.parseInt(productID);
		int productId=theid.intValue();
		
		Product product = productService.getProduct(productId);
		
		ProductReview productReview = new ProductReview(rating,description,today,customer,product);
		productReviewService.saveProductReview(productReview);	
		
		return "redirect:/customer/viewOrders" ;
	}


}
