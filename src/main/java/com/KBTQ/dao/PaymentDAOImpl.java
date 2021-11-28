package com.KBTQ.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.KBTQ.entity.EPayment;

@Repository
public class PaymentDAOImpl implements PaymentDAO {

		//inject session factory
		@Autowired
		private SessionFactory sessionFactory;
		
	@Override
	public void savePayment(EPayment thePayment) {
		
		//get the current hibernate session
		Session currentSession=sessionFactory.getCurrentSession();
								
		// save/update the product
		currentSession.saveOrUpdate(thePayment);

	}

}
