package com.smxy.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.smxy.pojo.Sensor;
import com.smxy.service.SensorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@Scope("prototype")
@RequestMapping("")
public class SensorController {
    @Autowired
    SensorService sensorService;
    @RequestMapping(value="/listSensor.do",method=RequestMethod.GET)
    public @ResponseBody
    String listSensor () {
        List<Sensor> listSensor = sensorService.listSensor();
        String jsonString = JSON.toJSONString(listSensor);
        return jsonString;
    }
    @RequestMapping(value="/allSensor.do",method=RequestMethod.GET)
    public @ResponseBody
    String allSensor (){
        List<Sensor> allSensor = sensorService.allSensor();
        String jsonString1 = JSONArray.toJSONString(allSensor);
        return jsonString1;
    }
}