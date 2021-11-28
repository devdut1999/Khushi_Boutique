package com.KBTQ.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KBTQ.dao.SupplyDAO;
import com.KBTQ.entity.Supply;
import com.KBTQ.entity.Distributor;

@Service
public class SupplyServiceImpl implements SupplyService {
	
	@Autowired
	private SupplyDAO supplyDAO;

	@Override
	@Transactional
	public void saveSupply(Supply theSupply) {
		
		supplyDAO.saveSupply(theSupply);
		
	}

	@Override
	@Transactional
	public List<Supply> getSupplybyDistributor(Distributor theDistributor) {
		
		return supplyDAO.getSupplybyDistributor(theDistributor);
	}

}
