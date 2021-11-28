package com.KBTQ.dao;

import java.util.List;

import com.KBTQ.entity.Category;

public interface CategoryDAO {
	
	public List<Category> getCategories();
	
	Category getCategory(int theId);

	void saveCategory(Category theCategory);

	void deleteCategory(int theId);

	Category getCategorybyName(String categoryName);

}
