package com.smxy.pojo;

import lombok.Getter;
import lombok.Setter;

import java.io.File;

@Getter
@Setter
public class Feedback {
    int id;
    String user;
    String title;
    String content;
    String date;
}
