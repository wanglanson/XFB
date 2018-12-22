package com.smxy.mapper;

import com.smxy.pojo.UserInfo;

public interface UserInfoMapper {
	 //根据用户名查找。mybatis中有多个参数时，需要使用@Param注解
    UserInfo findUserInfo(String username);
     //更新
    void updateUserInfo(UserInfo userinfo);
    //增加
    void addUserInfo(UserInfo userinfo);
}
