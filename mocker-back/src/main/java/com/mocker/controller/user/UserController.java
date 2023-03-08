package com.mocker.controller.user;

import com.mocker.api.UserApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.UserDto;
import com.mocker.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.http.ResponseEntity;
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

    @SneakyThrows
    @Override
    public ResponseEntity<UUID> updateUser(UserDto userDto) {
        return ResponseEntity.ok(userService.update(apiAbstractMapper.map(userDto)));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<UserDto> getUser(UUID id) {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUser(id)));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<UserDto> getUserByUsername(String username) {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUserByUsername(username)));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<List<UserDto>> getUsers() {
        return ResponseEntity.ok(userService.getUsers()
                .stream()
                .map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<UUID> deleteUser(UUID id) {
        return ResponseEntity.ok(userService.delete(id));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<UUID> saveUser(UserDto userDto) {
        return ResponseEntity.ok(userService.saveUser(apiAbstractMapper.map(userDto)));
    }

}
