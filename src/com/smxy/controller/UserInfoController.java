package com.smxy.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.smxy.pojo.Announcement;
import com.smxy.pojo.UserInfo;
import com.smxy.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@Scope("prototype")
@RequestMapping("")
public class UserInfoController {
    @Autowired
    UserInfoService userinfoService;
    @RequestMapping(value="/findUserInfo.do")
    public ModelAndView findUserInfo(ModelAndView modelAndView,HttpSession session) {
        UserInfo list =userinfoService.findUserInfo((String)session.getAttribute("user"));
        System.out.println(session.getAttribute("user")+list.toString());
        modelAndView.addObject("list", list);
        modelAndView.setViewName("person");
        return modelAndView;
    }
    /**
     *
     */
    @RequestMapping(value="/addUserInfo.do",method=RequestMethod.POST)
    public String addUserInfo(UserInfo userinfo) {
        String name=userinfo.getName();
        if (userinfoService.findUserInfo(name) == null) {
            // 添加
            userinfoService.addUserInfo(userinfo);
            return "person";
        }else {
            userinfoService.updateUserInfo(userinfo);
            return "person";
        }
    }
    @ResponseBody
    @RequestMapping("/findUserInfo_App.do")
    public String findUserInfo_App(HttpServletRequest request) {
        String name = request.getParameter("name");
        if(name!=null){
            UserInfo userInfo = userinfoService.findUserInfo(name);
            String jsonString1 = JSONArray.toJSONString(userInfo);
            System.out.println(jsonString1);
            return jsonString1;
        }else {
            return JSON.toJSONString("fail");
        }
    }
}