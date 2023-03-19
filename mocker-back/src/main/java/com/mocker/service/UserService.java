package com.mocker.service;

import com.mocker.domain.exception.InternalException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.User;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface UserService {

    User authentication(String email, String password) throws NotFoundException;

    User getUserByUsername(String username) throws PermissionException;

    UUID update(User user) throws NotFoundException, InternalException;

    User getUser(UUID id) throws NotFoundException, InternalException;

    List<User> getUsers() throws NotFoundException;

    User delete(UUID id) throws InternalException;

    UUID saveUser(User user) throws InternalException;

    User changePassword(UUID id, String currentPassword, String newPassword) throws InternalException;

    Boolean isExistedUsername(String username);

    User upsert(User user);
}
