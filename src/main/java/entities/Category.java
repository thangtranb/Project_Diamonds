package entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "Category")
public class Category {
	@Id
	@Column(name = "CategoryId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer categoryId;
	@Column(name = "Name")
	private String name;
	@Column(name = "Image")
	private String image;
	

	@OneToMany(mappedBy = "cate")
	private Set<Products> listProduct;
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(Integer categoryId, String name, String image) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.image = image;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}

	public Set<Products> getListProduct() {
		return listProduct;
	}

	public void setListProduct(Set<Products> listProduct) {
		this.listProduct = listProduct;
	}
	
	
}
