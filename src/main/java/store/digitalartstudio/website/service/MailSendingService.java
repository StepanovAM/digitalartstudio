package store.digitalartstudio.website.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import store.digitalartstudio.website.models.Freebie;

@Service
public class MailSendingService {
	
	@Autowired
    private JavaMailSender mailSender;

	@Async
	public void sendMail(Freebie freebie) {
		SimpleMailMessage msg = new SimpleMailMessage();
        msg.setTo(freebie.getEmail());
        msg.setSubject("Testing from Spring Boot");
        msg.setText("Hello World \n Spring Boot Email");
        mailSender.send(msg);
	}
}
