
package com.myprojects.Shopify.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myprojects.Shopify.dao.ContactDao;
import com.myprojects.Shopify.dao.LoginDao;
import com.myprojects.Shopify.model.Contact;
import com.myprojects.Shopify.model.User;

@Service
public class LoginService {

	@Autowired
	LoginDao loginDao;
	@Autowired
	ContactDao contactDao;

	public boolean validateUser(String username, String password) {
		List<User> users = loginDao.findAll();
		for (User user : users) {
			if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
				return true;
			}
		}

		return false;
	}

	public void addUser(User user) {
		loginDao.save(user);

		System.out.println("User added successfully: " + user);
	}

	public void conatactdetails(Contact contact) {
		contactDao.save(contact);

		System.out.println("Contact details added successfully: " + contact);
	}

}