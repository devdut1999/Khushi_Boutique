package com.KBTQ.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.KBTQ.dao.SaleDAO;
import com.KBTQ.entity.OfflineCounter;
import com.KBTQ.entity.Product;
import com.KBTQ.entity.Sale;
import com.KBTQ.entity.SoldProducts;
import com.KBTQ.entity.User;
@Service
public class SaleServiceImpl implements SaleService {
	
	@Autowired
	private SaleDAO saleDAO;

	@Override
	@Transactional
	public int saveSale(Sale theSale) {
		
		int theId = saleDAO.saveSale(theSale);
		return theId;
	}

	@Override
	@Transactional
	public Sale getSale(int saleId) {
		
		Sale theSale = saleDAO.getSale(saleId);
		return theSale;
	}

	@Override
	@Transactional
	public void saveSoldProducts(SoldProducts soldProduct) {
		
		saleDAO.saveSoldProducts(soldProduct);

	}

	@Override
	@Transactional
	public List<Sale> getSales(User customer) {
		
		List<Sale> theSales = saleDAO.getSales(customer);
		
		return theSales;
	}

	@Override
	@Transactional
	public Sale getTheSale(int saleId) {
		
		Sale theSale = saleDAO.getTheSale(saleId);
		return theSale;
	}

	@Override
	@Transactional
	public List<Product> getProductsInSale(Sale theSale) {
		
		List<SoldProducts> soldProducts = saleDAO.getProductsInSale(theSale);
		List<Product> theProducts = new ArrayList<Product>();
		
		for(SoldProducts p : soldProducts) {
			
			Product pr=p.getProduct();
			
			theProducts.add(pr);
			
		}
		
		return theProducts;
	}

	@Override
	@Transactional
	public List<SoldProducts> getSoldProducts(Sale theSale) {
		
		List<SoldProducts> soldProducts = saleDAO.getProductsInSale(theSale);
		List<Product> theProducts = new ArrayList<Product>();
		
		for(SoldProducts p : soldProducts) {
			
			Product pr=p.getProduct();
			
			theProducts.add(pr);
			
		}
		
		return soldProducts;
	}

	@Override
	@Transactional
	public List<Sale> getSalesByCounter(OfflineCounter counter) {
		
		List<Sale> theSales = saleDAO.getSalesByCounter(counter);
		return theSales;
	}

	@Override
	@Transactional
	public void updateSale(Sale theSale) {
		
		saleDAO.updateSale(theSale);

	}

	@Override
	@Transactional
	public List<Sale> getAllSales() {
		
		return saleDAO.getAllSales();
	}

}
