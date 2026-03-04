package com.myprojects.Shopify.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myprojects.Shopify.dao.ProductDao;
import com.myprojects.Shopify.model.Products;

@Service
public class ProductService {

    @Autowired
    ProductDao productDao;

    private List<Products> cartItems = new ArrayList<>(); 

    public List<Products> getAllProducts() {
        return productDao.findAll();
    }

    public List<Products> addToCart(int productId) {
        Products product = productDao.findById(productId).orElse(null);
        if (product != null) {
            cartItems.add(product);
        }
        return cartItems;
    }

    public List<Products> getCartItems() {
        return cartItems;
    }

    private Products boughtProduct;  // ← add this field

    public Products buyProductNow(int productId) {
        boughtProduct = productDao.findById(productId).orElse(null);
        return boughtProduct;
    }

    public Products getBoughtProduct() {
        return boughtProduct;
    }
    private List<Products> boughtAll = new ArrayList<>();

    public void removeFromCart(int productId) {
        cartItems.removeIf(p -> p.getId() == productId);
    }

    public void buyAll() {
        boughtAll = new ArrayList<>(cartItems);
        cartItems.clear();
    }

    public List<Products> getBoughtAll() {
        return boughtAll;
    }
    
    
}