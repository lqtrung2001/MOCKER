package com.mocker.service.impl;

import com.mocker.domain.email.EmailDetail;
import com.mocker.service.EmailSenderService;
import lombok.RequiredArgsConstructor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

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
        emailDetail.setSubject("Mocker account verification code");

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("mocker.service@gmail.com");
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
