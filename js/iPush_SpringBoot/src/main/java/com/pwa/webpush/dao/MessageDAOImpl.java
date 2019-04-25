package com.pwa.webpush.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pwa.webpush.entity.Message;
import com.pwa.webpush.entity.Subscription;

@Repository
public class MessageDAOImpl implements IMessageDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveMessage(Message message) {
		Session currentSession=sessionFactory.getCurrentSession();
		//currentSession.merge(customer);
		currentSession.saveOrUpdate(message);	
	}

	@Override
	public List<Message> getMessages() {
		Session currentSession=sessionFactory.getCurrentSession();
		Query<Message> theQuery=currentSession.createQuery("from Message", Message.class);
		List<Message> liMessages=theQuery.getResultList();
		return liMessages;
	}

}
