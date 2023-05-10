package com.mocker.service;

import com.mocker.domain.model.entity.User;

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

    User delete(UUID id);

    UUID saveUser(User user);

    User changePassword(UUID id, String currentPassword, String newPassword);

    Boolean isExistedUsername(String username);

    User upsert(User user);

    List<User> getUsersByCriteria(String criteria);
}
