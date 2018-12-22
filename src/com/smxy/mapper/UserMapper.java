package com.smxy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.smxy.pojo.User;

public interface UserMapper {
	 //根据用户名和密码查找。mybatis中有多个参数时，需要使用@Param注解
    User findByUserNameAndPassword(@Param("name") String name, @Param("password") String password);
    //增加用户
    void addUser(User user);
   //根据用户名查询
    User findByName(String username);
    List<User> listUser();
    void delUser(String name);
    void updateUser(@Param("name") String name, @Param("password") String password);
}
