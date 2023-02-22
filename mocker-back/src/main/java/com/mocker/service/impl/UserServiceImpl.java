package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.UnexpectedException;
import com.mocker.domain.model.entity.User;
import com.mocker.repository.UserRepository;
import com.mocker.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
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
    private final PasswordEncoder passwordEncoder;

    @Override
    public Boolean isExistedUsername(String username) {
        return Optional.ofNullable(userRepository.findByUsername(username)).isPresent();
    }

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
        if (user.getId() == null) {
            throw new UnexpectedException("Invalid user id");
        }
        String currentPassword = getUser(user.getId()).getPassword();
        user.setPassword(currentPassword);
        return userRepository.save(user).getId();
    }

    @Override
    public User getUser(UUID id) {
        return userRepository.findById(id).orElseThrow();
    }

    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @Override
    public UUID delete(UUID id) {
        userRepository.deleteById(id);
        return id;
    }

    @Override
    public UUID saveUser(User user) {
        return userRepository.save(user).getId();
    }

    @Override
    public User changePassword(UUID id, String currentPassword, String newPassword) {
        User user = userRepository.findById(id).orElseThrow();
        // Check old password
        if (!passwordEncoder.matches(currentPassword, user.getPassword())) {
            throw new UnexpectedException("Current password not match");
        }
        user.setPassword(passwordEncoder.encode(newPassword));
        return userRepository.save(user);
    }
}
