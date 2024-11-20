package dao;

import java.util.List;

import entities.Category;

public interface CategoryDAO {
	public List<Category> getCategory();
	public void insert(Category category);
	public Category getCategoryById(Integer categoryId);
	public void update (Category category);
	public void delete(Integer categoryId);
	public List<Category> search(String name);
	public List<Category> getCategoryPagination(Integer offset, Integer maxResult);
	public Long getTotalCategoryPagination();
}
