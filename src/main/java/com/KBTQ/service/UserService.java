package com.KBTQ.service;
import java.util.List;
import com.KBTQ.entity.User;
import com.KBTQ.user.CrmUser;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    User findByUserName(Integer userName);
    
    User findByEmail(String email);

    void save(CrmUser crmUser);
    
    void saveStaff(CrmUser crmUser);
    
    void saveShipper(CrmUser crmUser);

	void updateStaff(User theStaff);
	
	void updateShipper(User theShipper);
	
	List<User> getUsersbyRole(String roleName);
}

