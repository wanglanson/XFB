package com.smxy.mapper;

import com.smxy.pojo.Feedback;

import java.util.List;

public interface FeedbackMapper {

    //增加反馈
    void addFeedback(Feedback feedback);
    //增加反馈
    void addFeedback1(Feedback feedback);
    //删除反馈
    void delFeedback(String title);
   //查询所有
   List<Feedback> allFeedback();
     
}
