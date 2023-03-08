package com.mocker.service;

import com.mocker.domain.exception.InternalException;
import com.mocker.domain.model.entity.User;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */
public interface AuthService {

    Boolean sendVerificationCode(String username) throws InternalException;

    User verifyAndSave(String verificationCode, User user) throws InternalException;

}
