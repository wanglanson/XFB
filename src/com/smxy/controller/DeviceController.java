package com.smxy.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.smxy.pojo.Device;
import com.smxy.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


// 告诉spring mvc这是一个控制器类
@Controller
@Scope("prototype")
@RequestMapping("")
public class DeviceController {
    @Autowired
    DeviceService deviceService;
    @RequestMapping(value="/delDevice.do",method=RequestMethod.POST)
    public String delDevice(Device device, HttpServletRequest request) {
        if (deviceService.findDevice(device.getDeviceId())!=null&&device!=null) {
            // 删除
            request.setAttribute("deviceId",device.getDeviceId());
            deviceService.delDevice(device);
            //model.addAttribute("msg","删除成功");
            return "del_device";
        }else {
            // 失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/addDevice.do",method=RequestMethod.POST)
    public String addDevice(Device device, HttpServletRequest request) {
        System.out.println(device.getName()+"   "+device.getDeviceId());
        String name=device.getName();
        String deviceId=device.getDeviceId();
        System.out.println(deviceService.findDevice(deviceId));
        if (deviceService.findDevice(deviceId)==null&&!device.getName().equals("")&&!device.getDeviceId().equals("")) {
            // 添加
            request.setAttribute("deviceId",device.getDeviceId());
            deviceService.addDevice(device);
            return "add_device";
        }else {
            // 失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/updateDevice.do",method=RequestMethod.POST)
    public String updateDevice(Device device) {
        if (deviceService.findDevice(device.getDeviceId())!=null&&device!=null) {
            // 删除
            deviceService.updateDevice(device);
            return "success";
        }else {
            // 失败跳转到错误页面
            return "error";
        }
    }
    @RequestMapping(value="/listDevice.do")
    public ModelAndView listDevice(String name, HttpSession session){
        name=(String)session.getAttribute("user");
        List<Device> list = deviceService.listDevice(name);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("update_device");
        modelAndView.addObject("list", list);
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping("/addDevice_App.do")
    public String addDevice_App(HttpServletRequest request){
        Device device=new Device();
        device.setName(request.getParameter("name"));
        device.setDeviceId(request.getParameter("deviceId"));
        device.setDeviceName(request.getParameter("deviceName"));
        if (deviceService.findDevice(device.getDeviceId())==null&&!device.getName().equals("")&&!device.getDeviceId().equals("")) {
            // 添加
            request.setAttribute("deviceId",device.getDeviceId());
            deviceService.addDevice(device);
            return JSON.toJSONString("success");
        }else {
            return JSON.toJSONString("fail");
        }
    }
    @ResponseBody
    @RequestMapping("/delDevice_App.do")
    public String delDevice_App(HttpServletRequest request){
        Device device=new Device();
        device.setName(request.getParameter("name"));
        device.setDeviceId(request.getParameter("deviceId"));
        device.setDeviceName(request.getParameter("deviceName"));
        if (deviceService.findDevice(device.getDeviceId())!=null&&!device.getName().equals("")&&!device.getDeviceId().equals("")) {
            deviceService.delDevice(device);
            return JSON.toJSONString("success");
        }else {
            return JSON.toJSONString("fail");
        }
    }
    @ResponseBody
    @RequestMapping("/allDevice_App.do")
    public String allDevice_App(HttpServletRequest request){
        String name=request.getParameter("name");
        List<Device> list2 = deviceService.listDevice(name);
        String jsonString = JSONArray.toJSONString(list2);
        //System.out.println(jsonString);
        return jsonString;
    }
}