package com.KBTQ.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KBTQ.dao.RoleDao;
import com.KBTQ.dao.UserDao;
import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.OnlineCounter;
import com.KBTQ.entity.User;

@Service
public class StaffServiceImpl implements StaffService {

		// need to inject user dao
		@Autowired
		private UserDao userDao;

		@Autowired
		private RoleDao roleDao;
		
	@Override
	@Transactional
	public List<User> getStaffs() {
		
		//Collection<Role> role = Arrays.asList(roleDao.findRoleByName("ROLE_STAFF"));
		
		//System.out.println("in Service");
		List<Integer> theStaffIds = userDao.getUsersbyRole("ROLE_STAFF");
		
		List<User> theStaffs = new ArrayList<User>();
		
		for(int i : theStaffIds) {
			
			theStaffs.add(userDao.findByUserName(i));
			
		}
		
		return theStaffs;
	}

	@Override
	@Transactional
	public OnlineCounter getOnlineCounter(int staff_id) {
		
		OnlineCounter theCounter = userDao.getOnlineCounter(staff_id);
		return theCounter;
	}

	@Override
	@Transactional
	public OfflineCounter getOfflineCounter(int staff_id) {
		
		OfflineCounter theCounter = userDao.getOfflineCounter(staff_id);
		return theCounter;
	}

}
