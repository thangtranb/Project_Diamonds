package controllers;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.CategoryDAO;
import dao.CustomerDAO;
import entities.Category;
import entities.Customer;
import entities.Products;

@Controller
@RequestMapping("/admin")
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping(value = "/category")
	public String index(Model model, Integer page) {
		Integer itemPage = 3;
		Integer offset;
		if (page == null)
			offset = 0;
		else
			offset = (page - 1) * itemPage;

		List<Category> category = categoryDAO.getCategoryPagination(offset, itemPage);
		model.addAttribute("category", category);

		Long totals = categoryDAO.getTotalCategoryPagination();
		Integer totalPage = (int) (totals / itemPage + (totals % itemPage == 0 ? 0 : 1));

		List<Integer> list = new ArrayList();
		for (int i = 1; i <= totalPage; i++) {
			list.add(i);
		}

		model.addAttribute("list", list);
		return "admin/category/listCategory";

	}
	
	@RequestMapping(value = "category/insertCategory")
	public String insert(Model model) {
		Category category = new Category();
		model.addAttribute("category", category);
		return "admin/category/insertCategory";
	}
	
	@RequestMapping(value = "/category/save", method = RequestMethod.POST, consumes = "multipart/form-data")
	public String insert( @ModelAttribute("category") Category category,@RequestParam(value = "file", required = false) MultipartFile file, BindingResult result, Model model, HttpServletRequest req) {
		
		
		if (file != null && !file.isEmpty()) {
			String uploadRootPath = req.getServletContext().getRealPath("resources/admin/images/category");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			System.out.println(file.getOriginalFilename());
			category.setImage("" + file.getOriginalFilename());
		}
		
		
		categoryDAO.insert(category);
		return"redirect:/admin/category";
		
	}
	
	@RequestMapping(value = "/category/edit")
	private String update(Model model, @RequestParam Integer categoryId) {
		model.addAttribute("category", categoryDAO.getCategoryById(categoryId));
		return "admin/category/updateCategory";
	}
	
	@RequestMapping("/category/updateCategory")
	public String updateProduct(Model model, @ModelAttribute("category") Category category, Integer categoryId,
			@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest req) {
		if (file.getSize() > 0) {
			String uploadRootPath = req.getSession().getServletContext().getRealPath("resources/admin/images/category");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			if (file.getOriginalFilename().length() > 0)
				category.setImage("" + file.getOriginalFilename());
			else {
				category.setImage(categoryDAO.getCategoryById(category.getCategoryId()).getImage());
			}
		} else {
			category.setImage(categoryDAO.getCategoryById(category.getCategoryId()).getImage());
		}
		
		categoryDAO.update(category);
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "/category/delete")
	public String delete(@RequestParam("categoryId") Integer categoryId, Model model) {
		categoryDAO.delete(categoryId);
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "/category/search")
	public String index(Model model, @RequestParam("key") String key) {
		System.out.println(key);
		model.addAttribute("category", categoryDAO.search(key));
		return "admin/category/listCategory";
	}
}
