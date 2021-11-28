package com.KBTQ.dao;

import java.util.List;

import com.KBTQ.entity.Brand;

public interface BrandDAO {

	List<Brand> getBrands();

	void saveBrand(Brand theBrand);

	Brand getBrand(int theId);

	void deleteBrand(int theId);

	Brand getBrandbyName(String brand);

}
