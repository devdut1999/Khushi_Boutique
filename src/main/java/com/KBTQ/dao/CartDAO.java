package com.KBTQ.dao;

import java.util.List;

//import org.springframework.security.core.userdetails.User;

import com.KBTQ.entity.Product;
import com.KBTQ.entity.ProductsInCart;
import com.KBTQ.entity.ProductsInCartId;
import com.KBTQ.entity.User;

public interface CartDAO {

	void saveCart(ProductsInCart productInCart);

	ProductsInCart findProductInCart(User customer, Product product);

	List<ProductsInCart> getProductsInCart(User customer);

	void removeProduct(ProductsInCartId primarykey);

	void deleteCartProducts(User customer);

}
