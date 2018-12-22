package com.smxy.mapper;

import com.smxy.pojo.Announcement;

import java.util.List;

public interface AnnouncementMapper {

    //增加反馈
    void addAnnouncement(Announcement announcement);
    //删除反馈
    void delAnnouncement(String title);
   //查询所有
   List<Announcement> allAnnouncement();
    List<Announcement> allAnnouncement1();
}
