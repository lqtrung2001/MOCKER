package com.mockez.controller;

import com.mockez.api.UserApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.UserDto;
import com.mockez.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

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
    public ResponseEntity<UUID> updateUser(UserDto userDto) {
        return ResponseEntity.ok(userService.update(apiAbstractMapper.map(userDto)));
    }

    @Override
    public ResponseEntity<UserDto> getUser(UUID id) {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUser(id)));
    }

    @Override
    public ResponseEntity<UserDto> getUserByUsername(String username) {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUserByUsername(username)));
    }

    @Override
    public ResponseEntity<List<UserDto>> getUsers() {
        return ResponseEntity.ok(userService.getUsers()
                .stream()
                .map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<UUID> deleteUser(UUID id) {
        return ResponseEntity.ok(userService.delete(id));
    }

    @Override
    public ResponseEntity<UUID> saveUser(UserDto userDto) {
        return ResponseEntity.ok(userService.saveUser(apiAbstractMapper.map(userDto)));
    }

}
