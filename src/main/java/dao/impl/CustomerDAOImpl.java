package dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.CustomerDAO;
import entities.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Customer getCustomer(String username) {
		Customer customer = null;
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("from Customer where username=:username");
		query.setParameter("username", username);
		try {
			customer=(Customer)query.getSingleResult();
		}catch (Exception e) {
			
		}finally {
			session.close();
		}
		return customer;
	}

	@Override
	public void insert(Customer customer) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();
		session.save(customer);
		session.getTransaction().commit();
	}

	@Override
	public Customer getCustomerById(Integer customerId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Customer customer = session.get(Customer.class, customerId);
		session.getTransaction().commit();
		return customer;
	}

	@Override
	public void update(Customer customer) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(customer);
		session.getTransaction().commit();
	}

	@Override
	public void delete(Integer customerId) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Customer item = session.get(Customer.class, customerId);
			session.remove(item);
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	@Override
	public List<Customer> search(String fullName) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query = session.createQuery("from Customer where fullName like :fullName");
		query.setParameter("fullName", "%" + fullName + "%");
		return query.getResultList();
	}

	@Override
	public List<Customer> getCustomerPagination(Integer offset, Integer maxResult) {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Customer").setFirstResult(offset).setMaxResults(maxResult).list();
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
	public Long getTotalCustomerPagination() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("select count(*) from Customer").list();
			return (Long) list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	public Customer findByCustomerName(String username) {
		Session session = sessionFactory.openSession();
		try {
			Customer customer = (Customer) session.createQuery("from Customer where username = :username")
					.setParameter("username", username).uniqueResult();
			return customer;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

}
