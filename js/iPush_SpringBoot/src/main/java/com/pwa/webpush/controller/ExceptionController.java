package com.pwa.webpush.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {

	//Generic code to be applicable to all controllers for global exception handling
	private Log LOGGER=LogFactory.getLog(ExceptionController.class);
	
	@ExceptionHandler(value=Exception.class)
	public String handleException(HttpServletRequest request, Exception e) {
		System.out.println(e);
		LOGGER.error("Request "+request.getRequestURI()+" threw an Exception",e);
		return "error";
	}
}
