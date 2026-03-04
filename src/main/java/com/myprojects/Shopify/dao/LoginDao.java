package com.myprojects.Shopify.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.myprojects.Shopify.model.User;
@Repository
public interface LoginDao extends JpaRepository<User, Integer> {

}