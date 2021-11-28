package com.KBTQ.service;

import java.util.List;

//import org.springframework.security.core.userdetails.User;

import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.Product;
import com.KBTQ.entity.Sale;
import com.KBTQ.entity.SoldProducts;
import com.KBTQ.entity.User;

public interface SaleService {
	
	int saveSale(Sale theSale);

	Sale getSale(int saleId);

	void saveSoldProducts(SoldProducts soldProduct);

	List<Sale> getSales(User customer);
	
	List<Sale> getAllSales();

	Sale getTheSale(int saleId);

	List<Product> getProductsInSale(Sale theSale);

	List<SoldProducts> getSoldProducts(Sale theSale);

	List<Sale> getSalesByCounter(OfflineCounter counter);

	void updateSale(Sale theSale);

}
