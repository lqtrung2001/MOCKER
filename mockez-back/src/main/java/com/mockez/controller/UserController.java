package com.mockez.controller;

import com.mockez.api.UserApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.UserDto;
import com.mockez.domain.model.entity.User;
import com.mockez.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class UserController implements UserApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    @Override
    public ResponseEntity<UserDto> findOneByUsername(String username) {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUserByUsername(username)));
    }

    @Override
    public ResponseEntity<UUID> updateUser(UserDto userDto) {
        User user = apiAbstractMapper.map(userDto);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return ResponseEntity.ok(userService.update(user));
    }
}
