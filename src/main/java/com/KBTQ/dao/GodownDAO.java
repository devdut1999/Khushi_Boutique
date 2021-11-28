package com.KBTQ.dao;

import java.util.List;

import com.KBTQ.entity.Godown;

public interface GodownDAO {

	List<Godown> getGodowns();

	void saveGodown(Godown theGodown);

	Godown getGodown(int theId);

	void deleteGodown(int theId);

}
