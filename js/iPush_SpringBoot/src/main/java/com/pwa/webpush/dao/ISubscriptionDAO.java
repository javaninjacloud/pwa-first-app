package com.pwa.webpush.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.pwa.webpush.entity.Subscription;

public interface ISubscriptionDAO {

	public List<Subscription> getSubscriptions();
	public Map<Date,Integer> getSubscriptionCount();
}
