package com.mocker.controller.user;

import com.mocker.api.UserApi;
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
    private final ApiUserMapper apiUserMapper;
    private final UserService userService;


    @SneakyThrows
    @Override
    public ResponseEntity<UserDto> getUser(UUID id) {
        return ResponseEntity.ok(apiUserMapper.map(userService.getUser(id)));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<UserDto> getUserByUsername(String username) {
        return ResponseEntity.ok(apiUserMapper.map(userService.getUserByUsername(username)));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<List<UserDto>> getUsers() {
        return ResponseEntity.ok(userService.getUsers()
                .stream()
                .map(apiUserMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<List<UserDto>> getUsersByCriteria(String criteria) {
        return ResponseEntity.ok(apiUserMapper.map(userService.getUsersByCriteria(criteria)));
    }

    @SneakyThrows
    @Override
    public ResponseEntity<UserDto> deleteUser(UUID id) {
        return ResponseEntity.ok(apiUserMapper.map(userService.delete(id)));
    }

    @Override
    public ResponseEntity<UserDto> upsertUser(UserDto userDto) {
        return ResponseEntity.ok(apiUserMapper.map(userService.upsert(apiUserMapper.map(userDto))));
    }

}
