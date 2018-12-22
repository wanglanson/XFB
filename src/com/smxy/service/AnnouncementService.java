package com.smxy.service;
import com.smxy.pojo.Announcement;


import java.util.List;


public interface AnnouncementService {
	void delAnnouncement(String title);

	void insertAnnouncement(Announcement announcement);

	List<Announcement> allAnnouncement();
	List<Announcement> allAnnouncement1();

}
