package com.smxy.mapper;

import com.smxy.pojo.Device;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DeviceMapper {

    //增加反馈
    void addDevice(Device device);
    //删除
    void delDevice(Device device);

    void updateDevice(Device device);
   //查询所有
   List<Device> listDevice(String name);
   Device findDevice(String deviceId);
     
}
