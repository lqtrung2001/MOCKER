package com.mockez.service;

import com.mockez.domain.model.entity.User;

public interface UserService {

    User authentication(String email, String password);

    User getUserByUsername(String username);

}
