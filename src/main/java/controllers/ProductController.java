package controllers;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.CategoryDAO;
import dao.ProductDAO;
import entities.Category;
import entities.Products;

@Controller
@RequestMapping("/admin")
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO catgoryDao;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}
	
	@RequestMapping(value = "/product")
	public String index(Model model, Integer page) {

		Integer itemPage = 3;
		Integer offset;
		if (page == null)
			offset = 0;
		else
			offset = (page - 1) * itemPage;

		List<Products> product = productDAO.getProductPagination(offset, itemPage);
		model.addAttribute("product", product);

		Long totals = productDAO.getTotalProductPagination();
		Integer totalPage = (int) (totals / itemPage + (totals % itemPage == 0 ? 0 : 1));

		List<Integer> list = new ArrayList();
		for (int i = 1; i <= totalPage; i++) {
			list.add(i);
		}

		model.addAttribute("list", list);
		return "admin/product/listProduct";

	}
	
	@RequestMapping(value = "/product/insertProduct")
	public String insertProduct(Model model) {
		List<Category> category = catgoryDao.getCategory();
		model.addAttribute("listCat", category);
		
		Products product = new Products();
		model.addAttribute("product", product);
		return "admin/product/insertProduct";
	}
	
	@RequestMapping(value = "/product/save", method = RequestMethod.POST, consumes = "multipart/form-data")
	public String save(@ModelAttribute("product") Products product,
			@RequestParam(value = "file", required = false) MultipartFile file, Model model, HttpServletRequest req) {

		if (file != null && !file.isEmpty()) {
			String uploadRootPath = req.getServletContext().getRealPath("resources/images/product");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			System.out.println(file.getOriginalFilename());
			product.setImage("images/product/" + file.getOriginalFilename());
		}
//		List<Category> categories = catgoryDao.getCategory();
//		model.addAttribute("listCat", categories);
		
		productDAO.insert(product);
		return"redirect:/admin/product";
	}
	
	@RequestMapping("/product/edit")
	public String editProduct(Model model, @RequestParam Integer productId) {
		List<Category> category = catgoryDao.getCategory();
		model.addAttribute("listCat", category);
		
//		model.addAttribute("cate", catgoryDao.getCategory());
		
		model.addAttribute("product", productDAO.getProductById(productId));
		return "admin/product/updateProduct";
	}
	
	@RequestMapping("/product/updateProduct")
	public String updateProduct(Model model, @ModelAttribute("product") Products product, Integer productId,
			@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest req) {
		if (file.getSize() > 0) {
			String uploadRootPath = req.getSession().getServletContext().getRealPath("resources/images/product");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			if (file.getOriginalFilename().length() > 0)
				product.setImage("images/product/" + file.getOriginalFilename());
			else {
				product.setImage(productDAO.getProductById(product.getProductId()).getImage());
			}
		} else {
			product.setImage(productDAO.getProductById(product.getProductId()).getImage());
		}
//		List<Category> categories = catgoryDao.getCategory();
//		model.addAttribute("listCat", categories);
		
		productDAO.update(product);
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "/product/delete")
	public String deleteProduct(@RequestParam("productId") int productId, Model model) {
		productDAO.delete(productId);
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "/product/search")
	public String index(Model model, @RequestParam("key") String key) {
		System.out.println(key);
		model.addAttribute("product", productDAO.search(key));
		return "admin/product/listProduct";
	}
}
