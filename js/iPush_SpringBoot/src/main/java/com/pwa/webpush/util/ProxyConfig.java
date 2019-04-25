package com.pwa.webpush.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Configuration
@PropertySource("classpath:application.properties")
public class ProxyConfig {

	@Autowired
    Environment environment;
	
	@Bean
	@Profile("offshore")
	public String ProxyByPass() {
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&proxy code");
		return environment.getActiveProfiles().toString();
	}
	
}
