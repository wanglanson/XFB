package com.smxy.service.impl;
import com.smxy.mapper.DeviceMapper;
import com.smxy.pojo.Device;
import com.smxy.service.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class DeviceServiceImpl  implements DeviceService {
    @Autowired
    private DeviceMapper deviceMapper;
    /**
     * 添加
     */
    @Override
    public void addDevice(Device device) {
        deviceMapper.addDevice(device);
    }

    /**
     * 删除
     */
    @Override
    public void delDevice(Device device) {
        deviceMapper.delDevice(device);
    }

    /**
     * 更新
     */
    @Override
    public void updateDevice(Device device) {
        deviceMapper.updateDevice(device);
    }
    /**
     *  查询所有
     */
    @Override
    public List<Device> listDevice(String name) {
        return deviceMapper.listDevice(name);
    }
    @Override
    public Device findDevice(String deviceId) {
        return deviceMapper.findDevice(deviceId);
    }
}
