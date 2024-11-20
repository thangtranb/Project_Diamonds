package entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="OrderDetail")
public class OrderDetail implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "OrderDeatailId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderDeatailId;
	@Column(name = "OrderId")
	private String orderId;
	@Column(name = "ProductId")
	private Integer productId;
	@Column(name = "Price")
	private Double salePrice;
	@Column(name = "Quantity")
	private int stockQuantity;
	
	@ManyToOne
	@JoinColumn(name = "orderId", referencedColumnName = "orderId", insertable = false,updatable = false)
	private Orders order;
	
	@ManyToOne
	@JoinColumn(name = "productId", referencedColumnName = "productId", insertable = false,updatable = false)
	private Products pro;
	
	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}

	public OrderDetail(String orderId, Integer productId, Double salePrice, int stockQuantity) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.salePrice = salePrice;
		this.stockQuantity = stockQuantity;
	}

	public Integer getOrderDeatailId() {
		return orderDeatailId;
	}

	public void setOrderDeatailId(Integer orderDeatailId) {
		this.orderDeatailId = orderDeatailId;
	}

	public Double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}

	public int getStockQuantity() {
		return stockQuantity;
	}

	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}




	public String getOrderId() {
		return orderId;
	}




	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}




	public Products getPro() {
		return pro;
	}




	public void setPro(Products pro) {
		this.pro = pro;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}
	
	
}

