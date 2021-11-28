package com.KBTQ.dao;

import java.util.List;

//import org.springframework.security.core.userdetails.User;

import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.Sale;
import com.KBTQ.entity.SoldProducts;
import com.KBTQ.entity.User;

public interface SaleDAO {

	int saveSale(Sale theSale);

	Sale getSale(int saleId);

	void saveSoldProducts(SoldProducts soldProduct);

	List<Sale> getSales(User customer);

	Sale getTheSale(int saleId);

	List<SoldProducts> getProductsInSale(Sale theSale);

	List<Sale> getSalesByCounter(OfflineCounter counter);

	void updateSale(Sale theSale);

	List<Sale> getAllSales();

}
