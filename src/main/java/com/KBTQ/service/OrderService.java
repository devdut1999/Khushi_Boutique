package com.KBTQ.service;

import java.util.List;

//import org.springframework.security.core.userdetails.User;

import com.KBTQ.entity.OnlineCounter;
import com.KBTQ.entity.Order;
import com.KBTQ.entity.OrderedProducts;
import com.KBTQ.entity.Product;
import com.KBTQ.entity.User;

public interface OrderService {

	int saveOrder(Order theOrder);

	Order getOrder(int orderId);

	void saveOrderedProducts(OrderedProducts orderProduct);

	List<Order> getOrders(User customer);
	
	List<Order> getShipper_orders(User shipper);
	
	List<Order> getALLOrders();

	Order getTheOrder(int orderId);

	List<Product> getProductsInOrder(Order theOrder);

	List<OrderedProducts> getOrderedProducts(Order theOrder);

	List<Order> getOrdersByStatus(String status);

	void updateOrder(Order theOrder);

	List<Order> getOrdersByCounterAndStatus(OnlineCounter counter, String status);

}
