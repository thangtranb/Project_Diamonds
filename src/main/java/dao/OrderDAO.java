package dao;

import java.util.List;

import entities.OrderDetail;
import entities.Orders;

public interface OrderDAO {
	public List<Orders> getOrders();
	public void insert(Orders order);
	public boolean insertOrderDetail(Orders order, List<OrderDetail> details);
	public List<Orders> getOrderByCustomer(Integer customerId);
	public Orders getOrderById(String orderId);
	public void update (Orders order);
	public void delete(String orderId);	
	public List<Orders> getOrderPagination(Integer offset, Integer maxResult);
	public Long getTotalOrderPagination();
}
