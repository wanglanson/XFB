package com.smxy.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.util.UTF8Decoder;
import com.smxy.pojo.Announcement;
import com.smxy.service.AnnouncementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@Scope("prototype")
@RequestMapping("")
public class AnnouncementController {
    @Autowired
    AnnouncementService announcementService;
    @RequestMapping(value="/addAnnouncement.do",method=RequestMethod.POST)
    public String addAnnouncement(Announcement announcement, HttpServletRequest request) {
        System.out.println(announcement.getTitle()+announcement.getContent());

        if (!announcement.getTitle().equals("")&&!announcement.getContent().equals("")) {
            // 添加公告
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            announcement.setDate(dateFormat.format(new Date()));
            request.setAttribute("anno",announcement.getTitle());

            announcementService.insertAnnouncement(announcement);

            return "announcements";
        }else {
            // 失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/delAnnouncement.do",method=RequestMethod.POST)
    public String delAnnouncement(String title) {
        if (title!=null) {
            // 删除反馈
            announcementService.delAnnouncement(title);
            return "success";
        }else {
            // 失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/announcement.do")
    public ModelAndView allAnnouncement(){
        List<Announcement> list1 = announcementService.allAnnouncement();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("notification");
        modelAndView.addObject("list1", list1);
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping(value="/allannouncement.do",produces="text/html;charset=UTF-8")
    public String allAnnouncement1(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        List<Announcement> list1 = announcementService.allAnnouncement();
        String jsonString1 = JSONArray.toJSONString(list1);
        System.out.println(jsonString1);
        return jsonString1;
    }
}