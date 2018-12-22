package com.smxy.service;

import java.util.List;

import com.smxy.pojo.User;

public interface UserService {

	User login(String name, String password);

	void register(User user);

	User findByName(String name);
	List<User> listUser();
	void delUser(String name);
	void updateUser(String name,String password);
}
