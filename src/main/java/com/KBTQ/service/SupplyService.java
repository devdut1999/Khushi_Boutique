package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.Supply;
import com.KBTQ.entity.Distributor;

public interface SupplyService {

	void saveSupply(Supply theSupply);
	
	List<Supply> getSupplybyDistributor(Distributor theDistributor);

}
