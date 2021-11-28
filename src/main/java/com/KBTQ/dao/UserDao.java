package com.KBTQ.dao;

import java.util.List;

//import org.springframework.security.core.userdetails.User;

import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.OnlineCounter;
import com.KBTQ.entity.User;
public interface UserDao {

    User findByUserName(Integer userName);
    
    User findByEmail(String email);
    
    void save(User user);

	List getUsersbyRole(String roleName);

	void updateStaff(User theStaff);
	
	void updateShipper(User theShipper);

	OnlineCounter getOnlineCounter(int staff_id);

	OfflineCounter getOfflineCounter(int staff_id);
    
}
