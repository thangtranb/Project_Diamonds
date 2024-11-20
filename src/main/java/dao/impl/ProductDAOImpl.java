package dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.ProductDAO;
import entities.Category;
import entities.Products;

@Repository
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Products> getProducts() {
		Session session = sessionFactory.openSession();
		List<Products> results = session.createQuery("from Products").getResultList();
		session.close();
		return results;
	}

	@Override
	public void insert(Products product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
	}

	@Override
	public Products getProductById(Integer productId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Products product = session.get(Products.class, productId);
		session.getTransaction().commit();
		return product;
	}

	@Override
	public void update(Products product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(product);
		session.getTransaction().commit();
	}

	@Override
	public void delete(Integer productId) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Products item = session.get(Products.class, productId);
			session.remove(item);
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	@Override
	public List<Products> search(String name) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from Products where name like :name");
		query.setParameter("name", "%" + name + "%");
		return query.getResultList();
	}

	@Override
	public List<Products> getProductPagination(Integer offset, Integer maxResult) {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Products")
			.setFirstResult(offset)
			.setMaxResults(maxResult)
			.list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public Long getTotalProductPagination() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("select count(*) from Products").list();
			return (Long) list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	public List<Category> getByCategory(int categoryId) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Products where categoryId=?1");
		List data = query.setParameter(1, categoryId).getResultList();
		session.close();
		return data;
	}

}
