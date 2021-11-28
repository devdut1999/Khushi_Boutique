package com.KBTQ.service;

import java.util.List;


import com.KBTQ.entity.Category;


public interface CategoryService {

	public List<Category> getCategories();
	
	public void saveCategory(Category theCategory);

	public Category getCategory(int theId);

	public void deleteCategory(int theId);

	public Category getCategorybyName(String categoryName);

}
