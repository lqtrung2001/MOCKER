package com.mockez.service;

import com.mockez.domain.model.entity.User;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */
public interface AuthService {

    Boolean sendOTPCode(String username);

    User validateAndSave(Integer otpCode, User user);

}
