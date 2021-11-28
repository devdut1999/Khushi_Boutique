package com.KBTQ.dao;

import java.util.List;

import com.KBTQ.entity.Distributor;

public interface DistributorDAO {

	List<Distributor> getDistributors();

	void saveDistributor(Distributor theDistributor);

	Distributor getDistributor(int theId);

	void deleteDistributor(int theId);

}
