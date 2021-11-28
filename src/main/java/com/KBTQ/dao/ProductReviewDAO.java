package com.KBTQ.dao;

import java.util.List;

import com.KBTQ.entity.ProductReview;

public interface ProductReviewDAO {

	List<ProductReview> getReviewByProduct(int product_id);
	void saveProductReview(ProductReview theProductReview);
}
