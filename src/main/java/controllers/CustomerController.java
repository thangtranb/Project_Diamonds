package controllers;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.CustomerDAO;
import entities.Customer;
import entities.Products;
import util.Cipher;


@Controller
@RequestMapping("/admin")
public class CustomerController {
	@Autowired
	CustomerDAO customerDAO;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
	}
	
	@RequestMapping(value = "/customer")
	public String index(Model model, Integer page) {
		Integer itemPage = 3;
		Integer offset;
		if (page == null)
			offset = 0;
		else
			offset = (page - 1) * itemPage;

		List<Customer> customer = customerDAO.getCustomerPagination(offset, itemPage);
		model.addAttribute("customer", customer);

		Long totals = customerDAO.getTotalCustomerPagination();
		Integer totalPage = (int) (totals / itemPage + (totals % itemPage == 0 ? 0 : 1));

		List<Integer> list = new ArrayList();
		for (int i = 1; i <= totalPage; i++) {
			list.add(i);
		}

		model.addAttribute("list", list);
		return "admin/customer/listCustomer";

	}
	
	@RequestMapping(value = "customer/insertCustomer")
	public String insert(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "admin/customer/insertCustomer";
	}

	@RequestMapping(value = "/customer/save", method = RequestMethod.POST, consumes = "multipart/form-data")
	public String save(@Valid @ModelAttribute("customer") Customer customer, String password, BindingResult result,
			@RequestParam(value = "file", required = false) MultipartFile file, Model model, HttpServletRequest req) {

		String passMd5 = Cipher.GenerateMD5(password);
			if (file != null && !file.isEmpty()) {
				String uploadRootPath = req.getServletContext().getRealPath("resources/images/customer");
				File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
				// constructor
				try {
					file.transferTo(destination);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
				System.out.println(file.getOriginalFilename());
				customer.setAvatar("/images/customer/" + file.getOriginalFilename());
				customer.setPassword(passMd5);
			}
		
		customerDAO.insert(customer);
		return "redirect:/admin/customer";

	}
	
	@RequestMapping(value = "/customer/edit")
	private String update(Model model, @RequestParam Integer customerId) {
		model.addAttribute("customer", customerDAO.getCustomerById(customerId));
		return "admin/customer/updateCustomer";
	}
	
	@RequestMapping(value = "/customer/updateCustomer")
	public String updateProduct(Model model, @ModelAttribute("customer") Customer customer, String password,
			Integer customerId, @RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest req) {
		String passMd5 = Cipher.GenerateMD5(password);

		if (file.getSize() > 0) {
			String uploadRootPath = req.getSession().getServletContext().getRealPath("resources/images/customer");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			if (file.getOriginalFilename().length() > 0)
				customer.setAvatar("/images/customer/" + file.getOriginalFilename());
			else {
				customer.setAvatar(customerDAO.getCustomerById(customer.getCustomerId()).getAvatar());
			}
		} else {
			customer.setAvatar(customerDAO.getCustomerById(customer.getCustomerId()).getAvatar());
			customer.setPassword(passMd5);
		}

		customerDAO.update(customer);

		return "redirect:/admin/customer";
	}
	
	@RequestMapping(value = "/customer/delete")
	public String delete(@RequestParam("customerId") Integer customerId, Model model) {
		customerDAO.delete(customerId);
		return "redirect:/admin/customer";
	}
	
	@RequestMapping(value = "/customer/search")
	public String index(Model model, @RequestParam("key") String key) {
		System.out.println(key);
		model.addAttribute("customer", customerDAO.search(key));
		return "admin/customer/listCustomer";
	}
}
