package entities;

import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Orders")
public class Orders {
	@Id
	@Column(name = "OrderId")
	private String orderId;
	@Column(name = "CustomerId")
	private Integer customerId;
	@Column(name = "OrderDate")
	private Date orderDate;
	@Column(name = "Phone")
	private String phone;
	@Column(name = "Status")
	private Integer status;
	@Column(name = "ShippingAddress")
	private String shippingAddress;
	
	
	@OneToMany(mappedBy = "order")
	private Set<OrderDetail> listOrderDetail;
	
	@ManyToOne
	@JoinColumn(name = "customerId", referencedColumnName = "customerId",insertable = false,updatable = false)
	private Customer cusId;
	
	public Customer getCusId() {
		return cusId;
	}

	public void setCusId(Customer cusId) {
		this.cusId = cusId;
	}

	public Orders() {
		// TODO Auto-generated constructor stub
	}

	public Orders(String orderId, Integer customerId, Date orderDate, String phone, Integer status,
			String shippingAddress) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.orderDate = orderDate;
		this.phone = phone;
		this.status = status;
		this.shippingAddress = shippingAddress;
		
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Set<OrderDetail> getListOrderDetail() {
		return listOrderDetail;
	}

	public void setListOrderDetail(Set<OrderDetail> listOrderDetail) {
		this.listOrderDetail = listOrderDetail;
	}
	
	
}
