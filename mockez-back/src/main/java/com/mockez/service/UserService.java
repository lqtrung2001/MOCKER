package com.mockez.service;

import com.mockez.domain.model.entity.User;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface UserService {

    User authentication(String email, String password);

    User getUserByUsername(String username);

    UUID update(User user);

}
