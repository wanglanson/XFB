package com.smxy.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.smxy.pojo.Announcement;
import com.smxy.pojo.User;
import com.smxy.pojo.Yuzhi;
import com.smxy.service.UserService;
import com.smxy.service.YuzhiService;
import com.smxy.sha1.Md5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@Scope("prototype")
@RequestMapping("")
public class YuzhiController {
    @Autowired
    YuzhiService yuzhiService;
    @RequestMapping(value="/updateMq2.do",method=RequestMethod.POST)
    public String updateMq2(String mq2){
        yuzhiService.updateMq2(mq2);
        return "system";
    }
    @RequestMapping(value="/updateTemp.do",method=RequestMethod.POST)
    public String updateTemp(String temp){
        yuzhiService.updateTemp(temp);
        return "system";
    }
    @RequestMapping(value = "/listYuzhi.do")
    public @ResponseBody
    ModelAndView listYuzhi (ModelAndView modelAndView,HttpSession session) {
        Yuzhi yuzhi = yuzhiService.listYuzhi();
        modelAndView.addObject("yz", yuzhi);
        modelAndView.setViewName("system");
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping("/updateMq2_App.do")
    public String updateMq2_App(HttpServletRequest request) {
        String mq2 = request.getParameter("mq2");
        if(mq2!=null){
            yuzhiService.updateMq2(mq2);
            return JSON.toJSONString("success");
        }else {
            return JSON.toJSONString("fail");
        }
    }
    @ResponseBody
    @RequestMapping("/updateTemp_App.do")
    public String updateTemp_App(HttpServletRequest request) {
        String temp = request.getParameter("temp");
        if(temp!=null){
            yuzhiService.updateTemp(temp);
            return JSON.toJSONString("success");
        }else {
            return JSON.toJSONString("fail");
        }
    }
}