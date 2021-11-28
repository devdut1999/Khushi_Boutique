package com.KBTQ.controller;
import org.springframework.security.core.Authentication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import com.KBTQ.entity.Order;
import com.KBTQ.entity.User;
import com.KBTQ.service.ProductService;
import com.KBTQ.service.OrderService;
import com.KBTQ.service.ShipperService;
import com.KBTQ.service.CustomerService;
import com.KBTQ.service.UserService;

@Controller
@RequestMapping("/shipper")
public class ShipperController {
	@Autowired
	private OrderService orderService;
	
	 @Autowired
	 private UserService userService;
	 
	 @Autowired
	 private ShipperService shipperService;
	 @Autowired
	 private CustomerService customerService;
	 

	 @GetMapping("/viewMyOrders")
	 public String viewMyOrders(Authentication authentication, Model theModel) {
		 String id= authentication.getName();
			//System.out.println(id);
			Integer cid=Integer.parseInt(id);
			int shipper_id=cid.intValue();
			User shipper = userService.findByUserName(shipper_id);
		 List<Order> myOrders= orderService.getShipper_orders(shipper);
		
		 theModel.addAttribute("orders", myOrders);
		
		 return "viewMyDeliveryOrders";
		 
	 }
	 @GetMapping("/viewOrderCustomer")
	 public String viewOrderCustomer(@RequestParam("customerId") String customerId, Model theModel) {
//		 String id= authentication.getName();
		 Integer cid = Integer.parseInt(customerId);
		 int customer_id = cid.intValue();
		 User customer = customerService.getCustomerbyId(customer_id);
		 
		 theModel.addAttribute("customer", customer);
		 return "viewCustomerDetails";
	 }
	 
}
