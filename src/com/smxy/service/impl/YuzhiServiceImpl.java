package com.smxy.service.impl;

import com.smxy.mapper.YuzhiMapper;
import com.smxy.pojo.Yuzhi;
import com.smxy.service.YuzhiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("yuzhiService")
@Transactional
public class YuzhiServiceImpl implements YuzhiService {
	@Autowired
    private YuzhiMapper yuzhiMapper;
    public Yuzhi listYuzhi(){
        return yuzhiMapper.listYuzhi();
    }
    public void updateMq2(String mq2){
        yuzhiMapper.updateMq2(mq2);
    }
    public void updateTemp(String temp){
        yuzhiMapper.updateTemp(temp);
    }
}
