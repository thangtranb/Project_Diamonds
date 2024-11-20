package entities;

import java.io.Serializable;

public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer productId;
	private String name;
	private Double salePrice;
	private int stockQuantity;
	private String image;
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	
	public Cart(Integer productId, String name, Double salePrice, int stockQuantity, String image) {
		super();
		this.productId = productId;
		this.name = name;
		this.salePrice = salePrice;
		this.stockQuantity = stockQuantity;
		this.image = image;
	}


	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
