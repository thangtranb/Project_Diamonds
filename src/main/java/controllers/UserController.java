package controllers;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import dao.CategoryDAO;
import dao.OrderDAO;
import dao.ProductDAO;
import dao.impl.CustomerDAOImpl;
import entities.Cart;
import entities.Customer;
import entities.Favourite;
import entities.OrderDetail;
import entities.Orders;
import entities.Products;
import util.Cipher;

@Controller
public class UserController {
	@Autowired
	CustomerDAOImpl customerService;

	@Autowired
	ProductDAO productDao;

	@Autowired
	private CategoryDAO categoryDao;

	@Autowired
	OrderDAO orderDao;

	@RequestMapping(value = { "/", "home" })
	public String home(Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		model.addAttribute("product", productDao.getProducts());
		/* model.addAttribute("page", "product"); */
		return "user/home";
	}

	// GET: categories "lấy toàn bộ danh mục sách và hiển thị ở menu Thể loại trên
	// view home/categories"
//	@RequestMapping(value = "categories")
//	public String getCategories(Model model) {
//		model.addAttribute("categories", categoryDao.getCategory());
//		return "user/categories";
//	}

	// GET: danh-muc-sach "lấy sách theo danh mục và hiển thị trên view home/books
	@RequestMapping(value = "category/{categoryId}")
	public String getBooks(@PathVariable("categoryId") Integer categoryId, Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		/* model.addAttribute(categoryDao.getCategoryById(categoryId).getName()); */
		model.addAttribute("product", productDao.getByCategory(categoryId));
		/* model.addAttribute("page", "product"); */
		 		return "user/shop";
	}

	// GET: chi-tiet/{id} "trả về 1 sách và hiển thị trên view home/bookdetail"
	@RequestMapping(value = "detail/{productId}")
	public String detail(@PathVariable("productId") Integer productId, Model model) {
		model.addAttribute("product", productDao.getProductById(productId));
		model.addAttribute("products", productDao.getProducts());
		model.addAttribute("page", "productDetail");
		return "user/productDetail";
	}

	// GET: countItems "trả về số lượng sách trong giỏ hàng"
	@RequestMapping(value = "countItems")
	public @ResponseBody String getItems(Model model, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		if (session.getAttribute("cart") != null) {
			carts = (List<Cart>) session.getAttribute("cart");
		}
		System.out.println(carts.size());
		return String.valueOf(carts.size());
	}

	// GET: addItem "thêm sách vào giỏ hàng và trả về tổng số sách trong giỏ"
	@RequestMapping(value = "addItem/{productId}")
	public @ResponseBody String addItem(@PathVariable("productId") Integer productId, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		Products p = productDao.getProductById(productId);
		if (session.getAttribute("cart") == null) {
			Cart cart = new Cart(p.getProductId(), p.getName(), p.getSalePrice(),1,p.getImage());
			carts.add(cart);
			session.setAttribute("cart", carts);
		} else {
			carts = (List<Cart>) session.getAttribute("cart");
			boolean duplicate = false;
			for (int i = 0; i < carts.size(); i++) {
				Cart c = carts.get(i);
				if (c.getProductId().equals(productId)) {
					c.setStockQuantity(c.getStockQuantity() + 1);
					duplicate = true;
					break;
				}
			}
			if (duplicate)
				session.setAttribute("cart", carts);
			else {
				Cart cart = new Cart(p.getProductId(), p.getName(), p.getSalePrice(), 1,p.getImage());
				carts.add(cart);
			}
		}
		session.setAttribute("cart", carts);
		return String.valueOf(carts.size());
	}

	// GET: gio-hang "trả về sách trong giỏ hàng và hiển thị trên view home/basket"
	@RequestMapping(value = "cart")
	public String showBasket(Model model, HttpServletRequest req) {
		model.addAttribute("categories", categoryDao.getCategory());
		model.addAttribute("page", "cart");
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		if (session.getAttribute("cart") != null) {
			carts = (List<Cart>) session.getAttribute("cart");
		}
		model.addAttribute("carts", carts);
		return "user/cart";
	}

	// GET: updateBasket/{id}/{value} "cập nhật lại số lượng đặt trong giỏ hang"
	@RequestMapping(value = "updateCart/{productId}/{value}")
	public @ResponseBody String updateBasket(@PathVariable("productId") Integer productId,
			@PathVariable("value") Integer quantity, Model model, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		if (session.getAttribute("cart") != null) {
			carts = (List<Cart>) session.getAttribute("cart");
			for (int i = 0; i < carts.size(); i++) {
				Cart c = carts.get(i);
				if (c.getProductId().equals(productId)) {
					c.setStockQuantity(quantity);
					break;
				}
			}
		}
		return "/";
	}

	// GET: removeItem/{id} "xóa một sách trong giỏ hang"
	@RequestMapping(value = "removeItem/{productId}")
	public @ResponseBody String removeItem(@PathVariable("productId") Integer productId, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		boolean find = false;
		if (session.getAttribute("cart") != null) {
			int i;
			carts = (List<Cart>) session.getAttribute("cart");
			for (i = 0; i < carts.size(); i++) {
				Cart c = carts.get(i);
				if (c.getProductId().equals(productId)) {
					find = true;
					break;
				}
			}
			if (find) {
				carts.remove(i);
			}
			session.setAttribute("cart", carts);
		}

		return "/";
	}

	@RequestMapping(value = { "user/about" })
	public String about(Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		return "user/about";
	}

	@RequestMapping(value = { "user/singlePost" })
	public String singlePost(Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		return "user/singlePost";
	}

	@RequestMapping(value = { "user/404" })
	public String notFound(Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		return "user/404";
	}
	
	@RequestMapping(value = { "profile" })
	public String profile(Model model, @RequestParam Integer customerId) {
		model.addAttribute("customer", customerService.getCustomerById(customerId));
		return "user/profile";
	}

	@RequestMapping(value = "updateProfile")
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
				customer.setAvatar(customerService.getCustomerById(customer.getCustomerId()).getAvatar());
			}
		} else {
			customer.setAvatar(customerService.getCustomerById(customer.getCustomerId()).getAvatar());
			customer.setPassword(passMd5);
		}

		customerService.update(customer);

		return "redirect:/home";
	}
	
	@RequestMapping(value = { "shop" })
	public String shop(Model model, Integer page) {
		model.addAttribute("categories", categoryDao.getCategory());
		Integer itemPage = 6;
		Integer offset;
		if (page == null)
			offset = 0;
		else
			offset = (page - 1) * itemPage;

		List<Products> product = productDao.getProductPagination(offset, itemPage);
		model.addAttribute("product", product);

		Long totals = productDao.getTotalProductPagination();
		Integer totalPage = (int) (totals / itemPage + (totals % itemPage == 0 ? 0 : 1));

		List<Integer> list = new ArrayList();
		for (int i = 1; i <= totalPage; i++) {
			list.add(i);
		}
		model.addAttribute("list", list);

		return "user/shop";
	}

	@RequestMapping(value = { "user/blog" })
	public String blog(Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		return "user/blog";
	}

	@RequestMapping(value = { "user/contact" })
	public String contact(Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		return "user/contact";
	}

	@RequestMapping(value = "dang-nhap", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("categories", categoryDao.getCategory());
		model.addAttribute("page", "login");
		return "user/login";
	}

	// POST: dang-nhap (xử lý đăng nhập)
	@RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
	public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
		Customer cus = customerService.getCustomer(username);
		String passMd5 = Cipher.GenerateMD5(password);
		if (cus == null || !cus.getPassword().equals(passMd5)) {
			model.addAttribute("msg", "Thông tin đăng nhập sai");
			model.addAttribute("page", "login");
			return "user/login";
		}
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(3600);
		session.setAttribute("userCustomerId", cus.getCustomerId());
		session.setAttribute("avatar", cus.getAvatar());
		session.setAttribute("fullName", cus.getFullName());
		session.setAttribute("address", cus.getAddress());
		session.setAttribute("phone", cus.getPhone());
		return "redirect:/";
	}

	// GET: thoat
	@RequestMapping(value = "thoat")
	public String logout(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/dang-nhap";
	}


	//POST: dat-hang "xử lý đặt hang"
		@RequestMapping(value = "ordered")
		public String addOrder(String address, String phone, Model model, HttpServletRequest req) {
			
			List<Cart> carts=null;
			HttpSession session = req.getSession();
			if (session.getAttribute("userCustomerId") == null) {
				return "redirect:/dang-nhap";
			}
			if (session.getAttribute("cart") != null) {
				carts = (List<Cart>) session.getAttribute("cart");
				String timeStamp = new SimpleDateFormat("yyMMdd-HHmmss").format(Calendar.getInstance().getTime());
				Orders order=new Orders();
				order.setOrderId("HD"+timeStamp);
				order.setCustomerId(session.getAttribute("userCustomerId").hashCode());
				order.setOrderDate(Date.valueOf(LocalDate.now()));
				order.setShippingAddress(address);
				order.setPhone(phone);
				List<OrderDetail> orderdetails=new ArrayList<OrderDetail>();
				for (Cart cart : carts) {
					orderdetails.add(new OrderDetail("HD"+timeStamp,cart.getProductId(), cart.getSalePrice(),cart.getStockQuantity()));
				}
				orderDao.insertOrderDetail(order, orderdetails);
				model.addAttribute("msg","Đặt hàng thành công");
			} else {
				model.addAttribute("msg","Giỏ hàng trống");
			}
			model.addAttribute("page","cart");
			carts = new ArrayList<Cart>();
			session.setAttribute("cart", null);
			model.addAttribute("carts", carts);
			return "user/cart";
		}

		
		
		// FAVOURITE
		
		// GET: countItems "trả về số lượng sách trong yêu thích"
		@RequestMapping(value = "countItem")
		public @ResponseBody String getItem(Model model, HttpServletRequest req) {
			List<Favourite> fav = new ArrayList<>();
			HttpSession session = req.getSession();
			if (session.getAttribute("fav") != null) {
				fav = (List<Favourite>) session.getAttribute("fav");
			}
			System.out.println(fav.size());
			return String.valueOf(fav.size());
		}

		// GET: addItem "thêm sách vào giỏ hàng và trả về tổng số sách trong yêu thích"
		@RequestMapping(value = "addItems/{productId}")
		public @ResponseBody String addItems(@PathVariable("productId") Integer productId, HttpServletRequest req) {
			List<Favourite> favs = new ArrayList<>();
			HttpSession session = req.getSession();
			Products p = productDao.getProductById(productId);
			if (session.getAttribute("fav") == null) {
				Favourite fav = new Favourite(p.getProductId(), p.getName(), p.getSalePrice(),p.getImage());
				favs.add(fav);
				session.setAttribute("fav", favs);
			} else {
				favs = (List<Favourite>) session.getAttribute("fav");
				boolean duplicate = false;
				for (int i = 0; i < favs.size(); i++) {
					Favourite f = favs.get(i);
					if (f.getProductId().equals(productId)) {
						duplicate = true;
						break;
					}
				}
				if (duplicate)
					session.setAttribute("fav", favs);
				else {
					Favourite fav = new Favourite(p.getProductId(), p.getName(), p.getSalePrice(),p.getImage());
					favs.add(fav);
				}
			}
			session.setAttribute("fav", favs);
			return String.valueOf(favs.size());
//			return "user/home";
		}

		// GET: gio-hang "trả về sách trong giỏ hàng và hiển thị trên view home/favourite"
		@RequestMapping(value = "favourite")
		public String showFavourite(Model model, HttpServletRequest req) {
			model.addAttribute("categories", categoryDao.getCategory());
			model.addAttribute("page", "fav");
			List<Favourite> favs = new ArrayList<>();
			HttpSession session = req.getSession();
			if (session.getAttribute("fav") != null) {
				favs = (List<Favourite>) session.getAttribute("fav");
			}
			model.addAttribute("favs", favs);
			return "user/favourite";
		}

		
		// GET: removeItem/{id} "xóa một sách trong yêu thích"
		@RequestMapping(value = "removeItems/{productId}")
		public @ResponseBody String removeItems(@PathVariable("productId") Integer productId, HttpServletRequest req) {
			List<Favourite> favs = new ArrayList<>();
			HttpSession session = req.getSession();
			boolean find = false;
			if (session.getAttribute("fav") != null) {
				int i;
				favs = (List<Favourite>) session.getAttribute("fav");
				for (i = 0; i < favs.size(); i++) {
					Favourite f = favs.get(i);
					if (f.getProductId().equals(productId)) {
						find = true;
						break;
					}
				}
				if (find) {
					favs.remove(i);
				}
				session.setAttribute("fav", favs);
			}

			return "/";
		}
		
		
		@RequestMapping(value = "dang-ki", method = RequestMethod.GET)
	    public String register(Model model) {
	        model.addAttribute("customer", new Customer());
//	        model.addAttribute("page", "register");
	        return "user/register";
	    }

	    @RequestMapping(value = "/dang-ki", method = RequestMethod.POST)
	    public String register(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model) {
			
	            try {
	                String passMd5 = Cipher.GenerateMD5(customer.getPassword());
	                customer.setPassword(passMd5);
	                customerService.insert(customer);
	                model.addAttribute("message", "Đăng ký thành công, vui lòng đăng nhập.");
	                return "redirect:/dang-nhap";
	            } catch (Exception e) {
	            	e.printStackTrace();
	                model.addAttribute("message", "Đăng ký thất bại, có lỗi xảy ra.");
	                return "user/register";
	            }
	        }
	    
	    @RequestMapping(value = "search")
		public String index(Model model, @RequestParam("key") String key) {
			System.out.println(key);
			model.addAttribute("product", productDao.search(key));
			return "user/search";
		}
}
