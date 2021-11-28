package com.KBTQ.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.KBTQ.entity.Product;
import com.KBTQ.entity.ProductReview;

@Repository
public class ProductReviewDAOImpl implements ProductReviewDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired ProductDAO productDAO;
	@Override
	public List<ProductReview> getReviewByProduct(int product_id) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		Product Theproduct = productDAO.getProduct(product_id);
		Query<ProductReview> theQuery = currentSession.createQuery("from ProductReview where product=:product", ProductReview.class);
		
		theQuery.setParameter("product", Theproduct );
		
		//execute query and get result list
		List<ProductReview> productreviews = theQuery.getResultList();

		return productreviews;
		
	}
	@Override
	public void saveProductReview(ProductReview theProductReview) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		
		// save/update the product
		currentSession.saveOrUpdate(theProductReview);
		
	}

}
