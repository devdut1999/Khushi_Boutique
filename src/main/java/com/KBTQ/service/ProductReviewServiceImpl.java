package com.KBTQ.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KBTQ.dao.ProductReviewDAO;
import com.KBTQ.entity.ProductReview;
@Service
public class ProductReviewServiceImpl implements ProductReviewService {
	@Autowired
	private ProductReviewDAO productReviewDao;
	
	@Override
	@Transactional
	public List<ProductReview> getReviewByProduct(int product_id) {
		// TODO Auto-generated method stub
		List<ProductReview> productreviews= productReviewDao.getReviewByProduct(product_id);
		return productreviews;
	
	}
	@Override
	@Transactional
	public void saveProductReview(ProductReview productReview) {
		// TODO Auto-generated method stub
		productReviewDao.saveProductReview(productReview);
		
	}
}
 