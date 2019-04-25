package com.pwa.webpush.service;

import java.util.List;

import com.pwa.webpush.entity.Message;

public interface IMessageService {

	public void saveMessage(Message message);
	public List<Message> getMessages();
	
}
