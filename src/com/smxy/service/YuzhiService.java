package com.smxy.service;

import com.smxy.pojo.Yuzhi;


public interface YuzhiService {
	Yuzhi listYuzhi();
	void updateMq2(String mq2);
	void updateTemp(String temp);
}
