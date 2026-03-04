package com.myprojects.Shopify.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myprojects.Shopify.model.Contact;
import com.myprojects.Shopify.model.User;
import com.myprojects.Shopify.service.LoginService;
import com.myprojects.Shopify.service.ProductService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;
	
	@Autowired
	ProductService productService;

	
	@GetMapping("/")
	public String getIndexPage(Model model) {
	    model.addAttribute("products", productService.getAllProducts());  // ← add this
	    return "index";
	}

	@GetMapping("/getLogin")
	public String getLoginPage() {
		return "login";
	}

	@GetMapping("/home")
	public String getHomePage(Model model) {
	    model.addAttribute("products", productService.getAllProducts());
	    return "home";
	}

	@PostMapping("/verifyLogin")
	public String verifyLogincred(@RequestParam String username, 
	                               @RequestParam String password, Model model) {
	    boolean isValid = loginService.validateUser(username, password);
	    if (isValid) {
	        return "redirect:/products";  // ← triggers GET /products in ProductController
	    } else {
	        model.addAttribute("error", "Invalid username or password!");
	        return "login";
	    }
	}
	
	@GetMapping("/about")
	public String getAboutPage() {
		return "about";
	}


	@GetMapping("/register")
	public String getRegisterPage() {
		return "register";
	}

	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute User user) {
		loginService.addUser(user);
		return "login";

	}
	@GetMapping("/contact")
	public String getContactPage() {
		return "contact";
	}
	
	@PostMapping("/sendMessage")
	public String contactUs(@ModelAttribute Contact contact) {
		loginService.conatactdetails(contact);
		return "redirect:/contact";
	}
	@GetMapping("/logout")
	public String logout() {
		return "index";
	}
}