package com.mockez.service.impl;

import com.mockez.domain.email.EmailDetail;
import com.mockez.service.EmailSenderService;
import lombok.RequiredArgsConstructor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import com.google.common.cache.LoadingCache;

import javax.transaction.Transactional;
import java.util.Random;


/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class EmailSenderServiceImpl implements EmailSenderService {

    private final JavaMailSender mailSender;
    Random random = new Random();
    Integer otp = random.nextInt(0, 10000);

    @Override
    public void sendSimpleEmail(EmailDetail emailDetail) {

        emailDetail.setMsgBody("The verification code is: " + otp);
        emailDetail.setSubject("Mockez account verification code");

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("mockezservice@gmail.com");
        message.setTo(emailDetail.getReceiver());
        message.setText(emailDetail.getMsgBody());
        message.setSubject(emailDetail.getSubject());
        mailSender.send(message);
    }

    @Override
    public Integer getOTPCode() {
        return otp;
    }


}
