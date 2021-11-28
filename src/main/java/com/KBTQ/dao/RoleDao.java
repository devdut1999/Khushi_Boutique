package com.KBTQ.dao;

import com.KBTQ.entity.Role;

public interface RoleDao {

	public Role findRoleByName(String theRoleName);
	
}
