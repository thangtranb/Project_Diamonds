package dao;

import java.util.List;

import entities.Customer;

public interface CustomerDAO {
	public Customer getCustomer(String username);
	public void insert(Customer customer);
	public Customer getCustomerById(Integer customerId);
	public void update (Customer customer);
	public void delete(Integer customerId);
	public List<Customer> search(String fullName);
	public List<Customer> getCustomerPagination(Integer offset, Integer maxResult);
	public Long getTotalCustomerPagination();
	
    public Customer findByCustomerName(String username);
}
