package com.myprojects.Shopify.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myprojects.Shopify.model.Products;
import com.myprojects.Shopify.service.ProductService;

  @Controller
    public class ProductController {

        @Autowired
        ProductService productService;
        

        @GetMapping("/products")
        public String getProductsPage(Model model) {
            List<Products> list = productService.getAllProducts();
            model.addAttribute("products", list);
      
            return "products";
        }

        @PostMapping("/addToCart")
        public String addToCart(@RequestParam int productId, Model model) {
            List<Products> cartItems = productService.addToCart(productId);
            model.addAttribute("cartItems", cartItems);
            return "redirect:/cart";  // ← redirect to cart page
        }

        @GetMapping("/cart")
        public String getCartPage(Model model) {
            model.addAttribute("cartItems", productService.getCartItems());
            return "cart";  // ← renders cart.jsp
        }
        @PostMapping("/buyNow")
        public String buyNow(@RequestParam int productId, Model model) {
            productService.buyProductNow(productId);
            return "redirect:/bill";
        }

        @GetMapping("/bill")
        public String getBillPage(Model model) {
            model.addAttribute("product", productService.getBoughtProduct());
            model.addAttribute("cartItems", productService.getBoughtAll());
            return "bill";
            
        }
        
        @PostMapping("/removeFromCart")
        public String removeFromCart(@RequestParam int productId) {
            productService.removeFromCart(productId);
            return "redirect:/cart";
        }

        @PostMapping("/buyAll")
        public String buyAll(Model model) {
            productService.buyAll();
            return "redirect:/bill";
        }

    }
