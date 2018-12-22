package com.smxy.controller;

import com.alibaba.fastjson.JSON;
import com.smxy.pojo.Feedback;
import com.smxy.service.FeedbackService;
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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@Scope("prototype")
@RequestMapping("")
public class FeedbackController {
    @Autowired
    FeedbackService feedbackService;
    @RequestMapping(value="/addFeedback.do",method=RequestMethod.POST)
    public String addFeedback(Feedback feedback, HttpSession session, HttpServletRequest request) {
        System.out.println(feedback.getTitle()+feedback.getContent());
        if(feedback.getUser()==null){
            feedback.setUser("匿名");
        }
        if (!feedback.getTitle().equals("")&&!feedback.getContent().equals("")) {
            // 添加反馈
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            feedback.setDate(dateFormat.format(new Date()));
            feedback.setUser((String)session.getAttribute("user"));
            request.setAttribute("fankui",feedback.getTitle());

            feedbackService.insertFeedback(feedback);

            return "fankui";
        }else {
            // 失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/delFeedback.do",method=RequestMethod.POST)
    public String delFeedback(String title) {
        if (title!=null) {
            // 删除反馈
            feedbackService.delFeedback(title);
            return "success";
        }else {
            // 失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/feedback.do")
    public ModelAndView allFeedback(){
        List<Feedback> list = feedbackService.allFeedback();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("feedback");
        modelAndView.addObject("list", list);
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping("")
    public String addFeedback1(HttpServletRequest request, HttpSession session){
        String title=request.getParameter("title");
        String content=request.getParameter("content");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date=dateFormat.format(new Date());
        Feedback feedback = new Feedback();
        feedback.setTitle(title);
        feedback.setContent(content);
        feedback.setDate(date);
        feedback.setUser((String)session.getAttribute("user"));
        if(feedback.getUser()==null){
            feedback.setUser("匿名");
        }
        if (!feedback.getTitle().equals("")&&!feedback.getContent().equals("")) {
            feedbackService.insertFeedback(feedback);
            return JSON.toJSONString("success");
        }else {
            return JSON.toJSONString("fail");
        }

    }
}