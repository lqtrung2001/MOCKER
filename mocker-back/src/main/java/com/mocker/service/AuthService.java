package com.mocker.service;

import com.mocker.domain.model.entity.User;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */
public interface AuthService {

    Boolean sendVerificationCode(String username);

    User verifyAndSave(String verificationCode, User user);
}
