package com.smxy.service.impl;

import com.smxy.mapper.FeedbackMapper;
import com.smxy.pojo.Feedback;
import com.smxy.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FeedbackServiceImpl implements FeedbackService {
	@Autowired
    private FeedbackMapper feedbackMapper;
    /**
     * 添加反馈
     */
    @Override
    public void insertFeedback(Feedback feedback) {
        feedbackMapper.addFeedback(feedback);
    }
    /**
     * 添加反馈
     */
    @Override
    public void insertFeedback1(Feedback feedback) {
        feedbackMapper.addFeedback1(feedback);
    }
    /**
     * 删除反馈
     */
    @Override
    public void delFeedback(String title) {
        feedbackMapper.delFeedback(title);
    }
    /**
     *  查询所有
     */
    @Override
    public List<Feedback> allFeedback() {
        
        return feedbackMapper.allFeedback();
    }
}
