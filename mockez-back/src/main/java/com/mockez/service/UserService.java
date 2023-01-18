package com.mockez.service;

import com.mockez.domain.model.entity.User;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface UserService {

    User authentication(String email, String password);

    User getUserByUsername(String username);

    UUID update(User user);

    User getUser(UUID id);

    List<User> getUsers();

    UUID delete(UUID id);

    UUID saveUser(User user);

    User changePassword(UUID id, String currentPassword, String newPassword);

    Boolean isExistedUsername(String username);
}
