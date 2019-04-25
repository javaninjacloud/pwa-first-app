package com.pwa.webpush.util;

import javax.servlet.ServletContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class WebPushListener {

	@Autowired
	ServletContext context;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	 @EventListener(ContextRefreshedEvent.class)
	  public void contextRefreshedEvent() {
		 if(sessionFactory==null) {
			 context.setAttribute("refresh", "Database Connection failed. Please check configuration and restart me!");
		 }else {
			 context.setAttribute("refresh", "Database Connection Looks Fine - All Systems Operational !");
		 }
	  }
}
