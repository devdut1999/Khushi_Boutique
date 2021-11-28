package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.User;
import com.KBTQ.entity.Order;

public interface ShipperService {
	
	List<User> getShippers();
//	List<Order> getShipper_orders(User shipper);
	
}
