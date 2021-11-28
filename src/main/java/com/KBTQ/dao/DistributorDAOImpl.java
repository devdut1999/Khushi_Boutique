package com.KBTQ.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.KBTQ.entity.Distributor;

@Repository
public class DistributorDAOImpl implements DistributorDAO {
	
	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Distributor> getDistributors() {
		
		//get the current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
		
		//create a query
		Query<Distributor> theQuery=currentSession.createQuery("from Distributor order by id", 
				Distributor.class);
				
		//execute query and get result list
		List<Distributor> distributors = theQuery.getResultList();
				
		//return the results
		return distributors;
	}

	@Override
	public void saveDistributor(Distributor theDistributor) {
	
		//get the current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
		
		// save/update the vendor
		currentSession.saveOrUpdate(theDistributor);

	}

	@Override
	public Distributor getDistributor(int theId) {
		
		//get the current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
				
		//retrieve from database using primary key
		Distributor theDistributor=currentSession.get(Distributor.class, theId);
						
		//return the results
		return theDistributor;
	}

	@Override
	public void deleteDistributor(int theId) {
		
		//get the current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
						
		//delete from database using primary key
		Query theQuery=currentSession.createQuery("delete from Distributor where id=:distributorId");
		
		theQuery.setParameter("distributorId", theId);
		
		theQuery.executeUpdate();
		
	}

}
