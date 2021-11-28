package com.KBTQ.dao;

import java.util.List;

import com.KBTQ.entity.Supply;
import com.KBTQ.entity.Distributor;

public interface SupplyDAO {

	void saveSupply(Supply theSupply);

	List<Supply> getSupplybyDistributor(Distributor theDistributor);

}
