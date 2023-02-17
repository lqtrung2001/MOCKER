package com.mocker.service;

import com.mocker.domain.email.EmailDetail;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface EmailSenderService {

    void sendSimpleEmail(EmailDetail emailDetail);
    Integer getOTPCode();
}
