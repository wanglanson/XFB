package com.smxy.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Sensor {
    private int id;
    private String deviceId;
    private String mq2;
    private String temp;
    private String latitude;
    private String longitude;
    private String accel;
    private String date;

}
