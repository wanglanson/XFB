package com.smxy.service.impl;


import com.smxy.mapper.UserInfoMapper;

import com.smxy.pojo.UserInfo;
import com.smxy.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserInfoServiceImpl implements UserInfoService {
	@Autowired
    private UserInfoMapper userinfoMapper;
    /**
     *
     * 根据用户名进行查询
     */
    @Override
    public UserInfo findUserInfo(String name){
        return userinfoMapper.findUserInfo(name);
    }

    /**
     *
     *
     * 添加
     */
    @Override
    public void addUserInfo(UserInfo userinfo) {
        userinfoMapper.addUserInfo(userinfo);
    }
    /**
     * 更新
     */
    @Override
    public void updateUserInfo(UserInfo userinfo){
        userinfoMapper.updateUserInfo(userinfo);
    }
}
