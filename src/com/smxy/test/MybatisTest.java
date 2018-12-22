package com.smxy.test;
  
import java.util.List;

import cn.jpush.api.JPushClient;
import cn.jpush.api.push.model.Platform;
import cn.jpush.api.push.model.PushPayload;
import cn.jpush.api.push.model.audience.Audience;
import cn.jpush.api.push.model.notification.Notification;
import com.smxy.pojo.Sensor;
import com.smxy.service.SensorService;
import com.smxy.util.Jdpush;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.smxy.mapper.UserMapper;
import com.smxy.pojo.User;
import com.smxy.util.Page;
  
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MybatisTest {
    @Autowired
    SensorService sensorService;
    @Test
    public void run() {
        List<Sensor> cs=sensorService.listSensor();
        for (Sensor c : cs) {
            System.out.println(c.getMq2());
        }
    }
//    @Autowired
//    private CategoryMapper categoryMapper;
//
////  @Test
//    public void testAdd() {
//        for (int i = 0; i < 100; i++) {
//            Category category = new Category();
//            category.setName("new Category");
//            categoryMapper.add(category);
//        }
//
//    }
//    
//    @Test
//    public void testTotal() {
//        int total = categoryMapper.total();
//        System.out.println(total);
//    }
//
//    @Test
//    public void testList() {
//        Page p = new Page();
//        p.setStart(2);
//        p.setCount(3);
//        List<Category> cs=categoryMapper.list(p);
//        for (Category c : cs) {
//            System.out.println(c.getName());
//        }
//    }

}