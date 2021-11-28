package com.KBTQ.service;

import java.util.List;

import com.KBTQ.entity.Brand;

public interface BrandService {

	public List<Brand> getBrands();
	
	public void saveBrand(Brand theBrand);

	public Brand getBrand(int theId);

	public void deleteBrand(int theId);

	public Brand getBrandbyName(String brand);
}
