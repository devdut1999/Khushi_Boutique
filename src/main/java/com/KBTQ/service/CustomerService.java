package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.User;

public interface CustomerService {

	List<User> getCustomers();
	User getCustomerbyId(int customerId);
}
