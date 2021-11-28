package com.KBTQ.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KBTQ.dao.DistributorDAO;
import com.KBTQ.entity.Distributor;

@Service
public class DistributorServiceImpl implements DistributorService {
	
	//need to inject vendor dao
	@Autowired
	private DistributorDAO distributorDAO; 

	@Override
	@Transactional
	public List<Distributor> getDistributors() {
		return distributorDAO.getDistributors();
	}

	
	@Override
	@Transactional
	public void saveDistributor(Distributor theDistributor) {

		distributorDAO.saveDistributor(theDistributor);

	}


	@Override
	@Transactional
	public Distributor getDistributor(int theId) {
		
		Distributor theDistributor=distributorDAO.getDistributor(theId);
		
		return theDistributor;
	}


	@Override
	@Transactional
	public void deleteDistributor(int theId) {

		distributorDAO.deleteDistributor(theId);
		
	}

}
