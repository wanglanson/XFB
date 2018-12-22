package com.smxy.service;


import com.smxy.pojo.UserInfo;

public interface UserInfoService {

	void updateUserInfo(UserInfo userinfo);

	void addUserInfo(UserInfo userinfo);

	UserInfo findUserInfo(String name);
}
