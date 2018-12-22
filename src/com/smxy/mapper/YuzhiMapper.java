package com.smxy.mapper;

import com.smxy.pojo.Yuzhi;

public interface YuzhiMapper {
    void updateMq2(String mq2);
    void updateTemp(String temp);
    Yuzhi listYuzhi();
}
