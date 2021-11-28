package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.Product;

public interface ProductService {

	List<Product> findProductByCat(int categoryId);
	
	List<Product> getProducts();

	void saveProduct(Product theProduct);

	Product getProduct(int theId);

	List<Product> findProductByCatAndQty(int categoryId);

}
