package com.smxy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthOptionPaneUI;

import com.alibaba.druid.pool.vendor.SybaseExceptionSorter;
import com.alibaba.fastjson.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.smxy.pojo.User;
import com.smxy.service.UserService;
import com.smxy.sha1.Md5;

import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@Scope("prototype")
@RequestMapping("")
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping(value="/userlogin.do")
    public ModelAndView login(String name,String password,String select,ModelAndView mv,HttpSession session) {
    	password=Md5.MD5(password);
        User user=userService.login(name, password);
        if(select.equals("consumer")){
            if(user!=null){
                //登录成功，将user对象设置到HttpSession作用范围域中
                session.setAttribute("user", user.getName());
                mv.setViewName("welcome");
            }else {
                //登录失败，设置失败信息，并调转到登录页面
                mv.addObject("message","用户名或密码错误,请重新输入");
                mv.setViewName("login");
            }
        }else {
            if(name.equals("admin")&&password.equals("1FAD9218AD3CDB7F42DFA59C0617A0DE")){
                //登录成功，将user对象设置到HttpSession作用范围域中
                session.setAttribute("admin", "admin");
                mv.setViewName("admin_welcome");
            }else {
                //登录失败，设置失败信息，并调转到登录页面
                mv.addObject("message","管理员名或密码错误,请重新输入");
                mv.setViewName("login");
            }
        }
        return mv;
    }
    @RequestMapping(value="/registerpage.do")
    public String registerpage() {
        
        return "user/registerpage";
    }
    /**
     * 用户注册
     */
    @RequestMapping(value="/userregister.do",method=RequestMethod.POST)
    public String register(User user) {
        String name=user.getName();
        user.setPassword(Md5.MD5(user.getPassword()));
        // 如果数据库中没有该用户，可以注册，否则跳转页面
        if (userService.findByName(name) == null) {
            // 添加用户
            userService.register(user);
            return "login";
        }else {
            // 注册失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/delUser.do")
//    public String delUser(String name) {
//        userService.delUser(name);
//        return "user";
//    }
    public ModelAndView delUser(String name){
        userService.delUser(name);
        ModelAndView mav = new ModelAndView("redirect:/listUser.do");
        return mav;
    }
    @RequestMapping(value="/updateUser.do",method=RequestMethod.POST)
    public String updateUser(String name,String password){
        //System.out.println(name+" "+password);
        password=Md5.MD5(password);
        userService.updateUser(name,password);
        return "login";
    }
    @RequestMapping(value = "/listUser.do")
    public @ResponseBody
    String listUser () {
        List<User> listUser = userService.listUser();
        String jsonString1 = JSONArray.toJSONString(listUser);
        return jsonString1;
    }
//    public ModelAndView listUser(){
//        List<User> list3 = userService.listUser();
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("user");
//        modelAndView.addObject("list3", list3);
//        return modelAndView;
//    }

    @ResponseBody
    @RequestMapping("/logincheck.do")
    //@RequestMapping(value="/logincheck",method=RequestMethod.POST)
    public String appLogin(HttpServletRequest request, HttpSession session) {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
    	password=Md5.MD5(password);
    	//System.out.println(password);
        if (name != null && password != null) {
            User user = userService.login(name, password);
            System.out.println(user);
            if (user != null) {//用户是否存在
                //return JSON.toJSONString(user); 
            	System.out.println("用户  "+name+"  手机客户端登录成功！");
            	//return "success";
            	return JSON.toJSONString(user);            	
            } else {
                //return "fail";
            	return JSON.toJSONString("fail");
            }
        } else {
           // return "fail";
            return JSON.toJSONString("fail");
        }
    }
    @ResponseBody
    @RequestMapping("/registercheck.do")
    public String registercheck(HttpServletRequest request, HttpSession session){
        String name=request.getParameter("username");
        String password=request.getParameter("password");
        String phone=request.getParameter("phone");
        password=Md5.MD5(password);

        User user=new User();
        user.setName(name);
        user.setPassword(password);
        // System.out.println(user.getPassword());
        user.setPhone(phone);
        if (userService.findByName(name) == null) {
            // 添加用户
            userService.register(user);
            System.out.println("欢迎新用户  "+name+"  使用我们的产品！");
            //return "success";
            return JSON.toJSONString("success");
        }else {
            // 注册失败
            //return "fail";
            return JSON.toJSONString("fail");
        }

    }
    @ResponseBody
    @RequestMapping("/updateUser_App.do")
    public String updateUser_App(HttpServletRequest request, HttpSession session){
        String name=request.getParameter("username");
        String oldpassword=request.getParameter("oldpassword");
        String password=request.getParameter("password");
        password=Md5.MD5(password);
        //System.out.println(password);
        if (name!=null&&password!= null) {
           userService.updateUser(name,password);
           return JSON.toJSONString("success");
        }else {
            return JSON.toJSONString("fail");
        }
    }
}