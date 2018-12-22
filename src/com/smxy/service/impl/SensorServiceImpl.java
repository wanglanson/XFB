package com.smxy.service.impl;

import com.smxy.mapper.SensorMapper;
import com.smxy.pojo.Sensor;
import com.smxy.service.SensorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("sensorService")
@Transactional
public class SensorServiceImpl implements SensorService {
	@Autowired
    private SensorMapper sensorMapper;
    @Override
    public List<Sensor> listSensor() {
        return sensorMapper.listSensor();
    }
    @Override
    public List<Sensor> allSensor() {
        return sensorMapper.allSensor();
    }
}
