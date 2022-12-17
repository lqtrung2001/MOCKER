package com.mockez.service.impl;

import com.mockez.configuration.security.ApplicationContextHolder;
import com.mockez.domain.exception.NotFoundException;
import com.mockez.domain.exception.UnexpectedException;
import com.mockez.domain.model.entity.User;
import com.mockez.repository.UserRepository;
import com.mockez.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public User authentication(String email, String password) {
        User userAuthentication = userRepository.findByEmailAndPassword(email, password);
        if (Optional.ofNullable(userAuthentication).isPresent()) {
            return userAuthentication;
        }
        throw new NotFoundException("User with email: " + email + " does not exist");
    }

    @Override
    public User getUserByUsername(String username) {
        if (Objects.equals(username, applicationContextHolder.getCurrentUser().getUsername())) {
            return userRepository.findByUsername(username);
        }
        throw new UnexpectedException("You cannot access this user");
    }

    @Override
    public UUID update(User user) {
        return userRepository.save(user).getId();
    }
}
