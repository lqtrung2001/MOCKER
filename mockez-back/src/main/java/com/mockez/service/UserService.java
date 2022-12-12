package com.mockez.service;

import com.mockez.domain.model.entity.User;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface UserService {

    User authentication(String email, String password);

    User getUserByUsername(String username);

}
