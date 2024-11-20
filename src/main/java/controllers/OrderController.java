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


import dao.OrderDAO;
import dao.ProductDAO;

import entities.Orders;
import entities.Products;

@Controller
@RequestMapping("/admin")
public class OrderController {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	 OrderDAO orderDao;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}
	
	@RequestMapping(value = "/order")
	public String index(Model model, Integer page) {

		Integer itemPage = 3;
		Integer offset;
		if (page == null)
			offset = 0;
		else
			offset = (page - 1) * itemPage;

		List<Orders> order = orderDao.getOrderPagination(offset, itemPage);
		model.addAttribute("order", order);

		Long totals = orderDao.getTotalOrderPagination();
		Integer totalPage = (int) (totals / itemPage + (totals % itemPage == 0 ? 0 : 1));

		List<Integer> list = new ArrayList();
		for (int i = 1; i <= totalPage; i++) {
			list.add(i);
		}

		model.addAttribute("list", list);
		return "admin/order/listOrder";

	}
	
	@RequestMapping(value = "/order/insertOrder")
	public String insertOrder(Model model) {
		Orders order = new Orders();
		model.addAttribute("order", order);
		
		Products product = new Products();
		model.addAttribute("product", product);
		return "admin/order/insertOrder";
	}
	
	@RequestMapping(value = "/order/save", method = RequestMethod.POST, consumes = "multipart/form-data")
	public String save(@ModelAttribute("order") Orders order,
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
		}
//		List<Category> categories = catgoryDao.getCategory();
//		model.addAttribute("listCat", categories);
		
		orderDao.insert(order);
		return"redirect:/admin/order";
	}

//	
//	@RequestMapping("/order/edit")
//	public String editOrder(Model model, @RequestParam String orderId) {
//		List<Orders> order = orderDao.getOrderById(orderId);
//		model.addAttribute("order", order);
//		
////		model.addAttribute("cate", catgoryDao.getCategory());
//		
//		return "admin/product/updateProduct";
//	}
//	
//	@RequestMapping("/product/updateProduct")
//	public String updateProduct(Model model, @ModelAttribute("product") Products product, Integer productId,
//			@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest req) {
//		if (file.getSize() > 0) {
//			String uploadRootPath = req.getSession().getServletContext().getRealPath("resources/images/product");
//			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
//			try {
//				file.transferTo(destination);
//			} catch (IllegalStateException | IOException e) {
//				e.printStackTrace();
//			}
//			if (file.getOriginalFilename().length() > 0)
//				product.setImage("images/product/" + file.getOriginalFilename());
//			else {
//				product.setImage(productDAO.getProductById(product.getProductId()).getImage());
//			}
//		} else {
//			product.setImage(productDAO.getProductById(product.getProductId()).getImage());
//		}
////		List<Category> categories = catgoryDao.getCategory();
////		model.addAttribute("listCat", categories);
//		
//		productDAO.update(product);
//		return "redirect:/admin/product";
//	}
//	
	@RequestMapping(value = "/order/delete")
	public String deleteOrder(@RequestParam("orderId") String orderId, Model model) {
		orderDao.delete(orderId);
		return "redirect:/admin/order";
	}
//	
//	@RequestMapping(value = "/product/search")
//	public String index(Model model, @RequestParam("key") String key) {
//		System.out.println(key);
//		model.addAttribute("product", productDAO.search(key));
//		return "admin/product/listProduct";
//	}
}
