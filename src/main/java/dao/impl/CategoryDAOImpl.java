package dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.CategoryDAO;
import entities.Category;
import entities.Products;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Category> getCategory() {
		Session session = sessionFactory.openSession();
		List<Category> results = session.createQuery("from Category").getResultList();
		session.close();
		return results;
	}

	@Override
	public void insert(Category category) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(category);
		session.getTransaction().commit();
	}

	@Override
	public Category getCategoryById(Integer categoryId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Category category = session.get(Category.class, categoryId);
		session.getTransaction().commit();
		return category;
	}

	@Override
	public void update(Category category) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(category);
		session.getTransaction().commit();
	}

	@Override
	public void delete(Integer categoryId) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Category item = session.get(Category.class, categoryId);
			session.remove(item);
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	@Override
	public List<Category> search(String name) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from Category where name like :name");
		query.setParameter("name", "%" + name + "%");
		return query.getResultList();
	}

	@Override
	public List<Category> getCategoryPagination(Integer offset, Integer maxResult) {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Category")
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
	public Long getTotalCategoryPagination() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("select count(*) from Category").list();
			return (Long) list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
