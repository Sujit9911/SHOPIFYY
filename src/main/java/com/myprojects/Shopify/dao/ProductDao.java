package com.myprojects.Shopify.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myprojects.Shopify.model.Products;

public interface ProductDao extends JpaRepository<Products, Integer> {

}
