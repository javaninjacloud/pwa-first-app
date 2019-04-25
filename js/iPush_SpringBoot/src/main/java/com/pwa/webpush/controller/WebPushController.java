package com.pwa.webpush.controller;

import java.security.Security;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.Future;

import javax.servlet.ServletContext;

import org.apache.http.HttpResponse;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.gson.Gson;
import com.pwa.webpush.entity.Message;
import com.pwa.webpush.entity.Subscription;
import com.pwa.webpush.service.IMessageService;
import com.pwa.webpush.service.ISubscriptionService;

import nl.martijndwars.webpush.Notification;
import nl.martijndwars.webpush.PushService;

@Controller
public class WebPushController {

	@Value("${spring.profiles.active}")
	private String profile;
	
	@Autowired
	ServletContext context;
	
	@Autowired
	private IMessageService messageService;
	
	@Autowired
	private ISubscriptionService subscriptionService;
	
	@GetMapping("/")
	public String listCustomers(Model model) {
		setContext();
		String json = null;
		json = new Gson().toJson(subscriptionService.getSubscriptionCount());
		model.addAttribute("mapSubscriptionCount", json);
		
		List<Message> liMessages=messageService.getMessages();
		return "dashboard";
	}
	
	@GetMapping("/login")
	public String login(Model model) {
		if(context.getAttribute("profile")==null) {
			context.setAttribute("profile", profile);
		}
		return "login";
	}
	
	@GetMapping("/pushMessages")
	public String pushMessages(Model model) {
		Message message=new Message();
		model.addAttribute("message", message);
		context.setAttribute("pushed", "");
		context.setAttribute("msg", "");
		return "pushMessages";
	}
	
	@PostMapping("/saveMessage")
	public String saveMessage(@ModelAttribute("message") Message message) throws Exception {
		System.out.println(message);
		String json = null;
		json = new Gson().toJson(message);
		//service call for submit
		message.setStrLastModUser("admin");
		message.setTsLastModTime(new Timestamp(Calendar.getInstance().getTimeInMillis()));
		messageService.saveMessage(message);
		
		List<Subscription> subscriptions=subscriptionService.getSubscriptions();
		
		Security.addProvider(new BouncyCastleProvider());
		PushService ps=new PushService("BAbMVrrLx8CDUXecgTjmQpY-W4sDYlHAcP3ufs_45al0n0coZ3YrCmP3ik3yrTjGg6FKB2zILn-ovKhTDsa0mjo", 
				"jwFRccSeTiGvAkcFbqQi76PCqrAwOvA3zTute0E0XZI", "mailto:admin@domain.com");
		
		for(Subscription sub:subscriptions) {
			Notification  notification =new Notification(sub.getStrEndpoint(),sub.getStrKey256(),sub.getStrAuth(), json);
			Future<HttpResponse> s=ps.sendAsync(notification);
			System.out.println(s);
		}
		/*Notification  notification1 =new Notification("https://fcm.googleapis.com/fcm/send/fHPG8BGrhcY:APA91bFuRku3PWbVOIqkcOXty4CPUmliZdL34YDRGhcvsnUChJ-rSHmbrZmCjbOaMFbmkdFjuHZbiEpdtlMYtX561vO42u-YUO8HG2u558bv_hZKpXVxoJD8fVPPE8jyQuIaIw9Xg0_Sm0GrfKv_GEr_7P8eDIrXkw",
				"BLHrV64_h6YMge_xH7txpq3pN2apmLY1ZoaXPJhIoSydox_PtMK9IpFzRijYX7dPuaoRRapPAwZ-lh60iD4NE00",
				"x0F5Bl7Cr5JzvcWVzUqzXQ", json);
		Future<HttpResponse> s=ps.sendAsync(notification1);*/
		context.setAttribute("pushed", "success");
		context.setAttribute("msg", message.getStrTitle());
		
		return "pushMessages";
	}
	
	private void setContext() {
		if(context.getAttribute("startup")==null) {
			context.setAttribute("startup", context.getAttribute("refresh"));
		}
		else {
			context.removeAttribute("refresh");
			context.removeAttribute("startup");
		}
	}
	
}
