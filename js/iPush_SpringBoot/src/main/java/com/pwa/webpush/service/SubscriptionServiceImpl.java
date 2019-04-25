package com.pwa.webpush.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pwa.webpush.dao.IMessageDAO;
import com.pwa.webpush.dao.ISubscriptionDAO;
import com.pwa.webpush.entity.Subscription;

@Service
public class SubscriptionServiceImpl implements ISubscriptionService {

	@Autowired
	private ISubscriptionDAO subscriptionDAO;
	
	@Override
	@Transactional
	public List<Subscription> getSubscriptions() {
		return subscriptionDAO.getSubscriptions();
	}

	@Override
	@Transactional
	public Map<Date,Integer> getSubscriptionCount() {
		return subscriptionDAO.getSubscriptionCount();
	}

}
