package dao;

import java.util.List;

import entities.Category;
import entities.Products;


public interface ProductDAO {
	public List<Products> getProducts();
	public void insert(Products product);
	public Products getProductById(Integer productId);
	public void update (Products product);
	public void delete(Integer productId);
	public List<Products> search(String name);
	public List<Products> getProductPagination(Integer offset, Integer maxResult);
	public Long getTotalProductPagination();
	public List<Category> getByCategory(int categoryId);
}
