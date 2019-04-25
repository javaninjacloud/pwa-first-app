package com.pwa.webpush.dao;

import java.util.List;

import com.pwa.webpush.entity.Message;

public interface IMessageDAO {

	public void saveMessage(Message message);
	public List<Message> getMessages();
}
