package controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.impl.CustomerDAOImpl;
import entities.Customer;
import util.Cipher;

@Controller
public class AdminController {
	@Autowired
	CustomerDAOImpl customerService;
	
	@RequestMapping(value = {"/admin"})
	public String admin(Model model, HttpSession session) {
		
//		  model.addAttribute("mess", "Welcome to admin page"); 
//		  CustomUserDetails user =(CustomUserDetails) SecurityContextHolder.getContext().getAuthentication()
//		  .getPrincipal(); session.setAttribute("user", user);
//		 
		 return "admin/index"; 
		
		/*
		 * model.addAttribute("msg", "TRANG QUẢN LÝ ĐIỂM - DÀNH CHO QUẢN TRỊ");
		 * 
		 * //lấy thông tin tài khoản khi login thành công
		 * 
		 * CustomerDetails customer = (CustomerDetails)
		 * SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		 * 
		 * model.addAttribute("customer", customer);
		 * 
		 * return "admin/product/listProduct";
		 */
	}
	
	//GET: admin/login
		@RequestMapping(value = "admin/login", method = RequestMethod.GET)
		public String login(Model model) {
			return "admin/login";
		}
		//POST: admin/login (xử lý login)
		@RequestMapping(value = "admin/login", method = RequestMethod.POST)
		public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
			Customer cus = customerService.getCustomer(username);
			String passMd5 = Cipher.GenerateMD5(password);
			if (cus == null || !cus.getPassword().equals(passMd5) || !cus.getRole().equals("admin")) {
				model.addAttribute("msg", "Thông tin đăng nhập sai hoặc bạn không có quyền!");
				return "admin/login";
			}
			HttpSession session = req.getSession();
			session.setMaxInactiveInterval(3600);
			session.setAttribute("adminCustomerId", cus.getCustomerId());
			session.setAttribute("adminAvatar", cus.getAvatar());
			session.setAttribute("adminFullName", cus.getFullName());
			return "redirect:/admin/product";
		}
		//GET: admin/logout
		@RequestMapping(value = "logout")
		public String logout(Model model, HttpServletRequest req) {
			HttpSession session = req.getSession();
			session.invalidate();
			return "redirect:/admin/login";
		}
}
