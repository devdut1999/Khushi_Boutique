package com.KBTQ.dao;

import java.util.List;

//import org.springframework.security.core.userdetails.User;

import com.KBTQ.entity.OnlineCounter;
import com.KBTQ.entity.Order;
import com.KBTQ.entity.OrderedProducts;
import com.KBTQ.entity.User;
public interface OrderDAO {

	int saveOrder(Order theOrder);

	Order getOrder(int orderId);

	void saveOrderedProducts(OrderedProducts orderProduct);

	List<Order> getOrders(User customer);
	
	List<Order> getALLOrders();
	
	List<Order> getShipper_orders(User shipper);

	Order getTheOrder(int orderId);

	List<OrderedProducts> getProductsInOrder(Order theOrder);

	List<Order> getOrdersByStatus(String status);

	void updateOrder(Order theOrder);

	List<Order> getOrdersByCounterAndStatus(OnlineCounter counter, String status);

}
