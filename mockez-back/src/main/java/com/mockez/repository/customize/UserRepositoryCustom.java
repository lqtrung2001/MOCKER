package com.mockez.repository.customize;

import com.mockez.domain.model.entity.User;

public interface UserRepositoryCustom {

    User findByEmailAndPassword(String email, String password);

}
