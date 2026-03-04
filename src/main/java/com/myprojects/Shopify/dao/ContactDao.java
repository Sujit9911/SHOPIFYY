package com.myprojects.Shopify.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.myprojects.Shopify.model.Contact;

@Repository
public interface ContactDao extends JpaRepository<Contact, Integer> {
}