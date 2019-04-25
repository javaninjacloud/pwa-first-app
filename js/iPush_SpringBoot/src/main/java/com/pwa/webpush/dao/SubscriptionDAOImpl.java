package com.pwa.webpush.dao;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.type.StandardBasicTypes;
import org.hibernate.type.Type;

import com.pwa.webpush.entity.Subscription;

@Repository
public class SubscriptionDAOImpl implements ISubscriptionDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Subscription> getSubscriptions() {
		Session currentSession=sessionFactory.getCurrentSession();
		Query<Subscription> theQuery=currentSession.createQuery("from Subscription", Subscription.class);
		List<Subscription> subscriptions=theQuery.getResultList();
		return subscriptions;
	}

	@Override
	public Map<Date,Integer> getSubscriptionCount() {
		Session currentSession=sessionFactory.getCurrentSession();
		Map<Date,Integer> mapCPU=new TreeMap<>();
		String hql1="SELECT date(sub.tsLastModTime), count(tsLastModTime) FROM Subscription sub GROUP BY date(sub.tsLastModTime)";
		Query query=currentSession.createQuery(hql1);
		List<Object> list=query.getResultList();
		Iterator iterator=list.iterator();
		while(iterator.hasNext()){
			Object []obj = (Object[])iterator.next();
			mapCPU.put((Date)obj[0], Integer.valueOf(obj[1].toString()));
		}
		System.out.println(mapCPU);
		return mapCPU;
	}

}
