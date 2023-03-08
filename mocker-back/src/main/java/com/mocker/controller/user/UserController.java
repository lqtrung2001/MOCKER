package com.mocker.controller.user;

import com.mocker.api.UserApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.UserDto;
import com.mocker.domain.exception.InternalException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.service.UserService;
import lombok.RequiredArgsConstructor;
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

    @Override
    public ResponseEntity<UUID> updateUser(UserDto userDto) throws NotFoundException, InternalException {
        return ResponseEntity.ok(userService.update(apiAbstractMapper.map(userDto)));
    }

    @Override
    public ResponseEntity<UserDto> getUser(UUID id) throws NotFoundException, InternalException {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUser(id)));
    }

    @Override
    public ResponseEntity<UserDto> getUserByUsername(String username) throws PermissionException {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUserByUsername(username)));
    }

    @Override
    public ResponseEntity<List<UserDto>> getUsers() throws NotFoundException {
        return ResponseEntity.ok(userService.getUsers()
                .stream()
                .map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<UUID> deleteUser(UUID id) throws InternalException {
        return ResponseEntity.ok(userService.delete(id));
    }

    @Override
    public ResponseEntity<UUID> saveUser(UserDto userDto) throws InternalException {
        return ResponseEntity.ok(userService.saveUser(apiAbstractMapper.map(userDto)));
    }

}
