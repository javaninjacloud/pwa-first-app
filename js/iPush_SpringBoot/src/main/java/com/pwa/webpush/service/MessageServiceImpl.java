package com.pwa.webpush.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pwa.webpush.dao.IMessageDAO;
import com.pwa.webpush.entity.Message;

@Service
public class MessageServiceImpl implements IMessageService {

	@Autowired
	private IMessageDAO messageDAO;
	
	@Override
	@Transactional
	public void saveMessage(Message message) {
		messageDAO.saveMessage(message);
	}

	@Override
	@Transactional
	public List<Message> getMessages() {
		return messageDAO.getMessages();
	}

}
