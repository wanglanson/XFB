package com.smxy.util;
import com.smxy.pojo.Yuzhi;
import com.smxy.service.SensorService;
import java.net.ServerSocket;
import java.util.List;

import com.smxy.pojo.Sensor;
import com.smxy.service.YuzhiService;

//import java.util.List;
//@ContextConfiguration({ "classpath:springMVC.xml","classpath:applicationContext.xml"})
public class StartThread extends Thread {
    private static ServerSocket SERVER_SOCKET =null;
    private static final String appKey ="8aa505cdfcdcc3303b280172";
    private static final String masterSecret = "ed4895c6ca5f8fdaafb1a854";
    private static final String alert1="浓度过高！！！";
    private static final String alert2="温度过高！！！";
    private static final String alert3="加速度过高！！！";
    SensorService sensorService = SpringContextUtil.getBeanById("sensorService");
    YuzhiService yuzhiService = SpringContextUtil.getBeanById("yuzhiService");
    public void run() {
        while (true){
            try {
                List<Sensor> cs=sensorService.listSensor();
                Yuzhi yuzhi = yuzhiService.listYuzhi();
                //System.out.println(yuzhi.getMq2());
                for (Sensor c : cs) {
                    //System.out.println(c.getMq2());
                    if (Double.parseDouble(c.getMq2())>Double.parseDouble(yuzhi.getMq2())){
                        Jdpush.testSendPush(appKey, masterSecret,alert1);
                    }
                    if (Double.parseDouble(c.getTemp())>Double.parseDouble(yuzhi.getTemp())){
                        Jdpush.testSendPush(appKey, masterSecret,alert2);
                    }
                    if (Double.parseDouble(c.getAccel())>1.1||Double.parseDouble(c.getAccel())<-1.1){
                        Jdpush.testSendPush(appKey, masterSecret,alert3);
                    }
                }
                StartThread.sleep(300000);
                // Jdpush.testSendPush(appKey, masterSecret);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}