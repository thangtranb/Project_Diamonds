package entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Products")
public class Products {
	@Id
	@Column(name = "ProductId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer productId;
	@Column(name = "Name")
	private String name;
	@Column(name = "Description")
	private String description;
	@Column(name = "Image")
	private String image;
	@Column(name = "Carat")
	private Integer carat;
	@Column(name = "Clarity")
	private String clarity;
	@Column(name = "Cut")
	private String cut;
	@Column(name = "Luminescent")
	private String luminescent;
	@Column(name = "Shape")
	private String shape;
	@Column(name = "Size")
	private Integer size;
	@Column(name = "Height")
	private Integer height;
	@Column(name = "Color")
	private String color;
	@Column(name = "Price")
	private Double price;
	@Column(name = "SalePrice")
	private Double salePrice;
	@Column(name = "StockQuantity")
	private Integer stockQuantity;
	@Column(name = "CreatedAt")
	private Date createdAt;
	@Column(name = "UpdatedAt")
	private Date updatedAt;
	
	@ManyToOne
	@JoinColumn(name = "categoryId", referencedColumnName = "categoryId")
	private Category cate;
	
	
	@OneToMany(mappedBy = "pro")
	private Set<OrderDetail> listOrder;
	
	public Products() {
		// TODO Auto-generated constructor stub
	}

	public Products(Integer productId, String name, String description, String image, Integer carat, String clarity,
			String cut, String luminescent, String shape, Integer size, Integer height, String color, Double price,
			Double salePrice, Integer stockQuantity, Date createdAt, Date updatedAt) {
		super();
		this.productId = productId;
		this.name = name;
		this.description = description;
		this.image = image;
		this.carat = carat;
		this.clarity = clarity;
		this.cut = cut;
		this.luminescent = luminescent;
		this.shape = shape;
		this.size = size;
		this.height = height;
		this.color = color;
		this.price = price;
		this.salePrice = salePrice;
		this.stockQuantity = stockQuantity;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getCarat() {
		return carat;
	}

	public void setCarat(Integer carat) {
		this.carat = carat;
	}

	public String getClarity() {
		return clarity;
	}

	public void setClarity(String clarity) {
		this.clarity = clarity;
	}

	public String getCut() {
		return cut;
	}

	public void setCut(String cut) {
		this.cut = cut;
	}

	public String getLuminescent() {
		return luminescent;
	}

	public void setLuminescent(String luminescent) {
		this.luminescent = luminescent;
	}

	public String getShape() {
		return shape;
	}

	public void setShape(String shape) {
		this.shape = shape;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}

	public Integer getStockQuantity() {
		return stockQuantity;
	}

	public void setStockQuantity(Integer stockQuantity) {
		this.stockQuantity = stockQuantity;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Category getCate() {
		return cate;
	}

	public void setCate(Category cate) {
		this.cate = cate;
	}

	public Set<OrderDetail> getListOrder() {
		return listOrder;
	}

	public void setListOrder(Set<OrderDetail> listOrder) {
		this.listOrder = listOrder;
	}

	

	
	
}
