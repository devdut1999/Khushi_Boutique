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
public class ShipperServiceImpl implements ShipperService {

	// need to inject user dao
	@Autowired
	private UserDao userDao;

	@Autowired
	private RoleDao roleDao;
	
	@Override
	@Transactional
	public List<User> getShippers() {
		
		//Collection<Role> role = Arrays.asList(roleDao.findRoleByName("ROLE_STAFF"));
		
		//System.out.println("in Service");
		List<Integer> theShipperIds = userDao.getUsersbyRole("ROLE_SHIPPER");
		
		List<User> theShippers = new ArrayList<User>();
		
		for(int i : theShipperIds) {
			
			theShippers.add(userDao.findByUserName(i));
			
		}
		
		return theShippers;
	}
}