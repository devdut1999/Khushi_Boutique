package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.Distributor;

public interface DistributorService {

	public List<Distributor> getDistributors();
	
	public void saveDistributor(Distributor theDistributor);

	public Distributor getDistributor(int theId);

	public void deleteDistributor(int theId);

}
