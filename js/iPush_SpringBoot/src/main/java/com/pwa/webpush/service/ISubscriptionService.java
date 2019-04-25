package com.pwa.webpush.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.pwa.webpush.entity.Subscription;

public interface ISubscriptionService {

	public List<Subscription> getSubscriptions();
	public Map<Date,Integer> getSubscriptionCount();
}
