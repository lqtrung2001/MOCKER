package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.InternalException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
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
    public User upsert(User user) {
        return userRepository.save(user);
    }

    @Override
    public User authentication(String email, String password) throws NotFoundException {
        User userAuthentication = userRepository.findByEmailAndPassword(email, password);
        if (Optional.ofNullable(userAuthentication).isPresent()) {
            return userAuthentication;
        }
        throw new NotFoundException("User with email: " + email + " does not exist");
    }

    @Override
    public User getUserByUsername(String username) throws PermissionException {
        if (Objects.equals(username, applicationContextHolder.getCurrentUser().getUsername())) {
            return userRepository.findByUsername(username);
        }
        throw new PermissionException("validation.permission");
    }

    @Override
    public UUID update(User user) throws NotFoundException, InternalException {
        if (user.getId() == null) {
            throw new NotFoundException("validation.data_not_found");
        }
        String currentPassword = getUser(user.getId()).getPassword();
        user.setPassword(currentPassword);
        return userRepository.save(user).getId();
    }

    @Override
    public User getUser(UUID id) throws NotFoundException, InternalException {
        try {
            try {
                return userRepository.findById(id).orElseThrow();
            } catch (Exception e) {
                throw new NotFoundException("validation.data_not_found");
            }
        } catch (Exception e) {
            throw new InternalException("validation.validation.data_access_error");
        }

    }

    @Override
    public List<User> getUsers() throws NotFoundException {
        try {
            return userRepository.findAll();
        } catch (Exception e) {
            throw new NotFoundException("validation.not_found");
        }
    }

    @Override
    public User delete(UUID id) throws InternalException {
        try {
           User user = userRepository.findById(id).orElseThrow();
            userRepository.deleteById(id);
            return user;
        } catch (Exception e) {
            throw new InternalException("validation.validation.data_access_error");
        }
    }

    @Override
    public UUID saveUser(User user) throws InternalException {
        try {
            return userRepository.save(user).getId();
        } catch (Exception e) {
            throw new InternalException("validation.validation.data_access_error");
        }
    }

    @Override
    public User changePassword(UUID id, String currentPassword, String newPassword) throws InternalException {
        User user = userRepository.findById(id).orElseThrow();
        // Check old password
        if (!passwordEncoder.matches(currentPassword, user.getPassword())) {
            throw new InternalException("validation.match_password");
        }
        user.setPassword(passwordEncoder.encode(newPassword));
        return userRepository.save(user);
    }
}
