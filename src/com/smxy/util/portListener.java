package com.smxy.util;

import org.springframework.test.context.ContextConfiguration;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpServlet;

@ContextConfiguration({ "classpath:springMVC.xml","classpath:applicationContext.xml"})
public class portListener extends HttpServlet implements ServletContextListener{
	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("-----------------SensorServer thread--------------------------");
		//gps守护线程
		System.out.println("-----------------端口监听已启动--------------------------");

		StartThread s=new StartThread();

		s.setDaemon(true);// 设置线程为后台线程，tomcat不会被hold,启动后依然一直监听。

		s.start();
	}
}