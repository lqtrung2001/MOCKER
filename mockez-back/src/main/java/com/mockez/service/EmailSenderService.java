package com.mockez.service;

import com.mockez.domain.email.EmailDetail;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface EmailSenderService {

    void sendSimpleEmail(EmailDetail emailDetail);
    Integer getOTPCode();
}
