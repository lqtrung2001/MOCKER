package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.enumeration.Role;
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
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
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
    public List<User> getUsersByCriteria(String criteria) {
        return userRepository.findAllByCriteria(criteria);
    }

    @Override
    public User upsert(User user) {
        return userRepository.save(user);
    }

    @Override
    public User authentication(String email, String password) {
        return Optional.ofNullable(userRepository.findByEmailAndPassword(email, password))
                .orElseThrow(() -> new NotFoundException(email));
    }

    @Override
    public User getUserByUsername(String username) {
        if (!Objects.equals(username, applicationContextHolder.getCurrentUser().getUsername())) {
            throw new PermissionException("validation.permission");
        }
        return Optional.ofNullable(userRepository.findByUsername(username))
                .orElseThrow(() -> new NotFoundException(username));
    }

    @Override
    public UUID update(User user) {
        String currentPassword = getUser(user.getId()).getPassword();
        user.setPassword(currentPassword);
        return userRepository.save(user).getId();
    }

    @Override
    public User getUser(UUID id) {
        User user = userRepository.findById(id)
                .orElseThrow(() -> new NotFoundException(id));
        if (applicationContextHolder.getCurrentUser().getId() != user.getId()) {
            user.setPassword(null);
        }

        return user;
    }

    @Override
    public List<User> getUsers() {
        List<User> users = userRepository.findAll();
        if (!applicationContextHolder.getCurrentUser().getGrantedAuthorities().equals(Role.ADMIN.getValue())) {
            for (User user : users) {
                user.setPassword(null);
            }
        }
        return users;
    }

    @Override
    public User delete(UUID id) {
        User user = userRepository.findById(id)
                .orElseThrow(() -> new NotFoundException(id));
        userRepository.deleteById(id);
        return user;
    }

    @Override
    public UUID saveUser(User user) {
        return Optional.ofNullable(userRepository.save(user).getId())
                .orElseThrow(() -> new NotFoundException(user.getId()));
    }

    @Override
    public User changePassword(UUID id, String currentPassword, String newPassword) {
        User user = userRepository.findById(id).orElseThrow();
        // Check old password
        if (!passwordEncoder.matches(currentPassword, user.getPassword())) {
            throw new BadRequestException("validation.match_password");
        }
        user.setPassword(passwordEncoder.encode(newPassword));
        return userRepository.save(user);
    }
}
