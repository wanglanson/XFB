package com.smxy.service;
import com.smxy.pojo.Device;
import com.smxy.pojo.Feedback;

import java.util.List;


public interface DeviceService {
	void delDevice(Device device);

	void updateDevice(Device device);
	void addDevice(Device device);
	List<Device> listDevice(String name);
	Device findDevice(String deviceId);
}
