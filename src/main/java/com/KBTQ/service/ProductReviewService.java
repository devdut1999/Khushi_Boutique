package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.ProductReview;

public interface ProductReviewService {
	List<ProductReview> getReviewByProduct(int product_id);
    public void saveProductReview(ProductReview productReview);
}
