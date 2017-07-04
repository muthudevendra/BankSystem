package com.banksys.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

/**
 * Created by lakshithar on 7/4/2017.
 *
 */
@Service
public class EmailSender {

    private final JavaMailSender javaMailSender;

    @Autowired
    public EmailSender(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    public void sendMail(EmailObject emailObject) {
        MimeMessagePreparator email = mimeMessage -> {
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
            helper.setFrom(emailObject.getFrom());
            helper.setCc(emailObject.getCc());
            helper.setBcc(emailObject.getBcc());
            helper.setTo(emailObject.getTo());
            helper.setSubject(emailObject.getSubject());
            helper.setText(emailObject.getBody(), true);
            helper.setPriority(1);
        };
        javaMailSender.send(email);
    }
}
