package com.smxy.service.impl;

import com.smxy.mapper.AnnouncementMapper;
import com.smxy.pojo.Announcement;
import com.smxy.service.AnnouncementService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AnnouncementServiceImpl implements AnnouncementService {
	@Autowired
    private AnnouncementMapper announcementMapper;
    /**
     * 添加反馈
     */
    @Override
    public void insertAnnouncement(Announcement announcement) {
        announcementMapper.addAnnouncement(announcement);
    }
    /**
     * 删除反馈
     */
    @Override
    public void delAnnouncement(String title) {
        announcementMapper.delAnnouncement(title);
    }
    /**
     *  查询所有
     */
    @Override
    public List<Announcement> allAnnouncement() {
        
        return announcementMapper.allAnnouncement();
    }
    /**
     *  查询所有
     */
    @Override
    public List<Announcement> allAnnouncement1() {

        return announcementMapper.allAnnouncement1();
    }
}
