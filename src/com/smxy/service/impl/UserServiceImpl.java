package com.smxy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smxy.mapper.UserMapper;
import com.smxy.pojo.User;
import com.smxy.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
    private UserMapper userMapper;
    /**
     * 登录
     * 根据用户名和密码进行查询
     */
    @Override
    public User login(String username, String password) {
        return userMapper.findByUserNameAndPassword(username, password);
    }
    /**
     * 注册
     * 增加用户
     */
    @Override
    public void register(User user) {
        userMapper.addUser(user);    
    }
    /**
     * 根据用户名查询
     */
    @Override
    public User findByName(String username) {
        
        return userMapper.findByName(username);
    }

    public List<User> listUser(){
        return userMapper.listUser();
    }
    public void delUser(String name){
        userMapper.delUser(name);
    }
    public void updateUser(String name,String password){
        userMapper.updateUser(name,password);
    }
}
