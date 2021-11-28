package com.KBTQ.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.KBTQ.entity.Supply;
import com.KBTQ.entity.Distributor;

@Repository
public class SupplyDAOImpl implements SupplyDAO {
	
			//inject the session factory
			@Autowired
			private SessionFactory sessionFactory;

	@Override
	public void saveSupply(Supply theSupply) {
		
				//get the current hibernate session
				Session currentSession=sessionFactory.getCurrentSession();
				
				// save order
				currentSession.saveOrUpdate(theSupply);

	}

	@Override
	public List<Supply> getSupplybyDistributor(Distributor theDistributor) {
		//get the current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
		
		Query<Supply> theQuery = currentSession.createQuery("from Supply where primaryKey.distributor =: v", Supply.class);
		theQuery.setParameter("v", theDistributor);
		
		List<Supply> theSupplies = theQuery.getResultList();
		
		return theSupplies;
	}

}
