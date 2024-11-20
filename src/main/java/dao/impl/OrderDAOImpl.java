package dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.OrderDAO;
import entities.Customer;
import entities.OrderDetail;
import entities.Orders;

@Repository
public class OrderDAOImpl implements OrderDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Orders> getOrders() {
		Session session = sessionFactory.openSession();
		List<Orders> results = session.createQuery("from Orders").getResultList();
		session.close();
		return results;
	}

	@Override
	public void insert(Orders order) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(order);
		session.getTransaction().commit();
		
	}

	@Override
	public Orders getOrderById(String orderId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Orders item = session.get(Orders.class, orderId);
		session.getTransaction().commit();
		return item;
	}

	@Override
	public void update(Orders order) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(order);
		session.getTransaction().commit();
		
	}

	@Override
	public void delete(String orderId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		var item = session.get(Orders.class, orderId);
		session.remove(item);
		session.getTransaction().commit();
		
	}

	@Override
	public List<Orders> getOrderPagination(Integer offset, Integer maxResult) {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Orders")
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
	public Long getTotalOrderPagination() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("select count(*) from Orders").list();
			return (Long) list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	public List<Orders> getOrderByCustomer(Integer customerId) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Orders where customerId = ?1");
		query.setParameter(1,  customerId);
		return query.getResultList();
	}

	@Override
	public boolean insertOrderDetail(Orders order, List<OrderDetail> details) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(order);
			for (OrderDetail orderDetail : details) {
				session.save(orderDetail);
			}
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
