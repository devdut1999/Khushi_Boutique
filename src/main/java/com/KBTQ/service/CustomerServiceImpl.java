package com.KBTQ.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KBTQ.dao.RoleDao;
import com.KBTQ.dao.UserDao;
import com.KBTQ.entity.User;
@Service
public class CustomerServiceImpl implements CustomerService {

			// need to inject user dao
			@Autowired
			private UserDao userDao;

			@Autowired
			private RoleDao roleDao;
	
			@Override
			@Transactional
			public List<User> getCustomers() {
				
				List<Integer> theCustIds = userDao.getUsersbyRole("ROLE_CUSTOMER");
				
				List<User> theCusts = new ArrayList<User>();
				
				for(int i : theCustIds) {
					
					theCusts.add(userDao.findByUserName(i));
					
				}
				
				return theCusts;
			}
			@Override
			@Transactional
			public User getCustomerbyId(int customerId) {
				// TODO Auto-generated method stub
				System.out.println(customerId);
				return userDao.findByUserName(customerId);
				
			}
}
