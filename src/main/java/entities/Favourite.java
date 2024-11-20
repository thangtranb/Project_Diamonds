package entities;

import java.io.Serializable;
;

public class Favourite implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer productId;
	private String name;
	private Double salePrice;
	private String image;
	public Favourite() {
		// TODO Auto-generated constructor stub
	}
	
	public Favourite(Integer productId, String name, Double salePrice, String image) {
		super();
		this.productId = productId;
		this.name = name;
		this.salePrice = salePrice;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
