package com.smxy.service;
import com.smxy.pojo.Feedback;

import java.util.List;


public interface FeedbackService {
	void delFeedback(String title);

	void insertFeedback(Feedback feedback);
	void insertFeedback1(Feedback feedback);
	List<Feedback> allFeedback();
}
