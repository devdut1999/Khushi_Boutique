package com.KBTQ.service;

import java.util.List;

//import org.springframework.security.core.userdetails.User;

import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.OnlineCounter;
import com.KBTQ.entity.User;

public interface StaffService {

	List<User> getStaffs();

	OnlineCounter getOnlineCounter(int staff_id);
	
	OfflineCounter getOfflineCounter(int staff_id);

}
